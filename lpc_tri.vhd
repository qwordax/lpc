library ieee;

use ieee.std_logic_1164.all;

entity lpc_tri is
port (
    a:  in  std_logic;
    en: in  std_logic;
    q:  out std_logic
);
end entity lpc_tri;

architecture rtl of lpc_tri is
begin
    q <= a when en = '1' else 'Z';
end architecture rtl;
