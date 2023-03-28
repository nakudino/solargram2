//
//  UserModel.swift
//  SolorGram2
//
//  Created by Njideka Akudinobi on 3/25/23.
//
/*
 Data Model for a user on the app
 */

import Foundation

struct User: Identifiable {
    let imageUser: String
    let userName: String
    let id: String = UUID().uuidString
}
