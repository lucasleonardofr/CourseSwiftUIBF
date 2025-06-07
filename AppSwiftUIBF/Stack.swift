//
//  Stack.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 30/05/25.
//

//VStack -> O VStack é um layout que empilha os componentes verticalmente.

//HStack -> O HStack é um layout que empilha os componentes horizontalmente.

//ZStack -> O ZStack é um layout que empilha os componentes um em cima do outro
//          em um plano 3D. A visualização mais próxima do topo será a mais
//          visível. Isso é útil para sobreposiçoes com elementos flutuantes.

//Aligment -> Define o alinhamento da VStack.
//Spacing - >  Define o espaçamento entre os componentes.

import SwiftUI

struct Stack: View {
    var body: some View {
        //        VStack(alignment: .center, spacing: 50.0) {
        //            Text("Olá Lucas!")
        //            Text(">.<")
        //        }
        //        .frame(maxWidth: 140)
        //        .background(Color.blue)
        //
        //        HStack(alignment: .center, spacing: 50.0) {
        //            Text("Olá Lucas!")
        //            Text(":D")
        //        }
        //        .frame(maxWidth: .infinity, minHeight: 150)
        //        .background(Color.red)
        
        //        ZStack {
        //            Color.cyan
        VStack(alignment: .center, spacing: 50.0) {
            Text("Olá Lucas!")
            //Cria uma divisao entre meus textos
            //Divider()
            Text(">.<")
        }
        .padding(.horizontal, 100)
        //posso tbm combinar espaçadores
        //.padding([.leading, .top], 100)
        .background(Color.blue)
        //O Spacer redimisiona e separa os componentes para as extremidades da tela
        //Spacer()
        HStack(alignment: .center, spacing: 50.0) {
            Text("Olá Lucas!")
            Text(":D")
        }
        .frame(maxWidth: .infinity, minHeight: 150)
        .background(Color.red)
        //        }
    }
}

#Preview {
    Stack()
}
