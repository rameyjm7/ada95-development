with Ada.Text_IO; use Ada.Text_IO;

--  https://learn.adacore.com/courses/intro-to-ada/chapters/imperative_language.html#bare-loops

procedure while_loop is
   --  Variable declaration:
   I : Integer := 1;
begin
   --  Condition must be a Boolean value
   --  (no Integers).
   --  Operator "<=" returns a Boolean
   while I <= 5001 loop
      Put_Line ("Hello, World!"
                & Integer'Image (I));

      I := I + 1;
   end loop;
end while_loop;