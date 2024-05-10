FUNCTION abrir

   LOCAL vDeposito := 0 
   LOCAL nSaldo := 0
   LOCAL opcao := 0

   SET DECIMALS TO 2
   hb_cdpSelect("UTF8")
   dbIniciar()
   cls

   USE bancoImobiliario
   
   ? "Para abrir uma conta é necessário realizar um deposito."
   ? "Informe o valor de deseja depositar:"
   INPUT "" TO vDeposito

   nSaldo := saldo + vDeposito

   cls

   ? "Deposito realizado com sucesso!"
   ? "Saldo atual: R$", saldo

   APPEND BLANK
   REPLACE saldo WITH nSaldo
   inkey(5) //Tempo q espera até o usuário teclar algo

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