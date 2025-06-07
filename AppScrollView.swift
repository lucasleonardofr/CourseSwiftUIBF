//
//  AppScrollView.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 04/06/25.
//

import SwiftUI

struct AppScrollView: View {
    var body: some View {
        //Ao criar a scrollview podemos setar se queremos vertical ou horizontal
        ScrollView(.vertical) {
            ForEach(0..<20) { index in
                Text("Item \(index)")
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                    .background((Color.blue.opacity(0.5)))
                    .padding()
            }
        }
    }
}

#Preview {
    AppScrollView()
}
