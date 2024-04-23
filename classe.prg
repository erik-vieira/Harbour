#include "hbclass.ch"

CLASS CadPessoa

    DATA nome   
    DATA sobrenome 
    DATA dataNascimento
    DATA signo
    DATA idade
    DATA altura
    DATA peso

    METHOD New(nome, sobrenome, dataNascimento, signo, idade, altura, peso) 
    METHOD Imc(altura, peso)

    END CLASS

    METHOD New(nome, sobrenome, dataNascimento, signo, idade, altura, peso) 
        ::nome := nome
        ::sobrenome := sobrenome
        ::dataNascimento := dataNascimento
        ::signo := signo
        ::idade := idade
        ::altura := altura
        ::peso := peso 
    return self

    METHOD Imc(altura, peso)

        ::altura :=altura
        ::peso := peso

        imc := peso / (altura*altura)

        ? "Seu IMC é" , imc

    RETURN

          

  
    /*
Criar um classe para representar uma pessoa.

1. Atributos
Nome, Sobrenome, Data de Nascimento, Signo, Idade, Altura, Peso -ok

2. Atividades

- Criar o método de criação "New" -ok
- Criar um programa que usa esta classe e preenche os dados - ok
- Apresentar estes dados em tela - ok 
- Entregar isto na sexta-feira (19 de abril) - ok

Não complique, não precisa pedir entrada de dados, preencha as informações "fixas" - ok

3. Indo a frente

- Alterar o programa para solicitar os dados - ok
- Organizar a classe para receber os dados 
- Criar um método para apresentar os dados em tela
- Refatorar seu programa para usar os novos métodos - ok
- Entregar isto na segunda-feira (22 de abrirl)

4. Mandar um pix ou pagar um boleto meu

*/
