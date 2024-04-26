library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity lpc_dc is
generic (
    lpc_width: natural
);
port (
    d:  in  std_logic_vector(lpc_width - 1 downto 0);
    en: in  std_logic;
    q:  out std_logic_vector(2 ** lpc_width - 1 downto 0)
);
end entity lpc_dc;

architecture rtl of lpc_dc is
begin
    process (d, en) is
    begin
        q <= (others => '0');

        if en = '1' then
            q(to_integer(unsigned(d))) <= '1';
        end if;
    end process;
end architecture rtl;
