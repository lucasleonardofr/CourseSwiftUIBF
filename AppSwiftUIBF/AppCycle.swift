//
//  AppCycle.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 04/06/25.
//

import SwiftUI

struct AppCycle: View {
    
    init() {
        print("Sou o primeiro")
    }
    
    var body: some View {
        NavigationStack{
            NavigationLink("Próxima", destination: AppFormView())
                .onAppear(){
                    print("Sou o segundo")
                }
            
                .onDisappear(){
                    print("Sou o terceiro")
                }
        }
    }
}

#Preview {
    AppCycle()
}
