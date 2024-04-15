with Ada.Text_IO; use Ada.Text_IO;

procedure Read_GPS_Serial is
   Input_File : File_Type;
begin
   Open (Input_File, In_File, "/dev/ttyUSB0");
   declare
      Line : String(1..1024);
   begin
      while not End_Of_File (input_file) loop
         Put_Line (Get_Line (Input_File));
      end loop;
   end;
   Close (Input_File);
end Read_GPS_Serial;