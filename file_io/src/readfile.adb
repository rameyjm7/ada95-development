with Ada.Text_IO; use Ada.Text_IO;

function ReadFile (File_Name : String) return Integer is
   Input_File : File_Type;
begin
   Open (Input_File, In_File, File_Name);
   Put("File contents : ");
   Put_Line(File_Name);
   while not End_Of_File (Input_File) loop
      Put("   ");
      Put_Line (Get_Line (Input_File));
   end loop;
   Close (Input_File);
   return 0;
end ReadFile;