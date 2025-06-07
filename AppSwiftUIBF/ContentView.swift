//
//  ContentView.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 23/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Olá SwiftUI!")
            .font(.largeTitle)
            .bold()
            .italic()
            .monospaced()
            //.foregroundStyle(.red)
            .foregroundStyle(LinearGradient(colors: [.red, .green],
                                            startPoint: .top,
                                            endPoint: .bottomTrailing))
            .background(Color.red)
            .padding()
        
        Text("Lucas Leonardo")
            .font(.title)
        
    }
}

// para sumir preview option+command+enter ou comentar o preview
//#Preview {
//    ContentView()
//}
