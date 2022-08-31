//
//  DetailView.swift
//  swiftUI demo
//
//  Created by Aamir Shaikh on 8/29/22.
//  Copyright © 2022 Gexton. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url:String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https//www.google.com")
    }
}

