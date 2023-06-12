import SwiftUI

struct ReturnButton: View {
    var body: some View {
        Button(action: {print("Back buton")}, label: {Text("もどる")})
        .frame(width: 110, height: 50)
        .accentColor(Color(red: 68/255, green: 68/255, blue: 68/255, opacity: 1))
        .background(Color(red: 174/255, green: 225/255, blue: 225/255, opacity: 1))
        .cornerRadius(30)
    }
}

struct ReturnButton_Previews: PreviewProvider {
    static var previews: some View {
        ReturnButton()
    }
}
