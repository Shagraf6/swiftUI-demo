//
//  PostData.swift
//  swiftUI demo
//
//  Created by Aamir Shaikh on 8/29/22.
//  Copyright © 2022 Gexton. All rights reserved.
//

import Foundation
struct Results: Decodable{
    let hits: [Post]
}

struct Post:Decodable, Identifiable{
    
    var id:String{
        return objectID
    }
    let objectID:String
    let points:Int
    let title:String
    let url: String?
}
