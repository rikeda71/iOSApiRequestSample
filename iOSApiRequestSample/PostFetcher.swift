//
//  PostFetcher.swift
//  iOSApiRequestSample
//
//  Created by 池田流弥 on 2020/06/21.
//  Copyright © 2020 ryuyiked. All rights reserved.
//

import Foundation

class PostFetcher: ObservableObject {
    
    // jsonplaceholder url
    private let url = "https://jsonplaceholder.typicode.com"
    // プロパティに変更があった際にイベントを発行する
    @Published var posts: [Post] = []
    
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() -> Void {
        URLSession.shared.dataTask(with: URL(string: url + "/posts")!) { (data, response, error) in
            guard let data = data else {return}
            let decoder: JSONDecoder = JSONDecoder()
            do {
                let result: [Post] = try decoder.decode([Post].self, from: data)
                DispatchQueue.main.async {
                    self.posts = result
                }
            } catch {
                print("json convert failed: " + error.localizedDescription)
            }
        }.resume()
    }
}
