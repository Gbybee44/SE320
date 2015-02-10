-- Garrison Bybee
-- 1/20/15
-- SE 320
-- PrimeId and Factoring Package body for Hw_3

with Ada.Text_Io, Ada.Integer_Text_Io;
use Ada.Text_Io, Ada.Integer_Text_Io;

package body primeid is

   function IsPrime (Num_Prime : Integer) return Boolean is -- Function to determine if given number is prime
      Divider : Integer :=2;
      Modulus : Integer;

   begin

      for Divider in 2 .. (Num_Prime/2) loop
         Modulus := (Num_Prime mod Divider);
         if (Modulus = 0) then
            return False;
         end if;


      end loop;
      return True;


   end IsPrime;
end primeid;



