import SwiftUI

struct Navigation: View {
    var body: some View {
        HStack {
            Button(action: {print("Back buton")}, label: {Text("📙すべて").font(.callout).foregroundColor(.gray)})
            .frame(width: 110)
            
            Divider()
            
            Button(action: {print("Back buton")}, label: {Text("🐯どうぶつ").font(.callout).foregroundColor(.gray)})
            .frame(width: 110)
            
            Divider()
            
            Button(action: {print("Back buton")}, label: {Text("🌷しょくぶつ").font(.callout).foregroundColor(.gray)})
            .frame(width: 110)
        }
        .fixedSize()
        .padding(EdgeInsets(
            top: 0,leading: 0,bottom: 0,trailing: 0
        ))
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
