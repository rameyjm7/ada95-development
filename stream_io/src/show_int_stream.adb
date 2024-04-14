with Ada.Text_IO;

with Ada.Streams.Stream_IO;
use  Ada.Streams.Stream_IO;

procedure Show_Int_Stream is
   F         : File_Type;
   S         : Stream_Access;
   File_Name : constant String :=
                 "int_file.bin";
   counter    : Integer := 0;
begin
   Create (F, Out_File, File_Name);
   S := Stream (F);

   Integer'Write (S, 1);
   Integer'Write (S, 2);
   Integer'Write (S, 6);

   for I in 1 .. 500 loop
      Integer'Write (S, counter);
      counter := counter + 1;
   end loop;

   Close (F);

   declare
      Value : Integer;
   begin
      Open (F, In_File, File_Name);
      S := Stream (F);

      while not End_Of_File (F) loop
         Integer'Read (S, Value);
         Ada.Text_IO.Put_Line
           (Integer'Image (Value));
      end loop;
      Close (F);
   end;
end Show_Int_Stream;