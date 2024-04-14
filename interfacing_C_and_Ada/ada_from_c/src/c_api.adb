package body C_API is

   function My_Func (a : int) return int is
   begin
      return a * 2 * 2;
   end My_Func;

end C_API;