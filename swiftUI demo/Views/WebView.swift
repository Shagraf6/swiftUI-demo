//
//  WebView.swift
//  swiftUI demo
//
//  Created by Aamir Shaikh on 8/30/22.
//  Copyright © 2022 Gexton. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView:UIViewRepresentable{
    let urlString:String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
            
        }
    }
    
    
}
