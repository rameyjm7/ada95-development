with Ada.Text_IO; use Ada.Text_IO;
with Ada.Streams.Stream_IO; -- Do not use 'use', instead qualify access to its members


procedure Read_Serial_Port2 is
   Input_File : File_Type;
   Line       : String (1..1024);  -- Define a maximum line length
   Last       : Integer;           -- Length of the line actually read
begin
   -- Open the serial port for reading
   Open (Input_File, In_File, "/dev/ttyUSB0");

   -- Process each line until the end of the file
   while not End_Of_File (Input_File) loop
      Get_Line (Input_File, Line, Last);  -- Read a line into 'Line' with actual length 'Last'
      Put_Line (Line(1..Last));           -- Print only the part of 'Line' that contains data
   end loop;

   -- Close the file after reading all lines
   Close (Input_File);
end Read_Serial_Port2;
