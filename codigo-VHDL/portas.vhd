-- Curso: Engenharia de Software
-- Disciplina: Sistemas Embarcados
-- Professor: Vandermi Joao da Silva
-- Autor: Gabriel dos Santo Tavares
-- Data: 08/10/2021

-- Construa um circuito com portas lógicas
-- que permitam modificar as saídas quando processadas.
-- O circuito deverá receber como entrada um registrador
-- A e B e a resposta deverá ser armazenada em X. A Saída
-- deverá inverter o resultado do processamento. Após a
-- construção do circuito, codifique-o usando VHDL.

-- Início do cód
-- Entidade
library IEEE;
use IEEE.std_logic_1164.all;

entity portas is
    port(
        a , b : in std_logic; -- Entradas
        x : out std_logic -- Saída
    );
end portas;

-- Arquitetura
architecture main of portas is
begin
  process(a, b) is
  begin
    x <= not(a or b);
  end process;
end main;
-- Fim