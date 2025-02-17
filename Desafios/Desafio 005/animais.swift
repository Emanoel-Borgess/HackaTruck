//
//  ContentView.swift
//  Desafio05
//
//  Created by Turma01-10 on 10/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var Valor1: Double = 0.0
    @State private var Valor2: Double = 0.0
    @State private var Valor3: Double = 0.0
    var body: some View {
        VStack{
            HStack{
                Text("Digite a distância")
                TextField("Digite a distância", value: $Valor1, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
            }
            HStack{
                Text("Digite o tempo")
                TextField("Digite o tempo", value: $Valor2, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
            }
            Spacer()
            Button("Teste"){
                Valor3 = (Valor1/Valor2)
            }
            Text("Resultado: \(Valor3)Km/h")
            if(Valor3 <= 0){
                Image("ponto")
                .clipShape(Circle())
            }else if(Valor3 > 0.0 && Valor3 < 9.9){
                Image("tartaruga")
                .clipShape(Circle())
            }else if(Valor3 > 9.9 && Valor3 <= 29.9){
                Image("elefante")
                .clipShape(Circle())
            }else if(Valor3 > 29.9 && Valor3 <= 69.9){
                Image("avestruz")
                .clipShape(Circle())
            }else if(Valor3 > 69.9 && Valor3 <= 89.9){
                Image("leao")
                    .resizable()
                .clipShape(Circle())
            }else if(Valor3 > 89.9 && Valor3 <= 130.0){
                Image("guepardo")
                    .clipShape(Circle())
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
