with Ada.Text_IO;

with Ada.Streams.Stream_IO;
use  Ada.Streams.Stream_IO;

procedure Show_Float_Stream is
   F         : File_Type;
   S         : Stream_Access;
   File_Name : constant String :=
                 "float_file.bin";
   counter    : Float := 0.0;
begin
   Create (F, Out_File, File_Name);
   S := Stream (F);

   Float'Write (S, 1.5);
   Float'Write (S, 2.4);
   Float'Write (S, 6.7);

   for I in 1 .. 500 loop
      Float'Write (S, counter);
      counter := counter + 1.0;
   end loop;

   Close (F);

   declare
      Value : Float;
   begin
      Open (F, In_File, File_Name);
      S := Stream (F);

      while not End_Of_File (F) loop
         Float'Read (S, Value);
         Ada.Text_IO.Put_Line
           (Float'Image (Value));
      end loop;
      Close (F);
   end;
end Show_Float_Stream;