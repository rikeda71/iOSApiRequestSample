//
//  Post.swift
//  iOSApiRequestSample
//
//  Created by 池田流弥 on 2020/06/21.
//  Copyright © 2020 ryuyiked. All rights reserved.
//

import Foundation

struct Post: Decodable, Identifiable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
    
    enum CodingKeys: String, CodingKey {
        case userId = "userId"
        case id = "id"
        case title = "title"
        case body = "body"
    }
}
