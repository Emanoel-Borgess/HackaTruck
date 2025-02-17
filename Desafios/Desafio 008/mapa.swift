//
//  ContentView.swift
//  Desafio08
//
//  Created by Turma01-10 on 13/02/25.
//

import SwiftUI
import MapKit

struct localizacao: Hashable{
    let nome: String
    let latitude: Double
    let longitude: Double
    let foto: String
    let descricao: String
}

struct ContentView: View {
    @State private var posicao = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -14.3250, longitude: -51.9253),
            span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 10))
    )
    
    @State var map : Array = []
    
    var ArrayLocais = [
        localizacao(nome: "Romaria",
                    latitude:  -18.8838,
                    longitude: -47.5638,
                    foto: "https://www.mbi.com.br/mbi/files/media/image/simbolopedia/municipio-romaria-brasao-simb-brsemg0501956403.jpg",
                    descricao: "A povoação tem origem no final do século XIX quando garimpeiros vindos de Estrela do Sul descobriram ali ricas jazidas de diamante. O primeiro diamante foi encontrado no córrego Água Sua, afluente do rio Bagagem, em 1867."
                   ),
        localizacao(nome: "MC",
                    latitude:  -18.724097,
                    longitude: -47.524384,
                    foto: "https://www.mbi.com.br/mbi/files/media/image/simbolopedia/municipio-romaria-brasao-simb-brsemg0501956403.jpg",
                    descricao: "A povoação tem origem no final do século XIX quando garimpeiros vindos de Estrela do Sul descobriram ali ricas jazidas de diamante. O primeiro diamante foi encontrado no córrego Água Sua, afluente do rio Bagagem, em 1867."
                   )
    ]
    @State var selecao = localizacao(nome: "Brasil",
                                     latitude:  -18.8838,
                                     longitude: -47.5638,
                                     foto: "https://www.mbi.com.br/mbi/files/media/image/simbolopedia/municipio-romaria-brasao-simb-brsemg0501956403.jpg",
                                     descricao: "A povoação tem origem no final do século XIX quando garimpeiros vindos de Estrela do Sul descobriram ali ricas jazidas de diamante. O primeiro diamante foi encontrado no córrego Água Sua, afluente do rio Bagagem, em 1867."
                                    )
    
    var body: some View {
        ZStack{
            Map(position: $posicao)
                .ignoresSafeArea()
            
            VStack{
                Picker("", selection: $selecao){
                    ForEach(ArrayLocais, id: \.self) { local in
                        Text(local.nome)
                    }
                    
                }.onChange(of: selecao, {
                    posicao = MapCameraPosition.region(
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: selecao.latitude, longitude: selecao.longitude),
                            span: MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3))
                    )
                })
            }
        }
        
    }
}


#Preview {
    ContentView()
}
