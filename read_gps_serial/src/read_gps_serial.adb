with Ada.Text_IO; use Ada.Text_IO;
with Interfaces.C; use Interfaces.C;
with System;

package body Read_GPS_Serial is

   procedure Setup_And_Read_GPS is
      GPS_Device : constant String := "/dev/ttyS0"; -- Device file for GPS
      Buf_Size   : constant size_t := 256;          -- Read buffer size
      Buffer     : aliased String(1 .. Buf_Size);   -- Buffer for reading data
      FD         : C.int;                          -- File descriptor for the device
      Term_Setup : Termios;                        -- Terminal settings struct

   begin
      -- Open GPS device
      FD := Open (C.To_C(GPS_Device), O_RDONLY);
      if FD < 0 then
         Put_Line ("Failed to open GPS device.");
         return;
      end if;

      -- Get current settings
      TC_Get_Attr (FD, Term_Setup'Access);

      -- Modify settings: example settings for 9600 baud rate
      Term_Setup.c_iflag := 0;
      Term_Setup.c_oflag := 0;
      Term_Setup.c_cflag := 9600; -- Assuming 9600 is the baud rate desired
      Term_Setup.c_lflag := 0;

      -- Apply settings
      TC_Set_Attr (FD, TCSANOW, Term_Setup'Access);

      -- Read data from GPS
      Read (FD, Buffer(Buffer'First)'Access, Buf_Size);
      Put_Line ("Received from GPS: " & Buffer);

   end Setup_And_Read_GPS;

end Read_GPS_Serial;
