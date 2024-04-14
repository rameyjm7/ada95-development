with Ada.Text_IO; use Ada.Text_IO;

function ReadFile (File_Name : String) return String is
   Input_File : File_Type;
   Line_Data  : String (1..1024);  -- Buffer to hold the line data, fixed at 1024 characters
   Last       : Natural;           -- To hold the length of the line read
begin
   -- Attempt to open the file in read mode
   begin
      Open (Input_File, In_File, File_Name);
   exception
      when E : others =>
         Put_Line ("Error: Unable to open file '" & File_Name & "'.");
         return "";
   end;

   -- Read a line from the file
   begin
      Get_Line (Input_File, Line_Data, Last);
      Close (Input_File);  -- Always close the file after operations are done
      return Line_Data(1..Last);  -- Return the actual read data
   exception
      when End_Error =>
         Close (Input_File);  -- Close the file if end of file is reached
         return "";
      when Data_Error =>
         Close (Input_File);  -- Handle potential data errors (e.g., if the line is too long)
         return "";
      when others =>
         Close (Input_File);  -- Ensure the file is closed in case of any other errors
         raise;               -- Re-raise the current exception to indicate an error
   end;
end ReadFile;