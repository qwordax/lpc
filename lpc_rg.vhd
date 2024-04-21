library ieee;

use ieee.std_logic_1164.all;

entity lpc_rg is
generic (
    lpc_width: natural
);
port (
    r:  in  std_logic;
    s:  in  std_logic;
    d:  in  std_logic_vector(lpc_width - 1 downto 0);
    en: in  std_logic;
    cl: in  std_logic;
    q:  out std_logic_vector(lpc_width - 1 downto 0)
);
end entity lpc_rg;

architecture rtl of lpc_rg is
begin
    process (r, s, cl) is
        variable t: std_logic_vector(lpc_width - 1 downto 0) := (others => '0');
    begin
        if r = '1' then
            t := (others => '0');
        elsif s = '1' then
            t := (others => '1');
        elsif cl'event and cl = '1' and en = '1' then
            t := d;
        end if;

        q <= t;
    end process;
end architecture rtl;
