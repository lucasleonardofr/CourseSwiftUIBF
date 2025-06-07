//
//  AppFormView.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 04/06/25.
//

import SwiftUI

struct AppFormView: View {
    @State var nome: String = ""
    @State var estaInscrito: Bool = false
    @State var dataSelecionada = Date()


    
    var body: some View {
        //Define o nosso formulário
        Form {
            //Cada seção desse formulário
            Section(header: Text("Informações do Usuário")) {
                TextField("Entre com o seu nome", text: $nome)
                Toggle("Se inscreva no nosso newsletter",
                       isOn: $estaInscrito)
            }
            
            Section(header: Text("Configurações")) {
                DatePicker("Selecione o seu aniversário",
                           selection: $dataSelecionada,
                           displayedComponents: .date)
            }
        }
    }
}

#Preview {
    AppFormView()
}
