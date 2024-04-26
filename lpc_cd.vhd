library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity lpc_cd is
generic (
    lpc_width: natural
);
port (
    d:  in  std_logic_vector(2 ** lpc_width - 1 downto 0);
    en: in  std_logic;
    q:  out std_logic_vector(lpc_width - 1 downto 0);
    gs: out std_logic
);
end entity lpc_cd;

architecture rtl of lpc_cd is
begin
    process (d, en) is
    begin
        q  <= (others => '0');
        gs <= '0';

        if en = '1' then
            for i in 0 to 2 ** lpc_width - 1 loop
                if d(i) = '1' then
                    q  <= std_logic_vector(to_unsigned(i, q'length));
                    gs <= '1';
                end if;
            end loop;
        end if;
    end process;
end architecture rtl;
