library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


--this is how entity for your test bench code has to be declared.
entity Four_bit_Comparator_Testbench is
end Four_bit_Comparator_Testbench;

architecture behavior of Four_bit_Comparator_Testbench is
--signal declarations.
signal A,B : std_logic_vector(3 downto 0) :=(others => '0');
signal AltB,AeqB,AgtB :  std_logic:='0';

begin
--entity instantiation
UUT : entity work.Four_bit_Comparator port map(A,B,AltB,AeqB,AgtB);


--definition of simulation process
tb : process
begin
A<="0010";  --A=2
B<="1001"; --B =9
wait for 2 ns;

A<="1001";  --A =9
B<="0010";   --B =2
wait for 2 ns;

A<="1010";  --A =10
B<="1010";  --B =10

wait;
end process tb;

end;


