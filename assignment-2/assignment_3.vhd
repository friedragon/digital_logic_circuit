library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--entity
entity led is
    port (
        en : in std_logic;
        dat : in std_logic_vector(3 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end entity led;

--architecture
architecture bhv of led is
begin
    process(en, dat)
    begin
        if en = '0' then
            display <= "ZZZZZZZZ";
        else
            case dat is
                when "0000" => display <= "11111100";
                when "0001" => display <= "11101110";
                when "0010" => display <= "00111110";
                when "0011" => display <= "10011100";
                when "0100" => display <= "01111010";
                when "0101" => display <= "10011110";
                when "0110" => display <= "10001110";
                when "0111" => display <= "11110110";
                when others => display <= "00000000";
            end case;
        end if;
    end process;
end architecture bhv;
