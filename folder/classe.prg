#include "hbclass.ch"

    CLASS BancoFeliz

        DATA saldo INIT 0  // Define a propriedade 'saldo' e inicializa com 0

        METHOD Inicializar() // Método para inicializar o saldo
        METHOD Depositar()  // Método para depositar dinheiro na conta
        METHOD Retirar()   // Método para retirar dinheiro da conta
        METHOD VerSaldo() // Método para retornar o saldo atual   

        ENDCLASS
    
    METHOD Inicializar(saldoInicial) CLASS BancoFeliz
        ::saldo := saldoInicial
    RETURN self

    METHOD Depositar(valor) CLASS BancoFeliz
        ::saldo =+ valor
    RETURN self

    METHOD Retirar(valor) CLASS BancoFeliz
        IF(::saldo >= valor)
            ::saldo -= valor
            RETURN .T.
        ELSE
            ? "Saldo insuficiente para a retirada."
            RETURN .F.
        ENDIF 

    METHOD VerSaldo() CLASS BancoFeliz
    RETURN ::saldo
    
