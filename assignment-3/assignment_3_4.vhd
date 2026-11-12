LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY jk_flipflop IS
  PORT (
    clk : IN  std_logic;
    j   : IN  std_logic;
    k   : IN  std_logic;
    clr : IN  std_logic;
    set : IN  std_logic;
    q   : OUT std_logic
  );
END ENTITY jk_flipflop;

ARCHITECTURE bhv OF jk_flipflop IS
  SIGNAL q_internal : std_logic := '0';
BEGIN
  q <= q_internal;
  process(clk, clr, set)
  begin
    if clr = '1' then
      q_internal <= '0';
    elsif set = '1' then
      q_internal <= '1';
    elsif (clk'event and clk = '1') then
      if (j = '1' and k = '0') then
        q_internal <= '1';
      elsif (j = '0' and k = '1') then
        q_internal <= '0';
      elsif (j = '1' and k = '1') then
        q_internal <= not q_internal;
      end if;
    end if;
  end process;
END ARCHITECTURE bhv;
