with Ada.Text_IO; use Ada.Text_IO;
--  https://learn.adacore.com/courses/intro-to-ada/chapters/imperative_language.html#for-loops
procedure for_loop is
begin
   for I in 1 .. 5 loop
      --  Put_Line is a procedure call
      Put_Line ("Hello, World!"
                  & Integer'Image (I));
      --        ^ Procedure parameter
   end loop;
end for_loop;