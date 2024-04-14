with Ada.Text_IO; use Ada.Text_IO;
with WriteFile;
with ReadFile;

procedure file_io is
   -- Declare a file object
   Output_File : File_Type;
   ret : Integer;
   ret_str  : String (1..1024);  -- Buffer to hold the line data, fixed at 1024 characters
begin
   ret := WriteFile("hello world!");
   if (ret = 0) then
      Put_Line("Wrote file");
   else 
      Put_Line("Failed to write file");
   end if;

   ret := ReadFile("output.txt");
   if (ret = 0) then
      Put_Line("Read from file");
   else 
      Put_Line("Failed to read file");
   end if;

end file_io;