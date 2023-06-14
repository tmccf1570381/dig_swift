import SwiftUI

struct MybookButton: View {
    @EnvironmentObject var ItemData : ItemData
    
        var body: some View {
            Button(action: {ItemData.bookFlag=true}) {Text("ずかん")}
            .fullScreenCover(isPresented: $ItemData.bookFlag) {MyBookView()}
            .frame(width: 110, height: 50)
            .accentColor(Color(red: 68/255, green: 68/255, blue: 68/255, opacity: 1))
            .background(Color(red: 252/255, green: 209/255, blue: 209/255, opacity: 1))
            .cornerRadius(30)
    }
}

struct MybookButton_Previews: PreviewProvider {
    static var previews: some View {
        MybookButton()
            .environmentObject(ItemData())
    }
}
