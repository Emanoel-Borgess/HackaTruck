import SwiftUI
struct MenuItem {
    var icon: String
    var title: String
}

// Estrutura para criar itens do menu clicáveis
struct UserMenuItem<Destination: View>: View {
    var icon: String
    var title: String
    var destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.black)
                    .frame(width: 30, height: 50)
                Text(title)
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.black)
            }
            .padding(.vertical, 10)
        }
    }
}

struct User: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white
                VStack {
                    VStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.white)
                        
                        Text("Olá, Fulano! 😃👋")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .padding(.top, 10)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 270)
                    .background(Color.azul)
                    .cornerRadius(30.0)
                    .ignoresSafeArea()
                    List {
                        UserMenuItem(icon: "person.fill", title: "Minha Conta", destination: MinhaConta())
                        UserMenuItem(icon: "calendar", title: "Minhas Sessões", destination: Sessoes())
                        UserMenuItem(icon: "doc.text.fill", title: "Meus Planos", destination: MeusPlanos())
                        UserMenuItem(icon: "leaf.fill", title: "Planos de cuidados", destination: planos_acessiveis())
                        UserMenuItem(icon: "heart.fill", title: "Meus Favoritos", destination: MeusFavoritos())
                    }
                    .listStyle(PlainListStyle())
                    .frame(maxWidth: .infinity, maxHeight: 550)
                    .scrollContentBackground(.hidden)
                }
                
            }
        
        }
        .accentColor(.white)
    }
}

#Preview {
    User()
}
