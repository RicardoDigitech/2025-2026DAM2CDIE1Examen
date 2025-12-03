//
//  ViewController.swift
//  2025-2026 DAM 2C DI E1 Examen
//
//  Created by Ricardo on 3/12/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtNivel: UITextField!
    @IBOutlet weak var btnPlantaOutlet: UIButton!
    @IBOutlet weak var btnFuegoOutlet: UIButton!
    @IBOutlet weak var btnAguaOutlet: UIButton!
    
    var tipo: String!
    var pokemonUsuario: PokemonModel!
    var pokemonMaquina: PokemonModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipo = ""
    }
    
    @IBAction func btnPlanta(_ sender: Any) {
        tipo = "planta"
        btnFuegoOutlet.isHidden = true
        btnAguaOutlet.isHidden = true
    }
    
    @IBAction func btnFuego(_ sender: Any) {
        tipo = "fuego"
        btnPlantaOutlet.isHidden = true
        btnAguaOutlet.isHidden = true
    }
    
    @IBAction func btnAgua(_ sender: Any) {
        tipo = "agua"
        btnPlantaOutlet.isHidden = true
        btnFuegoOutlet.isHidden = true
    }
    
    @IBAction func btnLuchar(_ sender: Any) {
        let nombre: String = txtNombre.text!
        let nivelS: String = txtNivel.text!
        
        if (!nombre.isEmpty && !nivelS.isEmpty) {
            let nivel: Int = Int(nivelS)!
            if (nivel >= 5 && nivel <= 100) {
                if (tipo != "") {
                    
                    pokemonUsuario = PokemonModel(nombre: nombre, nivel: nivel, tipo: tipo)
                    
                    let nombreMaquina: String = "Pokémon de la máquina"
                    let nivelMaquina: Int = Int.random(in: 5...100)
                    let tipos: [String] = ["planta", "fuego", "agua"]
                    let tipoMaquina: String = tipos[Int.random(in: 0...2)]
                    
                    pokemonMaquina = PokemonModel(nombre: nombreMaquina, nivel: nivelMaquina, tipo: tipoMaquina)
                    
                } else {
                    alert(titulo: "Error", mensaje: "Selecciona un tipo")
                }
            } else {
                alert(titulo: "Error", mensaje: "Niveles del 5 al 100")
            }
        } else {
            alert(titulo: "Error", mensaje: "Rellena todos los datos")
        }
    }
    
    func alert(titulo: String, mensaje: String) {
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: titulo, style: .destructive, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "VER") {
            let destino = segue.destination as! ResultadoViewController
            destino.pokemonUsuario = self.pokemonUsuario
            destino.pokemonMaquina = self.pokemonMaquina
        }
    }
}
