//
//  Post.swift
//  SolorGram2
//
//  Created by Njideka Akudinobi on 3/25/23.
//

/*
 data model for a post on the app
 */
import Foundation
import SwiftUI

struct Post: Identifiable {
    let id: String = UUID().uuidString
    let imageName: Image
    let description: String
    let author: User
    var isFavorite: Bool
    var isAdded: Bool
    var isRemoved: Bool
}
