with Ada.Text_IO; use Ada.Text_IO;

procedure Range_Example is
   type My_Int is range 0 .. 1000;

   type My_Int_Array is
     array (1 .. 5) of My_Int;

   Tab : constant My_Int_Array :=
           (2, 3, 5, 7, 11);
   m_range : Integer;
begin
   for I in Tab'Range loop
   --          ^ Gets the range of Tab
      Put (My_Int'Image (Tab (I)));
   end loop;
   New_Line;
end Range_Example;