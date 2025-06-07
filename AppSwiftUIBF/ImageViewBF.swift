//
//  ImageViewBF.swift
//  AppSwiftUIBF
//
//  Created by Lucas Leonardo Freitas on 30/05/25.
//

import SwiftUI

struct ImageViewBF: View {
    var body: some View {
        //Usando imagem do sistema
        Image(systemName: "square.and.arrow.up")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
        
        //Usando imagem do assets
        Image("bobConstrutor")
            .resizable()
            .scaledToFit()
            .clipShape(.buttonBorder)
            .frame(width: 300, height: 300)
        
        //Usando imagem de uma url
        AsyncImage(url: URL(string: "https://s2-ge.glbimg.com/L-ewTzDHLZ6gocI3HEVLqnTxXIY=/0x0:1536x2048/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2025/u/h/8y6OwZSqiAIlqZgA6a3g/go-fzkbwyaa8bfu.jpg")){
            image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
        
    }
}

//#Preview {
//    ImageViewBF()
//}
