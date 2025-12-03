//
//  PokemonModel.swift
//  2025-2026 DAM 2C DI E1 Examen
//
//  Created by Ricardo on 3/12/25.
//

import Foundation

class PokemonModel {
    var nombre: String
    var nivel: Int
    var tipo: String
    
    init(nombre: String, nivel: Int, tipo: String) {
        self.nombre = nombre
        self.nivel = nivel
        self.tipo = tipo
    }
}
