//
//  ResultadoViewController.swift
//  2025-2026 DAM 2C DI E1 Examen
//
//  Created by Ricardo on 3/12/25.
//

import UIKit

class ResultadoViewController: UIViewController {

    @IBOutlet weak var lblUsuario: UILabel!
    @IBOutlet weak var lblMaquina: UILabel!
    @IBOutlet weak var lblGanador: UILabel!
    
    var pokemonUsuario: PokemonModel!
    var pokemonMaquina: PokemonModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tipoUsuario: String = pokemonUsuario.tipo
        let tipoMaquina: String = pokemonMaquina.tipo
        let nivelUsuario: Int = pokemonUsuario.nivel
        let nivelMaquina: Int = pokemonMaquina.nivel
        let nombreUsuario: String = pokemonUsuario.nombre
        let nombreMaquina: String = pokemonMaquina.nombre
        
        lblUsuario.text = "\(nombreUsuario) de tipo \(tipoUsuario) con nivel \(nivelUsuario)"
        lblMaquina.text = "\(nombreMaquina) de tipo \(tipoMaquina) con nivel \(nivelMaquina)"
        
        switch (tipoUsuario) {
            
        case "planta":
            if (tipoMaquina == "planta") {
                if (nivelUsuario == nivelMaquina) {
                    lblGanador.text = "EMPATE"
                } else if (nivelUsuario > nivelMaquina) {
                    lblGanador.text = "GANA EL USUARIO"
                } else {
                    lblGanador.text = "GANA LA MÁQUINA"
                }
            } else if (tipoMaquina == "fuego") {
                lblGanador.text = "GANA LA MÁQUINA"
            } else {
                lblGanador.text = "GANA EL USUARIO"
            }
            break
            
        case "fuego":
            if (tipoMaquina == "fuego") {
                if (nivelUsuario == nivelMaquina) {
                    lblGanador.text = "EMPATE"
                } else if (nivelUsuario > nivelMaquina) {
                    lblGanador.text = "GANA EL USUARIO"
                } else {
                    lblGanador.text = "GANA LA MÁQUINA"
                }
            } else if (tipoMaquina == "agua") {
                lblGanador.text = "GANA LA MÁQUINA"
            } else {
                lblGanador.text = "GANA EL USUARIO"
            }
            break
            
        case "agua":
            if (tipoMaquina == "agua") {
                if (nivelUsuario == nivelMaquina) {
                    lblGanador.text = "EMPATE"
                } else if (nivelUsuario > nivelMaquina) {
                    lblGanador.text = "GANA EL USUARIO"
                } else {
                    lblGanador.text = "GANA LA MÁQUINA"
                }
            } else if (tipoMaquina == "planta") {
                lblGanador.text = "GANA LA MÁQUINA"
            } else {
                lblGanador.text = "GANA EL USUARIO"
            }
            break
            
        default:
            break
        }
    }
}
