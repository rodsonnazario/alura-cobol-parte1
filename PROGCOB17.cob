       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB17.
      ********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: RODSON NAZARIO
      * DATA: 27/07/2021
      * OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA
      * VARIAVEIS TIPO TABELA - REDEFINES
      ********************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(03) VALUE 'JAN'.
           02 FILLER PIC X(03) VALUE 'FEV'.
           02 FILLER PIC X(03) VALUE 'MAR'.
           02 FILLER PIC X(03) VALUE 'ABR'.
           02 FILLER PIC X(03) VALUE 'MAI'.
           02 FILLER PIC X(03) VALUE 'JUN'.
           02 FILLER PIC X(03) VALUE 'JUL'.
           02 FILLER PIC X(03) VALUE 'AGO'.
           02 FILLER PIC X(03) VALUE 'SET'.
           02 FILLER PIC X(03) VALUE 'OUT'.
           02 FILLER PIC X(03) VALUE 'NOV'.
           02 FILLER PIC X(03) VALUE 'DEZ'.
       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
           02 WRK-MES PIC X(03) OCCURS 12 TIMES.
       01 WRK-DATA.
           02 WRK-ANOSYS PIC 9(04) VALUE ZEROS.
           02 WRK-MESSYS PIC 9(02) VALUE ZEROS.
           02 WRK-DIASYS PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY 'DATA ORIGINAL: ' WRK-DATA.
           DISPLAY 'DATA CUSTOMIZADA: ' WRK-DIASYS
                                 ' DE ' WRK-MES(WRK-MESSYS)
                                 ' DE ' WRK-ANOSYS.
           STOP RUN.
