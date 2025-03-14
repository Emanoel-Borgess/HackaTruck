import SwiftUI

struct Call: View {
    let phoneNumber = "02119999215746" // Substitua pelo número desejado

    var body: some View {
        ZStack {
            Color.cinza
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Text("Chamadas")
                    .foregroundStyle(.white)
                    .font(.system(size: 30))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
//                    .padding(.top, 50)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .background(.vermelho)
//                    Spacer()
                Text("Emergência")
                    .font(.system(size: 24))
                    .padding(.top, 180)
                    .foregroundColor(.vermelho)
                    .shadow(radius: 10)
                                        

                Button(action: {
                    callNumber(phoneNumber: phoneNumber)
                }) {
                    Image(systemName: "phone.circle.fill")
                        .resizable()
                        .foregroundStyle(.vermelho)
                        .frame(width: 150, height: 150)

                }
                Spacer()

            } // Fechamento do VStack
        } // Fechamento do ZStack
    }

    func callNumber(phoneNumber: String) {
        if let phoneURL = URL(string: "tel://\(phoneNumber)"), UIApplication.shared.canOpenURL(phoneURL) {
            UIApplication.shared.open(phoneURL)
        }
    }
}

struct CallButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Call()
    }
}
