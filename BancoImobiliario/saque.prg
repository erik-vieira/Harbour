FUNCTION saque

   LOCAL opcao := 0
   LOCAL vSaque := 0
   LOCAL nSaldo := 0
   LOCAL confSaque := 0

   SET DECIMALS TO 2
   hb_cdpSelect("UTF8")
   dbIniciar()
   cls

   USE bancoImobiliario
   
   ? "Informe o valor de deseja sacar:"
   ? "Saldo atual: R$", saldo
   INPUT "" TO vSaque

   IF(vSaque <= saldo)

      nSaldo := saldo - vSaque

      
      ? "Saldo atual: R$", saldo
      ? "Valor do saque: R$", vSaque
      ? "-------------------"
      ? "Saldo previsto: R$", nSaldo

      ? "Deseja prosseguir com o saque?"
      ? "[1] - Sim "
      ? "[2] - Não"
     
      
      INPUT "" TO confSaque
      
      DO CASE
         CASE(confSaque == 1)
            REPLACE saldo WITH nSaldo
            ? "Saque realizado com sucesso"
            inkey(0)
         CASE(confSaque == 2)
            principal()
         OTHERWISE
            ?"Error"
         ENDCASE
   ELSE
      ? "Saldo insuficiente para saque"
      inkey(0)
   ENDIF

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