//
//  ContentView.swift
//  Desafio07
//
//  Created by Turma01-10 on 12/02/25.
//

import SwiftUI

struct Song : Identifiable{
    var id : Int
    var nome : String
    var artista : String
    var capa : String
}

struct ContentView: View {
    
    @State var envia : Array = []
    
    var arrayMusicas = [
        Song(id: 1, nome: "Yellow", artista: "Coldplay", capa:"https://musicapave.com/wp-content/uploads/PARA.jpg"),
        Song(id: 2, nome: "Adventure of a Lifetime", artista: "Coldplay", capa:"https://vivacoldplay.com/wp-content/uploads/2015/11/CTHS4RZWUAAsMIV.jpg"),
        Song(id: 3, nome: "Viva la Vida", artista: "Coldplay", capa:"https://cdn.ibahia.com/wp-content/uploads/2022/10/500x400/capa-viva-la-vida-1024x614-7.webp?fallback=https%3A%2F%2Fcdn.ibahia.com%2Fwp-content%2Fuploads%2F2022%2F10%2Fcapa-viva-la-vida-1024x614.png%3Fxid%3D954685&xid=954685"),
        Song(id: 4, nome: "Starboy", artista: "The Weeknd, Daft Pun", capa:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTssm-ozqfvoiNb-NdCrh-LPvkoX92rl4Jv9w&s")
    ]
    
    var body: some View {
            NavigationStack{
                ZStack{
                    VStack {
                        LinearGradient(gradient: Gradient(colors: [.white, .orange, .black]), startPoint: .top, endPoint: .bottom)
                    }
                    .edgesIgnoringSafeArea(.all)
                    ScrollView(showsIndicators: false){
                    VStack{
                        VStack {
                            Image(.topBrasil)
                                .resizable()
                                .frame(width: 250, height: 250)
                        }
                        HStack{
                            Text("The best")
                                .font(.title)
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                                .padding()
                            Spacer()
                        }
                        HStack{
                            Image(.usuario)
                                .resizable()
                                .frame(width: 30,height: 30)
                            VStack{
                                Text("Coldplay")
                                    .foregroundStyle(.white)
                            }
                            Spacer()
                        }
                        VStack{
                            ForEach(arrayMusicas) { musica in
                                
                                HStack{
                                    NavigationLink(destination: tela1(recebe: envia)){
                                        AsyncImage(url: URL(string: musica.capa)) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 50, height: 50)
                                    }
                                    VStack{
                                        Text(musica.nome)
                                            .foregroundStyle(.white)
                                        Text(musica.artista)
                                            .foregroundStyle(.white)
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .padding()
                        
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
