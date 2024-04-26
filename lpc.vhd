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

component lpc_xor is
generic (
    lpc_size: natural
);
port (
    a: in  std_logic_vector(lpc_size - 1 downto 0);
    q: out std_logic
);
end component lpc_xor;

component lpc_nand is
generic (
    lpc_size: natural
);
port (
    a: in  std_logic_vector(lpc_size - 1 downto 0);
    q: out std_logic
);
end component lpc_nand;

component lpc_nor is
generic (
    lpc_size: natural
);
port (
    a: in  std_logic_vector(lpc_size - 1 downto 0);
    q: out std_logic
);
end component lpc_nor;

component lpc_xnor is
generic (
    lpc_size: natural
);
port (
    a: in  std_logic_vector(lpc_size - 1 downto 0);
    q: out std_logic
);
end component lpc_xnor;

component lpc_tri is
port (
    a:  in  std_logic;
    en: in  std_logic;
    q:  out std_logic
);
end component lpc_tri;

component lpc_dff is
port (
    r:  in  std_logic;
    s:  in  std_logic;
    d:  in  std_logic;
    en: in  std_logic;
    cl: in  std_logic;
    q:  out std_logic
);
end component lpc_dff;

component lpc_tff is
port (
    r:  in  std_logic;
    s:  in  std_logic;
    en: in  std_logic;
    cl: in  std_logic;
    q:  out std_logic
);
end component lpc_tff;

component lpc_jkff is
port (
    r:  in  std_logic;
    s:  in  std_logic;
    j:  in  std_logic;
    k:  in  std_logic;
    en: in  std_logic;
    cl: in  std_logic;
    q:  out std_logic
);
end component lpc_jkff;

component lpc_rg is
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
end component lpc_rg;

component lpc_srg is
generic (
    lpc_width: natural
);
port (
    r:  in  std_logic;
    s:  in  std_logic;
    d:  in  std_logic;
    en: in  std_logic;
    cl: in  std_logic;
    q:  out std_logic_vector(lpc_width - 1 downto 0)
);
end component lpc_srg;

component lpc_mx is
generic (
    lpc_width: natural
);
port (
    d:  in  std_logic_vector(2 ** lpc_width - 1 downto 0);
    a:  in  std_logic_vector(lpc_width - 1 downto 0);
    en: in  std_logic;
    q:  out std_logic
);
end component lpc_mx;

component lpc_dx is
generic (
    lpc_width: natural
);
port (
    d:  in  std_logic;
    a:  in  std_logic_vector(lpc_width - 1 downto 0);
    en: in  std_logic;
    q:  out std_logic_vector(2 ** lpc_width - 1 downto 0)
);
end component lpc_dx;

component lpc_dc is
generic (
    lpc_width: natural
);
port (
    d:  in  std_logic_vector(lpc_width - 1 downto 0);
    en: in  std_logic;
    q:  out std_logic_vector(2 ** lpc_width - 1 downto 0)
);
end component lpc_dc;

component lpc_comp is
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
end component lpc_comp;

end package components;
