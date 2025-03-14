//
//  Earth.swift
//  projeto_final01
//
//  Created by Turma01-8 on 26/02/25.
//

import SwiftUI
struct Earth: View {
    @StateObject var psicologosufu = SosUfuPsicologos()
    var select = ["Todos", "Uberlândia", "Monte Carmelo", "Patos de Minas", "Ituiutaba"]
    @State var select2 : String = ""
    @State var recebeIndex : String = ""
    //  @State var recebeMC : String = ""
    @State var cores : Color = .azul
    
    @State var open : Bool = false
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color.azul
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    Text("Selecione a Cidade")
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                    Picker("ESCOLHA UM LUGAR", selection: $select2) {
                        ForEach(select, id: \.self) { i in
                            Text(i)
                        }
                    }.pickerStyle(.automatic)
                        .accentColor(.white)
                    //NavigationLink(destination: Filtrar()){
                    HStack{
                        Image(systemName: "list.bullet")
                        Text("Filtrar")
                    }.onTapGesture {
                        open = true
                    }
                    .foregroundColor(.azul)
                    .frame(width: 200, height: 30)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .sheet(isPresented: $open, content: {
                        Filtrar(vm : psicologosufu)
                    })
                    
                    //}
                    
                    ScrollView {
                        if select2 == "" || select2 == "Todos"{
                            ForEach(psicologosufu.SosPsi, id: \.self){ p in
                                ZStack{
                                    Rectangle()
                                        .frame(width: 350, height: 180)
                                        .foregroundColor(.white)
                                        .cornerRadius(15)
                                    HStack {
                                        
                                        AsyncImage(url: URL(string: p.foto)) { image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                        } placeholder: {
                                            Color.gray
                                        }
                                        .frame(width: 100, height: 100)
                                        .padding()
                                        VStack(alignment: .leading){
                                            Text(p.nome)
                                                .font(.system(size:22))
                                            Text(p.cidade)
                                            Text(p.especialidade)
                                            if (p.crm != nil){
                                                Text(p.crm!)
                                            }
                                            else {
                                                Text(p.matricula!)
                                            }
                                            Text(p.preco)
                                            
                                        }//VStack
                                        
                                        
                                        
                                        Spacer()
                                        VStack(alignment: .leading) {
                                            NavigationLink(destination: Agendamento(psicologo: p)){
                                                
                                                Image(systemName: "calendar.badge.checkmark")
                                                    .foregroundStyle(.blue)
                                            }
                                        }// Navigation link
                                        .padding()
                                    }//VStack
                                    .padding()
                                    
                                }//HStack
                            }//ZStack
                        }
                    
                    
                   
                    ForEach(psicologosufu.SosPsi, id: \.self) { p in
                        if (p.cidade == select2) {
                            ZStack{
                                Rectangle()
                                    .frame(width: 350, height: 180)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                HStack {
                                    
                                    AsyncImage(url: URL(string: p.foto)) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                    } placeholder: {
                                        Color.gray
                                    }
                                    .frame(width: 100, height: 100)
                                    VStack(alignment: .leading){
                                        Text(p.nome)
                                            .font(.system(size:22))
                                        Text(p.cidade)
                                        Text(p.especialidade)
                                        if (p.crm != nil){
                                            Text(p.crm!)
                                        }
                                        else {
                                            Text(p.matricula!)
                                        }
                                        Text(p.preco)
                                        
                                    }//VStack
                                    
                                    Spacer()
                                    NavigationLink(destination: Agendamento(psicologo: p)){
                                        
                                        Image(systemName: "calendar.badge.checkmark")
                                            .foregroundStyle(.blue)
                                    }// Navigation link
                                    .padding()
                                }//HStack
                                .padding()
                            }//ZStack
                        }
                        }
                    }
                    .padding()
                    
                }
                .onAppear(){psicologosufu.fetch()}//scrollview
            }//ztack
            
            
        }//navigationstack
        .accentColor(.white)
        
    }
}

#Preview {
    Earth()
}
