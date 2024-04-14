with Ada.Text_IO; use Ada.Text_IO;

procedure String_Literals is
   Message : String (1 .. 22) := "racecar !!!dlroW olleH";
   --        ^ Pre-defined array type.
   --          Component type is Character
begin
   for I in reverse Message'Range loop
      --    ^ Iterate in reverse order
      Put (Message (I));
   end loop;
   New_Line;
end String_Literals;