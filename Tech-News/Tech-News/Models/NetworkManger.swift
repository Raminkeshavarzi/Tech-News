//
//  NetworkManger.swift
//  Tech-News
//
//  Created by Ramin on 7/6/21.
//

import Foundation

class NetworkManger: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchDataFromApi () {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                           let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print("Failed to fetch data becuase of \(error)")
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
