//
//  NavSplitView.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 08/06/25.
//

import SwiftUI
// Intuito de mexer spl
struct NavSplitView: View {
    @State var categoriaSelecionada: String?
    @State var itemSelecionado: String?
    
    let categorias = ["Frutas, Vegetais, Diário"]
    
    let items = [
        "Frutas" : ["Maça", "Banana", "Laranja"],
        "Vegetais" : ["Cenoura", "Brócolis"],
        "Diário" : ["Leite", "Queijo", "Manteiga"]
    ]
    var body: some View {
        NavigationSplitView {
            List(categorias, id: \.self, selection: $categoriaSelecionada) {
                categoria in
                Text(categoria)
            }
            .navigationTitle("Categorias")
        } content: {
            if let categoriaSelecionada = categoriaSelecionada {
                List(items[categoriaSelecionada]!, id: \.self,
                     selection: $itemSelecionado) {
                    item in
                    Text(item)
                }
                .navigationTitle(categoriaSelecionada)
            } else {
                Text("Selecione uma categoria")
            }
        } detail: {
            if let itemSelecionado = itemSelecionado {
                Text("Detalhes sobre: \(itemSelecionado)")
            }
        }
    }
}

#Preview {
    NavSplitView()
}
