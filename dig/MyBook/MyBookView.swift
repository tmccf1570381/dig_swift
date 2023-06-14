import SwiftUI

struct MyBookView: View {
    @EnvironmentObject var ItemData : ItemData
    @EnvironmentObject var PageData : PageData
    
    var columns:[GridItem]=Array(repeating: .init(.flexible()), count: 3)
    
    var userName:String = "あおい"
    
    var sample = ["すずめ", "ちゅーりっぷ", "さくら", "つばめ", "たんぽぽ","ぱんじー","どんぐり","とまと","きんもくせい","めだか","なす","からす","かぶとむし","こい","くちなし","すみれ"]
    
    var body: some View {
        VStack {
            ZStack {
                Button(action: {ItemData.bookFlag = false}, label: {
                    Image(systemName: "arrowshape.backward").foregroundColor(.gray).font(.system(size: 25))
                }).offset(x:-165)
                Text("\(userName) のずかん")
                    .foregroundColor(.cyan)
                    .padding(EdgeInsets(
                        top: 0,leading: 0,bottom: 0,trailing: 0
                    ))
                    .frame(height: 100)
                .font(.system(size: 30, weight: .bold, design: .rounded))
            }
            Navigation()
            Divider()
            ScrollView {
                VStack {
                    Spacer()
                    LazyVGrid(columns: columns) {
                        ForEach(sample, id: \.self) { img in
                            Button(action: {
                                PageData.name=img
                                ItemData.pageFlag = true
                            }) {
                            ZStack(alignment: .topLeading) {
                                Image("\(img)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(
                                        width: UIScreen.main.bounds.size.width / 3 - 12,
                                        height: UIScreen.main.bounds.size.width / 3 - 12
                                    )
                                    .clipped()
                                    .padding(.top,10)
                                VStack {
                                    Spacer()
                                    HStack {
                                        Text("\(img)")
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                    }
                                    Spacer()
                                }
                                }
                            }
                            .fullScreenCover(isPresented: $ItemData.pageFlag) {
                                PageView()
                            }
                        }
                    }
                    .padding(.horizontal, 5)
                    Spacer()
                }
            }
        }
    }
}

struct MyBookView_Previews: PreviewProvider {
    static var previews: some View {
        MyBookView()
            .environmentObject(ItemData())
            .environmentObject(PageData())
    }
}
