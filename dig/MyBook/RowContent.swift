import SwiftUI

struct RowContent: View {
    var body: some View {
        HStack {
            Text("□")
            Image("sparrow")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Rectangle())
            Text("スズメ")
        }.frame(height:50)
    }
}

struct RowContent_Previews: PreviewProvider {
    static var previews: some View {
        RowContent()
    }
}
