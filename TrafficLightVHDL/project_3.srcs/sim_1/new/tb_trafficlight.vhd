library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_trafficlight is
generic(
	c_clkfreq   : integer := 100_000_000;
	c_lighttime : integer := 1000;
	c_control   : std_logic_vector (1 downto 0) := "00"
);
end tb_trafficlight;

architecture Behavioral of tb_trafficlight is

component trafficlight is
generic(
	c_clkfreq   : integer := 100_000_000;
	c_lighttime : integer := 1000;
	c_control   : std_logic_vector (1 downto 0) := "00"
);
Port ( 
	clk 														: in std_logic;
	isPedestrian1,isPedestrian2,isPedestrian3,isPedestrian4		: in std_logic := '0';						
	r1,y1,g1,r2,y2,g2,r3,y3,g3,r4,y4,g4 						: out std_logic;
	pd1r,pd2r,pd3r,pd4r,pd1g,pd2g,pd3g,pd4g	    				: out std_logic;
	alert1,alert2,alert3,alert4 		 						: out std_logic
);
end component;

signal  clk 														: std_logic := '0';
signal  isPedestrian1,isPedestrian2,isPedestrian3,isPedestrian4		: std_logic := '0';
signal  r1,y1,g1,r2,y2,g2,r3,y3,g3,r4,y4,g4 						: std_logic;
signal  pd1r,pd2r,pd3r,pd4r,pd1g,pd2g,pd3g,pd4g	    				: std_logic;
signal	alert1,alert2,alert3,alert4 		 						: std_logic;

constant c_clkperiod : time := 10ns;
begin

DUT : trafficlight
generic map(
	c_clkfreq   => c_clkfreq  , 
	c_lighttime => c_lighttime ,
	c_control   => c_control   	
)
port map(
	clk 			=>		clk 			,			
    isPedestrian1   =>      isPedestrian1   ,
	isPedestrian2   =>      isPedestrian2   ,
	isPedestrian3   =>      isPedestrian3   ,
	isPedestrian4	=>      isPedestrian4	,
    r1              =>      r1              ,
	y1              =>      y1              ,
	g1              =>      g1              ,
	r2              =>      r2              ,
	y2              =>      y2              ,
	g2              =>      g2              ,
	r3              =>      r3              ,
	y3              =>      y3              ,
	g3              =>      g3              ,
	r4              =>      r4              ,
	y4              =>      y4              ,
	g4 				=>	    g4 				,
    pd1r            =>      pd1r            ,
	pd2r            =>      pd2r            ,
	pd3r            =>      pd3r            ,
	pd4r            =>      pd4r            ,
	pd1g            =>      pd1g            ,
	pd2g            =>      pd2g            ,
	pd3g            =>      pd3g            ,
	pd4g	    	=>		pd4g	    	,
    alert1          =>      alert1          ,
	alert2          =>      alert2          ,
	alert3          =>      alert3          ,
	alert4 		 	=>		alert4 		 	

);

p_clk : process begin 
	clk <= '0';
	wait for c_clkperiod/2;
	clk <= '1';
	wait for c_clkperiod/2;
end process;

end Behavioral;