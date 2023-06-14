//import CoreData
//
//struct DataStruct {
//    let container: NSPersistentContainer
//
//    init(){
//        container = NSPersistentContainer(name: "dig")
//        
//        container.loadPersistentStores(completionHandler: {(e, error) in
//            if (error as NSError?) != nil {
//                fatalError("error")
//            }
//
//        })
//    }
//}


//    static var preview: DataStruct = {
//        let result = DataStruct()
//        let viewContext = result.container.viewContext
//
//        print(viewContext)
//        var name = ["すずめ","あぶらぜみ","あり","うぐいす","さくら","ちゅーりっぷ","すみれ","ねこ","ぱんじー","あかとんぼ","しおからとんぼ","うめ","おおくわがた"]
//        var size = ["14-15cm","56-60mm","1-30mm","14-16cm","-","60-100cm","10-15cm","4-5kg","5cm","30㎜-40㎜","33-40mm","-","50-93mm"]
//        var tag = [1,2,2,1,0,0,0,3,0,2,2,0,2]
//        var discription = ["test","test","test","test","test","test","test","test","test","test","test","test","test"]
//        var star = [1,1,1,1,1,1,1,1,1,1,1,3,3]
//        var long = [34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99,34.99]
//        var lat = [137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437,137.08520699659437]
        
//        if viewContext.count == 0{
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
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//            return result
//    }()
