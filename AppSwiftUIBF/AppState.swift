//
//  PropertiesWrappers.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 08/06/25.
//

import SwiftUI

struct AppState: View {
    // @State é usado para armazenar um valor que pertence a essa View
    // Quando esse valor mudar, a interface será atualizada automaticamente
    @State var contador = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Contador: \(contador)")
                .font(.largeTitle)
            
            // Botão que altera o valor da variável 'contador'
            Button("Adicionar 1") {
                contador += 1
            }
            
            // Chamando uma subview (View filha) e passando o 'contador' como binding
            ContadorView(contador: $contador)
        }
        .padding()
    }
}

// Essa é uma View separada que recebe um valor de fora com @Binding
// Ou seja, ela não é dona do valor, apenas está "conectada" a ele
struct ContadorView: View {
    // @Binding é uma referência para uma variável @State da View pai
    // Serve para permitir que a View filha altere esse valor diretamente
    @Binding var contador: Int
    
    var body: some View {
        VStack {
            Button("Resetar contador") {
                contador = 0 // Isso vai resetar a variável do pai
            }
        }
    }
}

#Preview {
    AppState()
}
