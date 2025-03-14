//
//  Home.swift
//  projeto_final01
//
//  Created by Turma01-8 on 26/02/25.
//
import SwiftUI

struct Home: View {
    @State private var moodValue: CGFloat = 0.5 // Initial mood value (0.0 to 1.0)
    @State private var isActive: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.cinza
                VStack {
                    VStack {
                        
                        VStack{
                                                        
                            }.frame(height: 20)
                        HStack {
                                                        Image(.logoufu)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                            VStack(alignment: .leading) {
                                Text("Olá,")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 28, weight: .bold))
                                Text("Fulano 👋")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 24))
                            }
                            .frame(maxWidth: .infinity ,alignment: .leading)
                            
                            Image(systemName: "bell")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .padding(.trailing)
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            NavigationLink(destination: planos_acessiveis()){
                                VStack {
                                    Image(systemName: "leaf")
                                        .font(.system(size: 30))
                                        .padding(.bottom, 4)
                                    Text("Planos e\ncuidados")
                                        .multilineTextAlignment(.center)
                                        .font(.system(size: 14))
                                }
                                .frame(width: 80, height: 80)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.azul)
                                .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: Sessoes()) {
                                VStack {
                                    Image(systemName: "calendar")
                                        .font(.system(size: 30))
                                        .padding(.bottom, 4)
                                    Text("Minhas\nsessões")
                                        .multilineTextAlignment(.center)
                                        .font(.system(size: 14))
                                }
                                .frame(width: 80, height: 80)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.azul)
                                .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: Conteudos()){
                                VStack {
                                    Image(systemName: "list.bullet.rectangle") // Content list icon
                                        .font(.system(size: 30))
                                        .padding(.bottom, 4)
                                    Text("Conteúdos")
                                        .multilineTextAlignment(.center)
                                        .font(.system(size: 14))
                                }
                                .frame(width: 80, height: 80)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.azul)
                                .cornerRadius(10)
                            }
                        } // Fechamento do HStack
                    } // Fechamento do VStack
                    .frame(maxWidth: .infinity, maxHeight: 270)
                    .background(.azul)
                    .cornerRadius(30.0)
                    .ignoresSafeArea()
                    
                    NavigationLink(destination: Earth()){
                        HStack {
                            VStack {
                                Text("Agende sua")
                                    .foregroundStyle(.azul)
                                    .font(.system(size: 20))
                                
                                Text("próxima sessão")
                                    .foregroundStyle(.azul)
                                    .font(.system(size: 20))
                                
                            } // Fechamento do VStack
                            .frame(alignment: .leading)
                            
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .foregroundColor(.azul)
                        } // Fechamento do HStack
                        .frame(width: 360, height: 100)
                        .background(.white)
                        .cornerRadius(15.0)
                    } // Fechamento do NavigationLink
                    
                    // MARK: - ScrollView "Feito para sua rotina"
                    VStack(alignment: .leading) {
                        Text("Feito para sua rotina")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                TestCard(title: "Ansiedade", imageName: "ansiedade")
                                TestCard(title: "Depressão", imageName: "depressao")
                                TestCard(title: "Estresse", imageName:"raivadefinitiva")
                                TestCard(title: "Bem-Estar", imageName:"alegria")
                                TestCard(title: "Ver todos", imageName: "todos") // Added "Ver todos"
                            }
                            .padding(.horizontal)
                            .frame(height: 150) // Fixed height for the scroll view
                        }
                    }
                    //  .padding(.bottom)
                    
                    // MARK: - Meu Diário Emocional
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Meu Diário Emocional")
                                .foregroundStyle(.azul)
                                .font(.system(size: 20))
                        }
                        .padding(.horizontal)
                        MoodSlider(moodValue: $moodValue)
                        // .frame(width: 360, height: 50)
                    }
                    .frame(width: .infinity, height: .infinity)
                    .padding()
                    .background(.white)
                    .cornerRadius(15.0)
                    .padding()
                    
                    
                    Spacer()
                    
                } // Fechamento do VStack
                
            }// Fechamento do ZStack
            
        }// Fechamento do NavigationStack
        
        .accentColor(.white)
        
        
        
    }
}

struct TestCard: View {
    let title: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName) // Use Image to load image from assets
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .padding(.bottom, 4)
            Text("Teste\n\(title)")
                .multilineTextAlignment(.center)
                .font(.system(size: 14))
        }
        .frame(width: 140, height: 120) // Adjusted width
        .padding()
        .background(Color.white.opacity(0.9)) // Adding a slightly transparent background
        .foregroundColor(.azul)
        .cornerRadius(10)
    }
}

struct MoodSlider: View {
    @Binding var moodValue: CGFloat
    @State private var isRecording: Bool = false
    
    var body: some View {
        VStack(spacing:30){
            GeometryReader { geometry in
                HStack {
                    Text("😔")
                    .foregroundColor(.gray)
                    Slider(value: $moodValue)
                    Text("😃")
                        .foregroundColor(.azul)
                }
                .padding(.horizontal)
            }
            
            Button(action: {
                isRecording = true
    
                print("Mood value: \(moodValue)")
            }) {
                Text("Gravar Humor")
                    .frame(width: 120, height: 10)
                    .padding()
                    .background(Color.azul)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .disabled(isRecording)
        }
        
    }
}


#Preview {
    Home()
}

