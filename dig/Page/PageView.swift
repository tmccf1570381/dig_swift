import SwiftUI

struct PageView: View {
    @EnvironmentObject var PageData : PageData

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
            
                Text(String(repeating:"⭐️", count:PageData.star))
                .font(.title3)
                .padding(EdgeInsets(
                    top: 0,
                    leading: 15,
                    bottom: 0,
                    trailing: 0
            ))
                Spacer()
            }
            
            Text("\(PageData.name)").font(.title).underline().bold()
            
            Discription()
            
            HStack {
                Spacer()
                ReturnButton2()
                Spacer()
                GetButton()
                Spacer()
            }
            
            Spacer()
        }
    }
    
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
            .environmentObject(ItemData())
            .environmentObject(PageData())
    }
}
