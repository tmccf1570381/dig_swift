import SwiftUI
import UIKit

struct Photo: View {
    @EnvironmentObject var PageData : PageData
    
    var body: some View {
        ZStack {
            Image("\(PageData.name)")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.white, lineWidth: 4)
            }.shadow(radius: 7)
            if PageData.flag {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(Color(red: 174/255, green: 225/255, blue: 225/255, opacity: 1))
                    .font(.system(size: 45)).offset(x:-80,y:-80)
            }
        }
    }
}

struct Photo_Previews: PreviewProvider {
    static var previews: some View {
        Photo()
            .environmentObject(PageData())
    }
}
