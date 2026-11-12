LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY dflipflop IS
  PORT (
    clk : IN std_logic;  -- Clock signal
    d   : IN std_logic;  -- Data input
    clr : IN std_logic;  -- Asynchronous clear signal
    set : IN std_logic;  -- Asynchronous set signal
    q   : OUT std_logic  -- Data output
  );
END dflipflop;

ARCHITECTURE bhv OF dflipflop IS
BEGIN
  process(clk, clr, set) -- Include clr and set for asynchronous handling
  BEGIN
    -- Asynchronous clear has the highest priority
    IF clr = '1' THEN
      q <= '0';
    -- Asynchronous set has the second-highest priority
    ELSIF set = '1' THEN
      q <= '1';
    -- Synchronous clock-based behavior
    ELSIF (clk'event AND clk = '1') THEN
      q <= d;
    END IF;
  END process;
END bhv;
