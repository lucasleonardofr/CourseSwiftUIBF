//
//  AppNavigation.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 04/06/25.
//

import SwiftUI

struct AppNavigation: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Home Screen")
                    .font(.largeTitle)
                
                NavigationLink("Go to details",
                               destination: ButtonView())
                    .padding()
            }
            .navigationBarTitle("Home")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    AppNavigation()
}
