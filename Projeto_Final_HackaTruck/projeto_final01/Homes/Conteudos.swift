//
//  Conteudos.swift
//  projeto_final01
//
//  Created by Turma01-8 on 27/02/25.
//

import SwiftUI
import UIKit

struct Conteudos: View {
    let videos: [Video] = [
        Video(id: 1, title: "Como lidar com a ansiedade", description: "Estratégias eficazes para controlar a ansiedade no dia a dia.", imageName: "video1", url: "https://www.youtube.com/watch?v=4DpFox98kyg"),
        Video(id: 2, title: "Dicas para aumentar a autoestima", description: "Aprenda a valorizar suas qualidades e a construir uma imagem positiva de si.", imageName: "video2", url: "https://www.youtube.com/watch?v=6EggPqc2dd8"),
        Video(id: 3, title: "Técnicas de relaxamento", description: "Descubra exercícios simples para aliviar o estresse e promover o bem-estar.", imageName: "video3", url: "https://www.youtube.com/watch?v=n8zb-rSgTBo"),
        Video(id: 4, title: "Mindfulness para iniciantes", description: "Introdução à prática de mindfulness para uma vida mais presente e consciente.", imageName: "video4", url: "https://www.youtube.com/watch?v=mLOCYir6bnI")
    ]
    
    var body: some View {
        ZStack {
            Color.cinza
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Text("Biblioteca de Conteúdos")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(.azul)
                    
                VStack {
                    
                }
                .frame(height: 5)

                ScrollView {
                    VStack(spacing: 20) {
    //                    Text("Biblioteca de Conteúdos")
    //                        .font(.system(size: 20, weight: .bold))
    //                        .foregroundColor(.white)
    //                        .padding(.top)
                        
                        ForEach(videos) { video in
                            VideoCard(video: video)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 80)
                }
                
            }

        }
    }
}

struct Video: Identifiable {
    let id: Int
    let title: String
    let description: String
    let imageName: String
    let url: String?
}

struct VideoCard: View {
    let video: Video
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(.imagem3)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(10)
            
            Text(video.title)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.azul)
                .padding(.top, 8)
            
            Text(video.description)
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .lineLimit(2)
            
            if let videoURL = video.url, let url = URL(string: videoURL) {
                Button(action: {
                    // Abre o URL no navegador
                    UIApplication.shared.open(url)
                }) {
                    Text("Assistir Agora")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding(.top, 8)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    Conteudos()
}
