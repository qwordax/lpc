library lpc;

library ieee;

use ieee.std_logic_1164.all;

package components is

component lpc_not is
port (
    a: in  std_logic;
    q: out std_logic
);
end component lpc_not;

component lpc_and is
generic (
    lpc_size: natural
);
port (
    a: in  std_logic_vector(lpc_size - 1 downto 0);
    q: out std_logic
);
end component lpc_and;

component lpc_or is
generic (
    lpc_size: natural
);
port (
    a: in  std_logic_vector(lpc_size - 1 downto 0);
    q: out std_logic
);
end component lpc_or;

end package components;
