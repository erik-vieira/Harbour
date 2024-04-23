FUNCTION Main()

    hb_cdpSelect("UTF8")

    oCadPessoa := CadPessoa():New(nome, sobrenome)

    LOCAL nome := "", sobrenome:= ""

    INPUT "Digite seu nome: " TO nome
    INPUT "Digite seu sobrenome" TO sobrenome

    ? "Meu nome é", oCadPessoa:nome 
    ? "Meu sobrenome é", oCadPessoa:sobrenome 



  
    
