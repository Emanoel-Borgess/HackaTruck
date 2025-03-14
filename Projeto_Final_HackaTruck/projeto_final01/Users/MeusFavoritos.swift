//
//  MeusFavoritos.swift
//  projeto_final01
//
//  Created by Turma01-8 on 13/03/25.
//

import SwiftUI

struct MeusFavoritos: View {
    
    @State private var isFavorited: Bool = true
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.cinza.edgesIgnoringSafeArea(.all)
                
                
                
                VStack{
                    Text("Meus favoritos")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .padding(.top, 1)
                        .background(.azul)
                    
                    VStack {
                        
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 350, height: 120)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .shadow(radius: 5)
                            
                            HStack {
                                AsyncImage(url: URL(string: "https://images.vexels.com/media/users/3/237185/isolated/preview/cfe6673fe5a3f477f9da4c5cb7d78067-bonecos-palitos-10.png")) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                } placeholder: {
                                    Color.gray
                                }
                                .frame(width: 100, height: 100)
                                .padding()
                                
                                Text("Dra. Ana Paula Souza")
                                    .font(.system(size: 22))
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                Button(action: {
                                    isFavorited.toggle()
                                }) {
                                    Image(systemName: isFavorited ? "heart.fill" : "heart")
                                        .font(.title)
                                        .foregroundColor(isFavorited ? .red : .gray)
                                }
                                .padding(.trailing)
                            }
                        }
                        .padding()
                    }
                    
                    Spacer()
                }
            }

            .navigationBarTitleDisplayMode(.inline)
        }
        .accentColor(.azul)
    }
}

#Preview {
    MeusFavoritos()
}
