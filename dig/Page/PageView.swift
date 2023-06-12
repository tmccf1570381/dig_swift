import SwiftUI

struct PageView: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
            Photo().padding(EdgeInsets(
                top: 20,
                leading: 20,
                bottom: 30,
                trailing: 0
            ))
            
            Text("⭐️⭐️⭐️⭐️⭐️")
                .font(.title3)
                .padding(EdgeInsets(
                    top: 0,
                    leading: 20,
                    bottom: 0,
                    trailing: 20
            ))}
            
            Text("スズメ").font(.title).underline().bold()
            
            Discription()
            
            HStack {
                Spacer()
                ReturnButton()
                Spacer()
                DiscoveryButton()
                Spacer()
            }
            
            Spacer()
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
