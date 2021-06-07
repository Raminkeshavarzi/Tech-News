//
//  PostData.swift
//  Tech-News
//
//  Created by Ramin on 7/6/21.
//

import Foundation
struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url : String?
}
