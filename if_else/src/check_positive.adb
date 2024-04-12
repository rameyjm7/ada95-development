with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
-- https://learn.adacore.com/courses/intro-to-ada/chapters/imperative_language.html#imperative-language-if-then-else

procedure Check_Positive is
   N : Integer;
begin
   --  Put a String
   Put ("Enter an integer value: ");

   --  Read in an integer value
   Get (N);

   if N > 0 then
      --  Put an Integer
      Put (N);
      Put_Line (" is a positive number");
   else 
      Put (N);
      Put_Line (" is a negative number");
   end if;
end Check_Positive;