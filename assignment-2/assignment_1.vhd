library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--entity
entity logic_test is
    port (
        a, b, c, d : in std_logic;
        and_out, or_out : out std_logic
    );
end entity logic_test;

--architecture
architecture bhv of logic_test is
begin
    and_out <= a and b and c and d;
    or_out <= a or b or c or d;
end architecture bhv;
