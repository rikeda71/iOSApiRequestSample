//
//  ContentView.swift
//  iOSApiRequestSample
//
//  Created by 池田流弥 on 2020/06/21.
//  Copyright © 2020 ryuyiked. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // let posts: [Post] = [Post(userId: 1, id: 1, title: "title1", body: "body1"), Post(userId: 2, id: 2, title: "title2", body: "body2")]
    
    @ObservedObject var fetcher = PostFetcher()
                                                                                 
    var body: some View {
        NavigationView {
            List(fetcher.posts) { post in
                PostDetailView(post: post)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
