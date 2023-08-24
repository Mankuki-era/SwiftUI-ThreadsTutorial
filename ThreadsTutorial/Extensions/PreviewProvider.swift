//
//  PreviewProvider.swift
//  ThreadsTutorial
//
//  Created by Mankuki_era on 2023/08/23.
//

import Foundation
import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, email: "batman@gmail.com", fullname: "Bruce Wayne", username: "batman")
    
    let thread = Thread(ownerUid: "123", caption: "This is a test thread", timestamp: Timestamp(), likes: 0)
}
