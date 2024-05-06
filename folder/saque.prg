FUNCTION saque

    LOCAL oConta := BancoFeliz():new()
    LOCAL vSaque := 0

    hb_cdpSelect("UTF8")
    
    INPUT "Informe o valor a ser sacado R$ " to vSaque

    oConta:Retirar(vSaque)
    
    
    READ

    ? "O valor sacado foi de R$", vSaque
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