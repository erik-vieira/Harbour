FUNCTION abrir

    LOCAL oConta := BancoFeliz():new()
    LOCAL saldoInicial := 0
    LOCAL conta
    LOCAL opcao

    hb_cdpSelect("UTF8")

    cls

    ?"Bem Vindo ao Banco Feliz"

    @01, 01 SAY "Qual o valor deseja depositar para abrir a conta? " GET saldoInicial
    READ
    conta := oConta:Inicializar(saldoInicial)

    ? "Conta a aberta com sucesso!"
    ? "Seu saldo atual Ã© de: R$ ", oConta:VerSaldo()

    ?"Deseja voltar ao menu principal?"
    ?"[1] - Sim"
    ?"[2] - Não"
    INPUT "" TO opcao

    do case
        case(opcao == 1) 
            principal()
        case(opcao == 2)
            ?"Banco Feliz agradece!!" 
        otherwise
            ?"Opção inválida"    
    endcase



RETURN