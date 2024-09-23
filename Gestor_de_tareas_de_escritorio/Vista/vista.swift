//
//  vista.swift
//  Gestor_de_tareas_de_escritorio
//
//  Created by Lluís Espert Cuquerella on 23/9/24.
//

import SwiftUI
import SwiftData

struct vista: View {
    
    @Environment(\.modelContext) var context
    
    @Environment(\.dismiss) var dismiss
    
    @State var nombre_tarea = ""
    
    @State var tipo_tarea = ""
    
    @State var contenido_tarea = ""
    
    var body: some View{
        
        NavigationStack{
            
            Form {
                
                TextField("Nombre de la tarea: ", text:$nombre_tarea)
                
                TextField("Tipo de la tarea: ", text:$tipo_tarea)
                
                TextField("Contenido de la tarea: ", text:$contenido_tarea)
                
                Button("Guardar"){
                    
                    let formulario = Gestor(nombre_de_la_tarea: nombre_tarea, tipo_de_tarea: tipo_tarea, contenido_de_la_tarea: contenido_tarea)
                    
                    context.insert(formulario)
                    
                    dismiss()
                    
                }
                
            }
            
            .toolbar{
                
                Button("Cancelar"){
                    
                    dismiss()
                    
                }.foregroundStyle(.blue)
                
            }
            
        }
        
    }
}
