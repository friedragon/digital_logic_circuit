LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY rs_latch IS
PORT (
    s  : IN std_logic;
    r  : IN std_logic;
    q  : OUT std_logic;
    nq : OUT std_logic
);
END rs_latch;

ARCHITECTURE bhv OF rs_latch IS
BEGIN

    PROCESS(s, r)
    BEGIN
        IF (s = '1' AND r = '0') THEN
            q  <= '1';
            nq <= '0';
        ELSIF (s = '0' AND r = '1') THEN
            q  <= '0';
            nq <= '1';
        ELSIF (s = '1' AND r = '1') THEN
            q  <= '0';
            nq <= '0';
        END IF;
    END PROCESS;

END bhv;
