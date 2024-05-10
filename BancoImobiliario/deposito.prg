FUNCTION deposito

   LOCAL vDeposito := 0 
   LOCAL nSaldo := 0

   SET DECIMALS TO 2
   hb_cdpSelect("UTF8")
   dbIniciar()
   cls

   USE bancoImobiliario
   
   ? "Informe o valor de deseja depositar:"
   INPUT "" TO vDeposito

   nSaldo := saldo + vDeposito

   cls
   
   REPLACE saldo WITH nSaldo
   
   ? "Deposito realizado com sucesso!"
   ? "Saldo atual: R$", saldo
   inkey(5) //Tempo q espera até o usuÃ¡rio teclar algo

   cls

   ? "Deseja voltar ao menu principal?"
   ? "[1] - Sim"
   ? "[2] - Não"

   INPUT "" TO opcao 

   DO CASE
   CASE(opcao == 1)
      principal()
   CASE(opcao == 2)
      ? "Banco Imobiliário  agradece!"
   OTHERWISE
      ?"Error"
   ENDCASE


RETURN