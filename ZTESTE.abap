*&---------------------------------------------------------------------*
*& Report ZTESTE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zteste.

" Classes Abstratas:
"   são classes que servem como base para outros classes,
"   não podem ser instanciadas, são classes incompletas

CLASS trabalhador DEFINITION ABSTRACT.

  PUBLIC SECTION.
    DATA: salario TYPE p DECIMALS 2.
    METHODS: trabalhar ABSTRACT.

ENDCLASS.

CLASS engenheiro DEFINITION INHERITING FROM trabalhador.

  PUBLIC SECTION.
    METHODS: trabalhar REDEFINITION.

ENDCLASS.

CLASS medico DEFINITION INHERITING FROM trabalhador.

  PUBLIC SECTION.
    METHODS: trabalhar REDEFINITION.

ENDCLASS.

CLASS engenheiro IMPLEMENTATION.

  METHOD trabalhar.
    WRITE: / 'Engenheiro: Planejar construção da casa'.
  ENDMETHOD.

ENDCLASS.

CLASS medico IMPLEMENTATION.

  METHOD trabalhar.
    WRITE: / 'Médico: Atender pacientes'.
  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.
  DATA(lo_obj1) = NEW engenheiro( ).
  DATA(lo_obj2) = NEW medico( ).


  lo_obj1->trabalhar( ).
  lo_obj2->trabalhar( ).
