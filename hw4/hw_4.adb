-- Garrison Bybee
-- SE 320
-- 1/ 30/15
-- This program will take user input and determine if the number is within the range,
-- if it is actaully a number and if it is a prime number.

with Ada.Text_Io, Ada.Integer_Text_Io, Primeid;
use Ada.Text_Io, Ada.Integer_Text_Io, Primeid;

procedure Hw_4 is
   Valid_Range : Integer range 20 .. 30;
   Prime_Yes : Boolean := False; -- used to end the program if the user enters a prime number
   Garage_Handler : String(1 .. 40); --  This is the variable that will store the value entered that isnt a number
   End_Of_Character : Integer; -- this value is the end of user input that raised the data_error exception
   Not_Prime : exception; -- user defined exceptions that is raised when the number isnt prime

begin
   while (Prime_Yes = False) loop
      begin
      Put("Enter a prime number between 20 and 30: ");
      Get(Valid_Range);

      if IsPrime(Valid_Range) /= True then
         raise Not_Prime;
      end if;
      Prime_Yes := True; -- will end the program when no exceptions are excuted, so when a prime number is inputed.

      exception
         when Constraint_Error =>
            Put("Your number is out of range, try again");
            New_Line;
         when Data_Error =>
            Put("That isnt even a number, try again");
            Get_Line(Garage_Handler, End_Of_Character); -- used to clear the buffer
            New_Line;
         when Not_Prime =>
            Put("That isnt a prime number, try again");
            New_Line;
      end;

   end loop;

   Put("You have successfully entered the prime number: ");
   Put(Valid_Range, 0);


end Hw_4;

