       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      ********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: RODSON NAZARIO
      * DATA: 27/07/2021
      * OBJETIVO: RECEBER 2 NOTAS E CALCULAR MEDIA
      * COMANDOS IF/ELSE/ENDIF
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1    PIC 9(02) VALUES ZEROS.
       77 WRK-NOTA2    PIC 9(02) VALUES ZEROS.
       77 WRK-MEDIA    PIC 9(02)V99 VALUES ZEROS.
       77 WRK-MEDIA-ED PIC Z9,99 VALUES ZEROS.
       PROCEDURE DIVISION.
           DISPLAY '1a NOTA'
            ACCEPT WRK-NOTA1 FROM CONSOLE.
           DISPLAY '2a NOTA'
            ACCEPT WRK-NOTA2 FROM CONSOLE.

           DISPLAY '================================'
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           MOVE WRK-MEDIA TO WRK-MEDIA-ED.
           DISPLAY 'MEDIA: ' WRK-MEDIA-ED.

           IF WRK-MEDIA >= 6
                DISPLAY 'APROVADO'
           ELSE IF WRK-MEDIA >= 2
                      DISPLAY 'RECUPERACAO'
                ELSE
                      DISPLAY 'REPROVADO'
                END-IF
           END-IF
           STOP RUN.
