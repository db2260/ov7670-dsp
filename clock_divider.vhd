library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_divider is
	port (clk : in std_logic;
		clock_out : out std_logic
		);
end clock_divider;

architecture bv of clock_divider is
	signal count : integer := 1;
	signal tmp : std_logic := '0';

	begin
	process(clk)
		begin
		if(clk'event and clk='1') then
			if(count = 1) then
				tmp <= not tmp;
				count <= 1;
			end if;
			count <= count + 1;
	end if;
	
	clock_out <= tmp;
	
	end process;
	
end bv;