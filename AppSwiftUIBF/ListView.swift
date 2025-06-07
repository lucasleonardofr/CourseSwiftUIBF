//
//  ListView.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 04/06/25.
//

import SwiftUI

struct ListView: View {
    
    var nomes = ["Lucas", "Hágata", "Pedro", "Letica", "Joca", "Edu"]
    
    var body: some View {
        List(nomes, id: \.self) { nome in
            HStack {
                Image(systemName: "person")
                Text(nome)
            }
            .onTapGesture {
                print("Celula foi selecionada")
            }
        }
        .listStyle(.grouped)
    }
}

#Preview {
    ListView()
}
