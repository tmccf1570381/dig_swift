import SwiftUI

struct Discription: View {
    @State private var isPresented: Bool = false
        var body: some View {
            List{
                Section(header:Text("分類")){
                    Text("鳥類")
                }
                Section(header:Text("大きさ")){
                    Text("14~15cm")
                }
                Section(header:Text("説明")){
                    Text("両足で飛び跳ねて素早く移動する。飛翔は直線的であるが、急に飛ぶ方向を変えたりすることもできる。")
                }
            }
            .listStyle(PlainListStyle())
        }
}

struct Discription_Previews: PreviewProvider {
    static var previews: some View {
        Discription()
    }
}
