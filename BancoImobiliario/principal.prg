FUNCTION principal

   LOCAL opcao := 0

   hb_cdpSelect("UTF8")
   
   cls

   ? "Bem vindo ao Banco Imobiliário!"

   ? "Selecione a opção desejada"
   ? "[1] - Abrir conta"
   ? "[2] - Realizar deposito"
   ? "[3] - Realizar saque"

   INPUT "" TO opcao

 DO CASE 
   CASE(opcao == 1)
      abrir()
   CASE(opcao == 2) 
      deposito()
   CASE(opcao == 3)
      saque()   
   OTHERWISE
      ?"Error"
   ENDCASE

RETURN 