-- Garrison Bybee
-- 1/13/15 SE 320
-- Hw2
-- This program will read in different numbers that the user inputs and 
-- after 0 is inputed it will give the number of numbers inputed and their sum.

with Ada.text_io, Ada.integer_text_io;
use Ada.text_io, Ada.integer_text_io;

procedure hw_2 is
    User_Num, sum  : Integer;
    counter        : Integer :=0;

begin

    Put("Enter an Integer (0 ends the program): ");
    Get(User_Num);
    sum := User_Num;   -- so the first number is included into the sum.

while User_Num /= 0 loop

    Put("Enter an Integer (0 ends the program): "); 
    Get(User_Num);
    sum := sum + User_Num;
    counter := counter + 1;
  
end loop;

    Put("You entered ");
    Put(counter,0);
    Put(" numbers; their sum is ");
    Put(sum,0);
    
end hw_2;
