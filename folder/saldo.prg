FUNCTION saldo

LOCAL oConta := BancoFeliz():new()

hb_cdpSelect("UTF8")

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