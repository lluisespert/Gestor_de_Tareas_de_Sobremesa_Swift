//
//  bbdd.swift
//  Gestor_de_tareas_de_escritorio
//
//  Created by Lluís Espert Cuquerella on 23/9/24.
//

import Foundation
import SwiftData

@Model

class Gestor {
    
    var id = UUID()
    
    var nombre_de_la_tarea: String
    
    var tipo_de_tarea: String
    
    var contenido_de_la_tarea: String
    
    init(id: UUID = UUID(), nombre_de_la_tarea: String, tipo_de_tarea: String, contenido_de_la_tarea: String) {
        self.id = id
        self.nombre_de_la_tarea = nombre_de_la_tarea
        self.tipo_de_tarea = tipo_de_tarea
        self.contenido_de_la_tarea = contenido_de_la_tarea
    }
    
}


class Login {
    
    var usuario: String
    
    var contrasena: String
    
    var email: String
    
    init(usuario: String, contrasena: String, email: String) {
        self.usuario = usuario
        self.contrasena = contrasena
        self.email = email
    }
    
}
