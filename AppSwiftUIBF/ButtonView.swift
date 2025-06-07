//
//  ButtonView.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 04/06/25.
//

import SwiftUI

struct ButtonView: View {
    
    @State var isLiked: Bool = false
    
    var body: some View {
        VStack (spacing: 50){
            Button("Pressione") {
                print("O botão foi pressionado")
            }
            .padding()
            .cornerRadius(12)
            .background(Color.red)
            
            
            Button {
                print("Botão com gradiente pressionado")
            } label: {
                Text("Button")
                    .font(.title3)
                    .foregroundStyle(.black)
                    .frame(height: 30)
                    .frame(maxWidth: .infinity)
                //                .background(Color.orange.opacity(0.5))
                    .background(LinearGradient(colors: [.red, .orange],
                                               startPoint: .topLeading,
                                               endPoint: .bottomTrailing))
            }
            .background(Color.red)
            .cornerRadius(12)
            .padding(.horizontal, 30)
            
            Button {
                isLiked.toggle()
            } label: {
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.red)
                
            }
        }
    }
}

#Preview {
    ButtonView()
}
