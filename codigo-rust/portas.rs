// Curso: Engenharia de Software
// Disciplina: Sistemas Embarcados
// Professor: Vandermi Joao da Silva
// Autor: Gabriel dos Santo Tavares
// Data: 08/10/2021

// Codifique o circuito desenvolvido na
// questão 1 em linguagem de programação Rust.

// valores
    //  a	b	x   !x
    //  0	0	1    0
    //  0	1	0    1
    //  1	0	0    1
    //  1	1	0    1

fn main() {
    //testando na porta OR com valores A  e B
    //basta trocar os valores que corresponde a tabela
    println!("!({} or {}) = {}\n",0,1,processamento(0,1,5)); //parametros do processamento
                               // a,b             //a,b,op
}

fn processamento(a:i32,b:i32,op: i32) -> i32{
  
    if op == 1{//PORTA NOT
        !(!a)
    }else if op == 2{ //PORTA NAND 
        !(!(a&b))
    }else if op == 3{//PORTA NOR
        !(!(a|b))
    }else if op == 4{//PORTA AND
        !(a&b)+2
    }else if op == 5{//PORTA OR
        !(a|b)+2
    }else{
        -1
    }
}