#include "hbclass.ch"

CLASS CadPessoa

    DATA nome   
    DATA sobrenome 
    DATA dataNascimento
    DATA signo
    DATA idade
    DATA altura
    DATA peso

    METHOD New(nome, sobrenome)

    END CLASS

    METHOD New(nome, sobrenome)
        ::nome := nome
        ::sobrenome := sobrenome
      
    RETURN self
    

   
    /*
Criar um classe para representar uma pessoa.

1. Atributos
Nome, Sobrenome, Data de Nascimento, Signo, Idade, Altura, Peso

2. Atividades

- Criar o método de criação "New"
- Criar um programa que usa esta classe e preenche os dados
- Apresentar estes dados em tela
- Entregar isto na sexta-feira (19 de abril)

Não complique, não precisa pedir entrada de dados, preencha as informações "fixas"

3. Indo a frente

- Alterar o programa para solicitar os dados
- Organizar a classe para receber os dados
- Criar um método para apresentar os dados em tela
- Refatorar seu programa para usar os novos métodos
- Entregar isto na segunda-feira (22 de abrirl)

4. Mandar um pix ou pagar um boleto meu

*/
