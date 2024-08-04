namespace db.primeiro.projeto;

using { cuid, managed } from '@sap/cds/common';


entity Clientes : cuid, managed {    
    nome    : String(100);
    idade   : Integer;
    // cascade e cria entidade filha no post
    ordens  : Composition of many Ordens on ordens.cliente = $self;
    //ordens  : Association to many Ordens on ordens.cliente = $self;
}


entity Ordens : cuid, managed {    
    valor   : Decimal;
    cliente : Association to Clientes;
    nf      : Association to many Notas on nf.orden = $self;
}

entity Notas : cuid, managed {    
    idFiscal    : String;
    orden       : Association to Ordens;
}