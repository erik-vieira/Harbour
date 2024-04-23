PROCEDURE MAIN 

LOCAL vNome := SPACE(30)
LOCAL vSobrenome := SPACE(30)
LOCAL vDataNasci := DATE()
LOCAL vSigno := SPACE(15)
LOCAL vIdade := SPACE(5)
LOCAL vAltura := SPACE(5)
LOCAL vPeso :=  SPACE(5)
   
hb_cdpSelect("UTF8")
cls

set date brit
set cent on
set delimiters on

@01, 01 SAY "Qual é seu nome?" GET vNome valid !EMPTY(vNome)  
@02, 01 SAY "Qual é seu sobrenome?" GET vSobrenome valid !EMPTY(vSobrenome) 
@03, 01 SAY "Qual é sua data de nascimento?" GET vDataNasci valid !EMPTY(vDataNasci) 
@04, 01 SAY "Qual é seu signo?" GET vSigno valid !EMPTY(vSigno) 
@05, 01 SAY "Qual é a sua idade?" GET vIdade valid !EMPTY(vIdade) 
@06, 01 SAY "Qual é a sua altura?" GET vAltura   valid !EMPTY(vAltura) 
@07, 01 SAY "Qual é seu peso?" GET vPeso  valid !EMPTY(vPeso) 
READ // Cria um tempo de espera para o usuário informar os dados 


? "Seu nome é", + vNome
? "Eu nasci em", + vDataNasci
? "Meu signo é de", + vSigno
? "Eu tenho", + vIdade, "anos!"
? "Eu tenho", + vAltura, "de altura!" 
? "Eu peso", + vPeso, "Kg"
main()



RETURN

//nome, sobrenome, dataNascimento, signo, idade, altura, peso//