using { db.primeiro.projeto as db } from '../db/schema';


service Api @(path: '/api') {
    entity clientes as projection on db.Clientes;
    entity ordens as projection on db.Ordens;
    entity notas as projection on db.Notas;
}