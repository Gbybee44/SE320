-- Garrison Bybee
-- Hw 3 SE320
-- 1/20/15
-- This program will do the factorization from the number 2 to 99

with Ada.text_io, Ada.Integer_Text_Io, primeid;
use Ada.text_io, Ada.Integer_Text_Io, primeid;


procedure hw_3 is

begin

   for I in 2..99 loop
      if (IsPrime (I)) then
         New_Line; -- All the New_Lines are use for better formatting
         Put(I,0);
         Put(" is prime");
         New_Line;
         New_Line;
      else
         Factoring(I);
      end if;






   end loop;




end hw_3;
