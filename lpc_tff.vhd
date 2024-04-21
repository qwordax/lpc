library ieee;

use ieee.std_logic_1164.all;

entity lpc_tff is
port (
    r:  in  std_logic;
    s:  in  std_logic;
    en: in  std_logic;
    cl: in  std_logic;
    q:  out std_logic
);
end entity lpc_tff;

architecture rtl of lpc_tff is
begin
    process (r, s, cl) is
        variable t: std_logic := '0';
    begin
        if r = '1' then
            t := '0';
        elsif s = '1' then
            t := '1';
        elsif cl'event and cl = '1' and en = '1' then
            t := not t;
        end if;

        q <= t;
    end process;
end architecture rtl;
