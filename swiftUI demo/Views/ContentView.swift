//
//  ContentView.swift
//  swiftUI demo
//
//  Created by Aamir Shaikh on 8/26/22.
//  Copyright © 2022 Gexton. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }

                }
            }
            
            .navigationBarTitle("H4XOR NEWS")
            }
        .onAppear {
            //trailing closure
            self.networkManager.fetchData()
        }    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
