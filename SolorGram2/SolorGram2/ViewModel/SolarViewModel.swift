//
//  SolarViewModel.swift
//  SolorGram2
//
//  Created by Njideka Akudinobi on 3/25/23.
//
/*
 Typically known as the brain of the app. The model passes data into the ViewModel which then passes it into the view.
 */

import Foundation
import SwiftUI

class SolarViewModel: ObservableObject{
    
    @Published var posts: PostAll = PostAll()
    
    var postAll: [Post] {
        posts.solarData
    }
    
    var postProfile: [Post] {
        posts.solarData.filter { p in
            p.author.id == PostAll.mainUser.id
        }
    }
    
    func setFavorite(postAll: Post) {
        // like post
        posts.toggleFavorite(postAll)
    }
    
    func deletePhoto(postAll: Post) {
        posts.deletePost(postAll)
            }
    
    func addPostFrom(image: UIImage?) {
        guard let image else {return}
        // you must do this on main thread for UI to update properly
        DispatchQueue.main.async {
            // create a new post object, it might look like this, but you can adapt as needed in your project.
            let newPost = Post(imageName: Image(""), description: "something new", author: PostAll.mainUser, isFavorite: false, isAdded: false, isRemoved: false)
            
            // call some function on the model to add the new post to the array of posts, you can do this how you like, but the logic should be in the model
            self.posts.add(newPost)
        }
    }
}
