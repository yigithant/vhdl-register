library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity reg is port
(
i_data:in std_logic_vector(3 downto 0);
i:in std_logic;
clock:in std_logic;
result:out std_logic_vector(3 downto 0)
);
end  reg;

architecture behavior of  reg is
begin
process(clock)
variable ara: std_logic_vector(3 downto 0); 
--variable de�i�ken atamas�;
--architecture behavior of reg is
--signal tan�mlamas�
--begin
--process(....) 
--variable x,y
--begin
--�eklinde tan�mlan�r. kullan�lacak olan process i�erisinde tan�maln�r
--de�i�ken atamalar� <= �eklinde de�il
-- := �eklinde olmal�d�r. 
-- variable ile i�lem ger�ekl�emeden atama yap�l�r. signal ile i�lem ger�ekle�irken atama yap�labilir
-- bu da a�a��daki tarz bir program i�in hata verir.
begin
if (rising_edge(clock)) then
	ara:=i_data;
	for i in 0 to 2 loop
		ara(i):=ara(i+1);
	end loop;
ara(3):=i;
end if;
result<=ara;
end process;
end behavior;
