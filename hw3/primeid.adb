-- Garrison Bybee
-- 1/20/15
-- SE 320
-- PrimeId and Factoring Package body for Hw_3

with Ada.Text_Io, Ada.Integer_Text_Io;
use Ada.Text_Io, Ada.Integer_Text_Io;

package body primeid is

   function IsPrime (Num_Prime : Integer) return Boolean is -- Function to determine if given number is prime
      ModTwo, ModThree, ModFive, ModSeven : Integer;

   begin

      ModTwo := (Num_Prime mod 2);
      ModThree := (Num_Prime mod 3);
      ModFive := (Num_Prime mod 5);
      ModSeven := (Num_Prime mod 7);

      if (Num_Prime = 2 or Num_Prime = 3 or Num_Prime = 5 or Num_Prime = 7) then
         return True;

      elsif (ModTwo = 0 or ModThree = 0 or ModFive = 0 or ModSeven = 0) then
         return False;

      else
         return True;

      end if;

   end IsPrime;

   procedure Factoring (Num_Factor : Integer ) is                     -- Procedure that will determine the given numbers factorization
      Checker, Factor_Mod, Prime_Chk, Divided_Num, Counter : Integer; -- Checker is used to check and see if the number is a factor of the Num_Factor. Factormod is
                                                                      -- modulus between the checker and the number given to the function. Primechk is the modulus for
                                                                      -- the Num_Factor and the checker. DividedNum is the checker being divided into. Counter is used
                                                                      -- to help determine if an * should be displayed.
   begin
      Counter := 0;
      Checker := 2;
      Put("The factorization of ");
      Put(Num_Factor,0);
      Put(" is: ");

      for I in Checker .. Num_Factor loop

         if (IsPrime(Checker)) then
           Factor_Mod := (Num_Factor mod Checker);
           Prime_Chk := (Num_Factor mod Checker);
           Divided_Num := Num_Factor / Checker;

           while (Prime_Chk = 0) loop
              Counter := Counter + 1;

              if (Factor_Mod = 0 and Counter = 1) then
                Put(Checker,0);
              else
                 Put("*");
                 Put(Checker,0);
              end if;

              Prime_Chk := (Divided_Num mod Checker);
              Divided_Num := Divided_Num / Checker;

           end loop;
         end if;
         Checker := Checker + 1; -- to make sure that checker changes and will eventaully be one less than Num_Factor
      end loop;
      New_Line; -- For better formating
   end Factoring;
end primeid;



