FUNCTION dbIniciar 

   LOCAL tabela := {{"saldo", "N", 10, 2}}

   IF .NOT. FILE ("bancoImobiliario.dbf")
      DBCREATE("bancoImobiliario", tabela)
   ENDIF 

RETURN NIL 