       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      ********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: RODSON NAZARIO
      * DATA: 27/07/2021
      * OBJETIVO: OPERADORES ARITMETICOS
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1         PIC 9(02) VALUES ZEROS.
       77 WRK-NUM2         PIC 9(02) VALUES ZEROS.
       77 WRK-RESULTADO    PIC 9(04) VALUES ZEROS.
       77 WRK-RESTO        PIC 9(04) VALUES ZEROS.
       77 WRK-NUM1-ED      PIC Z.ZZ9 VALUES ZEROS.
       77 WRK-NUM2-ED      PIC Z.ZZ9 VALUES ZEROS.
       77 WRK-RESULTADO-ED PIC Z.ZZ9 VALUES ZEROS.
       77 WRK-RESTO-ED     PIC Z.ZZ9 VALUES ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'NUM 1: '
            ACCEPT WRK-NUM1 FROM CONSOLE.
           DISPLAY 'NUM 2: '
            ACCEPT WRK-NUM2 FROM CONSOLE.

           DISPLAY '=========================='.
           MOVE WRK-NUM1 TO WRK-NUM1-ED.
           MOVE WRK-NUM2 TO WRK-NUM2-ED.
           DISPLAY 'NUM1: ' WRK-NUM1-ED.
           DISPLAY 'NUM2: ' WRK-NUM2-ED.

           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULTADO.
           MOVE WRK-RESULTADO TO WRK-RESULTADO-ED.
           DISPLAY 'SOMA: ' WRK-RESULTADO-ED.

           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESULTADO.
           MOVE WRK-RESULTADO TO WRK-RESULTADO-ED.
           DISPLAY 'SUBTRACAO: ' WRK-RESULTADO-ED.

           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULTADO
            REMAINDER WRK-RESTO.
           MOVE WRK-RESULTADO TO WRK-RESULTADO-ED.
           MOVE WRK-RESTO TO WRK-RESTO-ED.
           DISPLAY 'DIVISAO: ' WRK-RESULTADO-ED.
           DISPLAY 'RESTO: ' WRK-RESTO-ED.

           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULTADO.
           MOVE WRK-RESULTADO TO WRK-RESULTADO-ED.
           DISPLAY 'MULTIPLICACAO: ' WRK-RESULTADO-ED.

           COMPUTE WRK-RESULTADO = (WRK-NUM1 + WRK-NUM2) / 2.
           MOVE WRK-RESULTADO TO WRK-RESULTADO-ED.
           DISPLAY 'MEDIA: ' WRK-RESULTADO-ED.

           STOP RUN.
