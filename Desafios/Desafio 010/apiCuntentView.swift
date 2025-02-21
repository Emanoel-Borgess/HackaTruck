//
//  ContentView.swift
//  Desafio10
//
//  Created by Turma01-10 on 03/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        
        VStack {
            ForEach(viewModel.pessoa, id: \.self){ index in
                Text(index.nome!)
            }
        }
        .onAppear(){
                viewModel.fetch()
            }
        .padding()
    }
}

#Preview {
    ContentView()
}
