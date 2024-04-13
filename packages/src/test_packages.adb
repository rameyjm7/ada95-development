with Ada.Text_IO; use Ada.Text_IO;
with Week;
--  References the Week package, and
--  adds a dependency from Main to Week

procedure test_packages is
begin
   Put_Line ("Second day of the week is "
             & Week.Tue);
end test_packages;