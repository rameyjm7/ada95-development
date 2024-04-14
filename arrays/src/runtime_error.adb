with Ada.Text_IO; use Ada.Text_IO;

procedure Runtime_Error is
   type My_Int is range 0 .. 1000;
   type Index  is range 1 .. 5;

   type My_Int_Array is
     array (Index) of My_Int;

   Tab : My_Int_Array := (2, 3, 5, 7, 11);
begin
   for I in Index range 2 .. 6 loop
      Put (My_Int'Image (Tab (I)));
      --                      ^ Will raise an
      --                        exception when
      --                        I = 6
   end loop;
   New_Line;
end Runtime_Error;