library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity exercise1 is
port(
a, b, op_code: in std_logic_vector(3 downto 0) ; 
result: out std_logic_vector(3 downto 0));
end entity;



architecture alu of exercise1 is
begin 

process(a, b, op_code)
begin 


if op_code = "0000" then
 result <= (not a);
elsif op_code = "0001" then
 result <= (not b);
elsif op_code = "0010" then
 result <= (a and b);
elsif op_code = "0011" then
 result <= (a or b);
elsif op_code = "0100" then
 result <= (a nand b);
elsif op_code = "0101" then
 result <= (a nor b);
elsif op_code = "0110" then
 result <= (a xor b);
elsif op_code = "0111" then
 result <= (a xnor b);
elsif op_code = "1000" then
 result <= a;
elsif op_code = "1001" then
 result <= b;
elsif op_code = "1010" then
 result <= std_logic_vector(unsigned(a)+1); 
elsif op_code = "1011" then
 result <= std_logic_vector(unsigned(b)+1);
elsif op_code = "1100" then
 result <= std_logic_vector(unsigned(a)-1);
elsif op_code = "1101" then
 result <= std_logic_vector(unsigned(b)-1);
elsif op_code = "1110" then
 result <= std_logic_vector(unsigned(a)+unsigned(b));
elsif op_code = "1111" then  
 result <= "0000";
end if;

end process;

end architecture alu;
