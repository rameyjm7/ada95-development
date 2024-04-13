with Ada.Text_IO; use Ada.Text_IO;
with quadruple;

procedure test_quadruple is
   A : Integer;

   procedure Display_Result is
   begin
      Put_Line ("A quadrupled to "
                & Integer'Image (A));
   end Display_Result;

begin
   A := 10;
   Put_Line ("A is "
                & Integer'Image (A));
   Display_Result;
   A := Quadruple(A);
   Display_Result;
   A := Quadruple(A);
   Display_Result;
end test_quadruple;