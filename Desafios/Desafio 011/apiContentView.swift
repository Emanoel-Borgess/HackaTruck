//
//  ContentView.swift
//  Desafio11
//
//  Created by Turma01-10 on 24/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    func getUmidadeStatus(SUmidade: String?) -> String {
        
        let umidade = Double(SUmidade!) ?? 0
        
        switch umidade {
        case ..<30:
            return "Solo muito seco - Precisa de água"
        case 30..<60:
            return "Solo úmido - Ideal para as plantas"
        case 60...:
            return "Solo muito úmido - Atenção com o excesso de água"
        default:
            return "Estado do solo desconhecido"
        }
    }
    
    var body: some View {
        VStack {
            Text("Monitoramento de Umidade do Solo")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Monitoramento da umidade do solo para saber quando irrigar suas plantas")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.bottom)
            
            ScrollView {
                
                
                 
                ForEach(viewModel.umidade, id: \.self){ index in
                    if(index.umidade != nil){
                        VStack(alignment: .leading) {
                            Text("Data: \(index.data)")
                                .font(.headline)
                                .foregroundColor(.blue)
                            Text("Umidade:  \(index.umidade!)")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text(getUmidadeStatus(SUmidade: index.umidade))
                                .font(.body)
                                .foregroundColor((Double(index.umidade!) ?? 0) < 30 ? .red : ((Double(index.umidade!) ?? 0) > 60 ? .yellow : .green))
                                .padding(.vertical)
                            
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(.horizontal)
                    }
                }
                
            }
        }
        .onAppear {
            viewModel.fetch()
        }
        .padding()
        .background(Color(UIColor.systemGray6)) // Cor de fundo mais suave
    }
}

#Preview {
    ContentView()
}
