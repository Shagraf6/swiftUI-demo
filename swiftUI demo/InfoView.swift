//
//  InfoView.swift
//  swiftUI demo
//
//  Created by Aamir Shaikh on 8/27/22.
//  Copyright © 2022 Gexton. All rights reserved.
//

import SwiftUI


struct InfoView: View {
    
    let text:String
    let imageNAme:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame( height: 50)
            .overlay(
                HStack{
                    Image(systemName:imageNAme).foregroundColor(.green)
                    Text(text)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello", imageNAme: "phone.fill").previewLayout(.sizeThatFits)
    }
}
