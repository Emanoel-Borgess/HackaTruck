//
//  ContentView.swift
//  Desafio06Ex2
//
//  Created by Turma01-10 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    @State var envia : String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Color.blue.ignoresSafeArea()
                VStack {
                        NavigationLink(destination:modo1()){
                            ZStack{
                            Rectangle()
                                .frame(width: 200, height: 90)
                                .foregroundColor(.pink)
                            Text("Modo 1")
                                .foregroundStyle(.white)
                        }
                    }
                        NavigationLink(destination:modo2()){
                            ZStack{
                                Rectangle()
                                    .frame(width: 200, height: 90)
                                    .foregroundColor(.pink)
                            Text("Modo 2")
                                .foregroundStyle(.white)
                        }
                    }
                        NavigationLink(destination:modo3()){
                            ZStack{
                                Rectangle()
                                    .frame(width: 200, height: 90)
                                    .foregroundColor(.pink)
                            Text("Modo 3")
                                .foregroundStyle(.white)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
