with Ada.Text_IO; use Ada.Text_IO;

function WriteFile (data : String)
               return Integer is
   Output_File : File_Type;

begin
   -- Open a file named "output.txt" in write mode
   Create (Output_File, Out_File, "output.txt");

   -- Write the string "Hello, World" to the file
   Put_Line (Output_File, data);

   -- Close the file
   Close (Output_File);
   return 0;
end WriteFile;
