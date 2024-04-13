with Ada.Text_IO; use Ada.Text_IO;
with Week.Child;  use Week.Child;

procedure test_child_packages is
begin
   Put_Line ("First day of the week is "
             & Get_First_Of_Week);
end test_child_packages;