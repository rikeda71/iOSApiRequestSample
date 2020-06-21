//
//  PostDetailView.swift
//  iOSApiRequestSample
//
//  Created by 池田流弥 on 2020/06/21.
//  Copyright © 2020 ryuyiked. All rights reserved.
//

import SwiftUI

struct PostDetailView: View {
    var post: Post
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(String(post.id))
                Text(post.title)
                Text(post.body)
            }
        }
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(post: Post(userId: 1, id:1, title: "title", body: "body"))
    }
}
