with Ada.Text_IO; use Ada.Text_IO;
with ReadFile;

procedure Show_Text_File_Input_Except is
   F         : File_Type;
   Ret       : Integer;
   File_Name : constant String := "simple.txt";
begin
   Open (F, In_File, File_Name);
   Close (F);
exception
   when Name_Error =>
      Put_Line ("File does not exist");
   when others =>
      Put_Line
        ("Error while processing input file");
end Show_Text_File_Input_Except;