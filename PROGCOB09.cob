
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB09.
      ********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: RODSON NAZARIO
      * DATA: 27/07/2021
      * OBJETIVO: CALCULAR FRETE
      * COMANDO EVALUATE
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO  PIC X(20) VALUES SPACES.
       77 WRK-UF       PIC X(02) VALUES SPACES.
       77 WRK-FRETE    PIC 9(06)V99 VALUES ZEROS.
       77 WRK-VALOR    PIC 9(05)V99 VALUES ZEROS.
       77 WRK-FRETE-ED PIC ZZZ.ZZ9,99 VALUES ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO: '
            ACCEPT WRK-PRODUTO FROM CONSOLE.
           DISPLAY 'VALOR: '
            ACCEPT WRK-VALOR FROM CONSOLE.
           DISPLAY 'ESTADO PARA ENTREGA: '
            ACCEPT WRK-UF FROM CONSOLE.

           EVALUATE WRK-UF
            WHEN 'SP'
                COMPUTE WRK-FRETE = WRK-VALOR * 1,05
            WHEN 'RJ'
                COMPUTE WRK-FRETE = WRK-VALOR * 1,10
            WHEN 'MG'
                COMPUTE WRK-FRETE = WRK-VALOR * 1,15
            WHEN OTHER
                COMPUTE WRK-FRETE = 0
           END-EVALUATE
           MOVE WRK-FRETE TO WRK-FRETE-ED.

           DISPLAY '================================'
           IF WRK-FRETE NOT EQUAL 0
            DISPLAY 'VALOR COM FRETE: ' WRK-FRETE-ED
           ELSE
            DISPLAY 'ENTREGA NAO DISPONIVEL'
           END-IF.

           STOP RUN.
