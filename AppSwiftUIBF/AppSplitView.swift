//
//  AppSplitView.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 08/06/25.
//

import SwiftUI

struct AppSplitView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Nome")
                    .navigationTitle("Página Inicial")
                
                NavigationLink("Ir para detalhes", destination: AppFormView())
            }
        }
    }
}

#Preview {
    AppSplitView()
}
