with Ada.Text_IO;

with Ada.Streams.Stream_IO;
use  Ada.Streams.Stream_IO;

procedure Open_Serial_Port  is
   F         : File_Type;
   S         : Stream_Access;
   File_Name : constant String :=
                 "/dev/ttyUSB0";

   procedure Output (S  : Stream_Access;
                     SV : String) is
   begin
      String'Output (S, SV);
   end Output;

   data : String (1 .. 128);
begin
   begin
      Open (F, In_File, File_Name);
      S := Stream (F);
      while not End_Of_File (F) loop
         String'Output (S, data);
         Ada.Text_IO.Put_Line (" [GPS] " & data);
      end loop;
      Close (F);
   exception
      when E : Device_Error =>
         Ada.Text_IO.Put_Line ("Device error occurred");
      when E : Use_Error =>
         Ada.Text_IO.Put_Line ("Use error");
      when E : Name_Error =>
         Ada.Text_IO.Put_Line ("Name error");
   end;
end Open_Serial_Port ;