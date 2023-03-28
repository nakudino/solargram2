//
//  SolarPostManager.swift
//  SolorGram2
//
//  Created by Njideka Akudinobi on 3/25/23.
//

import Foundation
import UIKit
import SwiftUI

/*
 data model that houses array and mutating func for features like favorite
 */

struct PostAll {
    
    static let  mainUser: User = User(imageUser: "person", userName: "globetrotter")
    
    var solarData: [Post] = [
        Post(imageName: Image("taj"), description: "so much to marble about", author: PostAll.mainUser,isFavorite: false, isAdded: false, isRemoved: false),
        Post(imageName: Image("greatwall"), description: "walk a mile in my shoes?", author: User(imageUser: "flight", userName: "theflightcatcher"),isFavorite: false, isAdded: false, isRemoved: false),
        Post(imageName: Image("ctr"), description: "hello Brazil", author: PostAll.mainUser, isFavorite: false, isAdded: false, isRemoved: false),
        Post(imageName: Image("chichan"), description: "nothing ruined here", author: PostAll.mainUser,isFavorite: false, isAdded: false, isRemoved: false),
        Post(imageName: Image("petra"), description: "worth the long flight", author: PostAll.mainUser, isFavorite: false, isAdded: false, isRemoved: false),
        Post(imageName: Image("colosseum"), description: "rome-ing about", author: PostAll.mainUser, isFavorite: false, isAdded: false, isRemoved: false),
        Post(imageName: Image("egypt"), description: "picture is not to scale", author: User(imageUser: "flight", userName: "theflightcatcher"),isFavorite: false, isAdded: false, isRemoved: false),
        Post(imageName: Image("stonehenge"), description: "stonehenge vs seven magic mountains - who did it better?", author: User(imageUser: "flight", userName: "theflightcatcher"), isFavorite: false, isAdded: false, isRemoved: false),
        Post(imageName: Image("reef"), description: "global warning", author: PostAll.mainUser, isFavorite: false, isAdded: false, isRemoved: false)
    ]
    mutating func toggleFavorite(_ post: Post) {
        let postIndex = solarData.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        solarData[actualIndex].isFavorite.toggle()
    }
    
    mutating func deletePost(_ post: Post) {
        let postIndex = solarData.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        solarData.remove(at: actualIndex)
    }
        
    mutating func add(_ post: Post) {
        solarData.append(post)
    }
}
