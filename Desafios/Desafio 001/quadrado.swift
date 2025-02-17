import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
                .frame(width: 100, height: 100)
                .background(.red)
            Spacer()
            Spacer()
                .frame(width: 100, height: 100)
                .background(.blue)
        }
        .padding()
        Spacer()
        HStack{
            Image(systemName: "")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
                .frame(width: 100, height: 100)
                .background(.green)
            Spacer()
            Spacer()
                .frame(width: 100, height: 100)
                .background(.yellow)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
