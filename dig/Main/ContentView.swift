import SwiftUI
import CoreData

struct ContentView: View {
//    @Environment(\.managedObjectContext) private var viewContext
//
//    @FetchRequest(entity: Content.entity(),sortDescriptors: [])
//    var items: FetchedResults<Content>
    
//    func addItems(){
//        let name = ["すずめ","あぶらぜみ","あり","うぐいす","さくら","ちゅーりっぷ","すみれ","ねこ","ぱんじー","あかとんぼ","しおからとんぼ","うめ","おおくわがた"]
//        let size = ["14-15cm","56-60mm","1-30mm","14-16cm","-","60-100cm","10-15cm","4-5kg","5cm","30㎜-40㎜","33-40mm","-","50-93mm"]
//        let tag = [1,2,2,1,0,0,0,3,0,2,2,0,2]
//        let discription = ["test","test","test","test","test","test","test","test","test","test","test","test","test"]
//        let star = [1,1,1,1,1,1,1,1,1,1,1,3,3]
//        let long = [34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99]
//        let lat = [137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437]
//        if  self.items.count == 0{
//            for index in 0..<name.count {
//                let newItem = Content(context: viewContext)
//                newItem.name = name[index]
//                newItem.size = size[index]
//                newItem.tag = Int16(tag[index])
//                newItem.discription = discription[index]
//                newItem.star = Int16(star[index])
//                newItem.long = long[index]
//                newItem.lat = lat[index]
//                newItem.flag = false
//                }
//            do {
//                try viewContext.save()
//            } catch {
//                fatalError("Unresolved error2 \(error)")
//            }
//        }
//    }
    
    var body: some View {
        NavigationView{
            VStack {
//                List{
//                    ForEach(items) {item in
//                        if((item.name?.isEmpty)==false){
//                            HStack {
//                                Text(item.name!).font(.title)
//                            }
//                        }
//                    }
//                }
                Spacer()
//                Button(action: {addItems()}, label: {Text("butt")})
//                Navigation().paddi ng(.top,40)
                Divider()
                MapView()
                Spacer()
                UserHead()
                Spacer()
                HStack {
                    Spacer()
                    DiscoveryButton()
                    Spacer()
                    MybookButton()
                    Spacer()
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("My pictorial books")
                        .foregroundColor(.cyan)
                        .padding(EdgeInsets(
                            top: 70,leading: 5,bottom: 0,trailing: 0
                        ))
                        .frame(height: 150)
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                }
            }
            .navigationBarItems(trailing: Button(action: {
                print("-----------------")
            },label: {
                Image(systemName: "list.bullet").foregroundColor(.gray).font(.system(size: 25))
            }))
        }
//        .onAppear(perform: addItems)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ItemData())
            .environmentObject(PageData())
//            .environment(\.managedObjectContext, DataStruct.preview.container.viewContext)
    }
}

 
    
    
    
    
    
    
    
    
    
    
//    private func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }

//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//}

//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()



//        NavigationView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//                    } label: {
//                        Text(item.timestamp!, formatter: itemFormatter)
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//            Text("Select an item")
//        }
