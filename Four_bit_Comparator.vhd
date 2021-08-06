

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--entity declaration with port definitions
entity Four_bit_Comparator is
port(    A : in std_logic_vector(3 downto 0);  --input 1
            B :      in std_logic_vector(3 downto 0);  --input 2
            AltB :              out std_logic;   -- indicates first number is small
           AeqB :          out std_logic;   -- both are equal
           AgtB :   out std_logic    -- indicates first number is bigger
);
end Four_bit_Comparator;

--architecture of entity
architecture Behavioral of Four_bit_Comparator is

begin
process(A,B)
begin    -- process starts with a 'begin' statement
if (A > B ) then  --checking whether A is greater than B
AltB <= '0';
AeqB  <= '0';
AgtB  <= '1';
elsif (A < B) then    --checking whether A is less than B
AltB <= '1';
AeqB  <= '0';
AgtB  <= '0';
else     --checking whether A is equal to B
AltB <= '0';
AeqB  <= '1';
AgtB  <= '0';
end if;
end process;   -- process ends with a 'end process' statement

end Behavioral;


