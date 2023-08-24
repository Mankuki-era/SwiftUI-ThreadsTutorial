//
//  User.swift
//  ThreadsTutorial
//
//  Created by Mankuki_era on 2023/08/23.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Identifiable, Hashable, Codable {
    let id: String
    let email: String
    let fullname: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
