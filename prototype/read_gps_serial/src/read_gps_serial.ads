with Interfaces; use Interfaces;
with Interfaces.C; use Interfaces.C;
with System;

package Read_GPS_Serial is
   -- Constants for configuring and controlling serial operations
   TCSANOW   : constant C.int := 0; -- Change attributes immediately
   O_RDONLY  : constant C.int := 0; -- Open for reading only
   NCCS      : constant C.int := 32; -- Size of the control character array

   -- Named array type for control characters to avoid anonymous arrays
   type Control_Char_Array is array (0 .. NCCS - 1) of C.unsigned_char;

   -- Complete termios structure for serial port settings
   type Termios is record
      c_iflag  : C.unsigned_long;  -- Input modes
      c_oflag  : C.unsigned_long;  -- Output modes
      c_cflag  : C.unsigned_long;  -- Control modes
      c_lflag  : C.unsigned_long;  -- Local modes
      c_line   : C.char;           -- Line discipline
      c_cc     : Control_Char_Array; -- Control characters
      c_ispeed : C.unsigned_long;  -- Input speed
      c_ospeed : C.unsigned_long;  -- Output speed
   end record;
   for Termios'Alignment use 4;

   -- External procedures from C for manipulating termios structures
   procedure TC_Get_Attr (Fd : C.int; Termios_P : access Termios);
   pragma Import (C, TC_Get_Attr, "tcgetattr");

   procedure TC_Set_Attr (Fd : C.int; Actions : C.int; Termios_P : access Termios);
   pragma Import (C, TC_Set_Attr, "tcsetattr");

   -- System calls for file operations
   function Open (File_Path : C.chars_ptr; Flags : C.int) return C.int;
   pragma Import (C, Open, "open");

   procedure Read (Fd : C.int; Buf : access C.char; Buf_Size : C.size_t);
   pragma Import (C, Read, "read");

   -- High-level procedures to initialize and read from the GPS device
   procedure Setup_And_Read_GPS;

end Read_GPS_Serial;
