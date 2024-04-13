with GNAT.Serial_Communications;  -- Import the Serial Communications package
with Ada.Text_IO;
with Ada.Strings.Fixed;         -- Import the Fixed-length strings package

procedure read_gps_serial is
   Port : GNAT.Serial_Communications.Serial_Port_Type;
   Buffer : String(1..255);       -- Buffer to store incoming data
   Received_Data : String := "";  -- Variable to store received data
   Data_Array : Ada.Strings.Fixed.String_Array(1..255);  -- Array to store split data
begin
   -- Open the serial port
   GNAT.Serial_Communications.Open
     (Port,
      Device => "/dev/ttyUSB0",  -- Specify the device path
      Baud   => GNAT.Serial_Communications.B4800,  -- Set baud rate to 4800
      Mode   => GNAT.Serial_Communications.Default); -- Use default mode

   -- Read data from the serial port
   loop
      GNAT.Serial_Communications.Read_Line (Port, Buffer);  -- Read line from serial port
      Received_Data := Received_Data & Buffer;  -- Append received data to the variable
      exit when Buffer(Buffer'First) = ',';  -- Exit loop when a comma is received
   end loop;

   -- Close the serial port
   GNAT.Serial_Communications.Close (Port);

   -- Convert received data to a string and split it by comma
   Data_Array := Ada.Strings.Fixed.Split (Received_Data, ',');

   -- Print the array contents
   for I in Data_Array'Range loop
      Ada.Text_IO.Put_Line ("Element " & Integer'Image (I) & ": " & Data_Array(I));
   end loop;
end read_gps_serial;