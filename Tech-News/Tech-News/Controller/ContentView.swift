//
//  ContentView.swift
//  Tech-News
//
//  Created by Ramin on 7/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManger()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) {
                post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationTitle("Tech News")
        }
        .onAppear(perform: {
            self.networkManager.fetchDataFromApi()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


