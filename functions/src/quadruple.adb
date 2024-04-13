function Quadruple (I : Integer)
                    return Integer is

    function Double (I : Integer)
                     return Integer is
    begin
       return I * 2;
    end Double;

   Res : Integer := Double (Double (I));
   --               ^ Calling the Double
   --                 function
begin
   Res := Double (I);

   return Res;
end Quadruple;