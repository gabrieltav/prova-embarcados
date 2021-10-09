// Curso: Engenharia de Software
// Disciplina: Sistemas Embarcados
// Professor: Vandermi Joao da Silva
// Autor: Gabriel dos Santo Tavares
// Data: 08/10/2021

// Codifique o circuito desenvolvido na
// questão 1 em linguagem de programação C.

// valores
    //  a	b	x   !x
    //  0	0	1    0
    //  0	1	0    1
    //  1	0	0    1
    //  1	1	0    1

#include <stdio.h>
int processamento(int a, int b, int op){
	switch(op){
		case 1: //NOT
			return !a;
		case 2: //NAND
			return !(!(a&b));
		case 3: //NORna
			return !(!(a|b));
		case 4: //AND
			return !(a&b);
		case 5: //OR
			return !(a|b);
		default:
			return -1;
	}	
}

int main(){
	//testando na porta OR com valores A  e B
    //basta trocar os valores que corresponde a tabela
	printf ("!(%d or %d) = %d\n",1,0,processamento(1,0,5));
                              // a,b             //a,b,op
	return 0;
}