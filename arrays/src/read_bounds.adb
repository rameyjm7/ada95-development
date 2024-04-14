with Ada.Text_IO; use Ada.Text_IO;

procedure Read_Bounds is
   Message : constant String := "dlroW olleH";
   --                 ^ Bounds are automatically
   --                   computed from
   --                   initialization value
begin
   for I in reverse Message'Range loop
      Put (Message (I));
   end loop;
   New_Line;
end Read_Bounds;