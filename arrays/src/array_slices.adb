with Ada.Text_IO; use Ada.Text_IO;

procedure array_slices is
    Buf : String := "Hello ...";

    Full_Name : String := "John Smith";
begin
    Buf (7 .. 9) := "Bob";
    --  Careful! This works because the string
    --  on the right side is the same length as
    --  the replaced slice!

    --  Prints "Hello Bob"
    Put_Line (Buf);

     --  Prints "Hi John"
    Put_Line ("Hi " & Full_Name (1 .. 4));
end array_slices;