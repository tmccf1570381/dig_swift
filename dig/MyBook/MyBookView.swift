//
//  MyBookView.swift
//  dig
//
//  Created by kakeru on 2023/06/12.
//

import SwiftUI

struct MyBookView: View {
    var name:String = "あおい"
    
    var body: some View {
        List{
            Section(header:Text("\(name) のずかん")
                .font(.title3)){
                    RowContent()
                    RowContent()
                    RowContent()
                    RowContent()
                    RowContent()
            }
        }
    }
}

struct MyBookView_Previews: PreviewProvider {
    static var previews: some View {
        MyBookView()
    }
}
