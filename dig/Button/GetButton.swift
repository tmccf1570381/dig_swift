import SwiftUI

struct GetButton: View {
    var body: some View {
        Button(action: {print("Discovery buton")}, label: {Text("GET")})
        .frame(width: 110, height: 50)
        .accentColor(Color(red: 68/255, green: 68/255, blue: 68/255, opacity: 1))
        .background(Color(red: 252/255, green: 209/255, blue: 209/255, opacity: 1))
        .cornerRadius(30)
    }
}

struct GetButton_Previews: PreviewProvider {
    static var previews: some View {
        GetButton()
    }
}
