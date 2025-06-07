//
//  TabView.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 04/06/25.
//

import SwiftUI

struct StudyTabView: View {
    var body: some View {
        TabView {
            ButtonView()
                .tabItem {Label("Home", systemImage: "house")
                }
            
            Text("Settings Screen")
                .tabItem {Label("Settings", systemImage: "gear")
                }
        }
        .tint(.purple)
    }
}

#Preview {
    StudyTabView()
}
