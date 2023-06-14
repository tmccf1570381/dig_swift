import SwiftUI

struct Discription: View {
    @EnvironmentObject var PageData : PageData
    
        var body: some View {
            List{
                Section(header:Text("分類")){
                    Text("\(PageData.name)")
                }
                Section(header:Text("おおきさ")){
                    Text("\(PageData.size)")
                }
                Section(header:Text("説明")){
                    Text("\(PageData.discription)")
                }
            }
            .listStyle(PlainListStyle())
        }
}

struct Discription_Previews: PreviewProvider {
    static var previews: some View {
        Discription()
            .environmentObject(PageData())
    }
}
