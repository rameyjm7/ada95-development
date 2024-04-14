with Ada.Command_Line;
with Ada.Text_IO;

procedure Print_CLI_Args is
begin
   for Next in 1 .. Ada.Command_Line.Argument_Count loop
      Ada.Text_IO.Put_Line (Ada.Command_Line.Argument (Next));
   end loop;
end Print_CLI_Args;