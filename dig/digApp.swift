import SwiftUI

@main
struct digApp: App {
//    let persistenceController = DataStruct()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(ItemData())
                .environmentObject(PageData())
        }
    }
}
