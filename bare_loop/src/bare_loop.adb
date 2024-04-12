with Ada.Text_IO; use Ada.Text_IO;

--  https://learn.adacore.com/courses/intro-to-ada/chapters/imperative_language.html#bare-loops

procedure bare_loop is
   --  Variable declaration:
   I : Integer := 1000;
   --  ^ Type
   --             ^ Initial value
begin
   loop
      Put_Line ("Hello, World!"
                & Integer'Image (I));

      --  Exit statement:
      exit when I = 51;
      --        ^ Boolean condition

      --  Assignment:
      I := I - 1;
      --  There is no I++ short form to
      --  increment a variable
   end loop;
end bare_loop;