import SwiftUI

class ItemData:ObservableObject{
    @Published var pageFlag = false
    @Published var bookFlag = false
}

class PageData:ObservableObject{
    @Published var name = "すずめ"
    @Published var size = "14-15cm"
    @Published var tag = "1"
    @Published var flag = true
    @Published var discription = "test"
    @Published var star = 5
    @Published var long:Double = 34.99
    @Published var lat:Double = 137.08520699659437
}
