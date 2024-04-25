library ieee;

use ieee.std_logic_1164.all;

entity lpc_comp is
generic (
    lpc_width: natural
);
port (
    a: in  std_logic_vector(lpc_width - 1 downto 0);
    b: in  std_logic_vector(lpc_width - 1 downto 0);
    l: out std_logic;
    e: out std_logic;
    g: out std_logic
);
end entity lpc_comp;

architecture rtl of lpc_comp is
begin
    l <= '1' when a < b else '0';
    e <= '1' when a = b else '0';
    g <= '1' when a > b else '0';
end architecture rtl;
