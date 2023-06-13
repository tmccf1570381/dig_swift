import SwiftUI

struct UserHead: View {
    let userName:String = "あおい"
    let star:Int = 30
    
    var body: some View {
        VStack {
            HStack {
                Text("なまえ").frame(width: 150, alignment: .leading)
                Text("\(userName)").frame(alignment: .leading).bold()
                Spacer()
            }.padding(EdgeInsets(
                top: 20,leading: 15,bottom: 0,trailing: 0
            ))
            HStack {
                Text("みつけたかず").frame(width: 150, alignment: .leading)
                Text("⭐️×\(star.description)").frame(alignment: .leading).bold()
                Spacer()
            }.padding(EdgeInsets(
                top: 10,leading: 15,bottom:  15,trailing: 0
            ))
        }
    }
}

struct UserHead_Previews: PreviewProvider {
    static var previews: some View {
        UserHead()
    }
}
