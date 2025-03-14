import SwiftUI

struct Chat: View {
    let quickReplies = ["Agendar sessão", "Pagamentos", "Crise emocional", "Histórico de consultas"]

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "brain.head.profile")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Circle().fill(Color.white.opacity(0.2)))

                VStack(alignment: .leading) {
                    Text("IA SOS UFU")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                    Text("Online • Disponível agora")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                }
                Spacer()
            }
            .padding()
            .background(Color.azul)
            .shadow(color: .black.opacity(0.05), radius: 5, y: 2)

            // Área de Mensagens
            ScrollView {
                VStack(spacing: 20) {
                    // Mensagem da IA
                    HStack(alignment: .top, spacing: 12) {
                        Image(systemName: "brain.head.profile")
                            .font(.title)
                            .foregroundColor(.gray)

                        VStack(alignment: .leading, spacing: 8) {
                            Text("Olá! Como posso ajudar hoje?")
                                .font(.system(size: 18))
                                .padding(12)
                                .background(Color(.systemGray5))
                                .foregroundColor(.primary)
                                .cornerRadius(15)
                                .contextMenu {
                                    Button("Copiar") {}
                                    Button("Encaminhar") {}
                                }

                            // Quick Replies
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(quickReplies, id: \.self) { reply in
                                        Button(action: {}) {
                                            Text(reply)
                                                .font(.system(size: 16))
                                                .padding(.vertical, 8)
                                                .padding(.horizontal, 12)
                                                .background(Color.blue.opacity(0.1))
                                                .foregroundColor(.blue)
                                                .cornerRadius(15)
                                        }
                                    }
                                }
                            }
                        }
                        Spacer()
                    }
                    .padding(.horizontal)

                    // Mensagem do Usuário
                    HStack(alignment: .top) {
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("Preciso reagendar minha sessão de ontem")
                                .font(.system(size: 18))
                                .padding(12)
                                .background(Color.azul)
                                .foregroundColor(.white)
                                .cornerRadius(15)

                            Text("10:45 AM")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                        }

                        Image(systemName: "person.crop.circle.fill")
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
            .background(Color(.secondarySystemBackground))

            // Área de Input
            HStack {
                TextField("Escreva sua mensagem...", text: .constant(""))
                    .padding(.horizontal)
                    .frame(height: 40)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)

                Button(action: {}) {
                    Image(systemName: "paperplane.fill")
                        .padding(10)
                        .background(Color.azul)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
            }
            .padding()
            .background(Color(.systemBackground))
        }
    }
}

struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
            .previewLayout(.sizeThatFits)
    }
}
