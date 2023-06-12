import SwiftUI

struct DiscoveryButton: View {
    var body: some View {
        Button(action: {print("Discovery buton")}, label: {Text("みつけた！")})
        .frame(width: 110, height: 50)
        .accentColor(Color(red: 68/255, green: 68/255, blue: 68/255, opacity: 1))
        .background(Color(red: 211/255, green: 224/255, blue: 220/255, opacity: 1))
        .cornerRadius(30)
    }
}

struct DiscoveryButton_Previews: PreviewProvider {
    static var previews: some View {
        DiscoveryButton()
    }
}
