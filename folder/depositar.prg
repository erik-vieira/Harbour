FUNCTION depositar

    LOCAL oConta := BancoFeliz():new()
    LOCAL vDeposito := 0

    hb_cdpSelect("UTF8")
    
    INPUT "Informe o valor a ser depositado " to vDeposito

    oConta:Depositar(vDeposito)
    
    ? "O valor depositado foi de R$", vDeposito
    ? "Saldo atual na conta: R$", oConta:VerSaldo()

    
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