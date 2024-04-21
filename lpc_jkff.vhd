library ieee;

use ieee.std_logic_1164.all;

entity lpc_jkff is
port (
    r:  in  std_logic;
    s:  in  std_logic;
    j:  in  std_logic;
    k:  in  std_logic;
    en: in  std_logic;
    cl: in  std_logic;
    q:  out std_logic
);
end entity lpc_jkff;

architecture rtl of lpc_jkff is
begin
    process (r, s, cl) is
        variable t: std_logic := '0';
    begin
        if r = '1' then
            t := '0';
        elsif s = '1' then
            t := '1';
        elsif cl'event and cl = '1' and en = '1' then
            if j = '0' and k = '1' then
                t := '0';
            elsif j = '1' and k = '0' then
                t := '1';
            elsif j = '1' and k = '1' then
                t := not t;
            end if;
        end if;

        q <= t;
    end process;
end architecture rtl;
