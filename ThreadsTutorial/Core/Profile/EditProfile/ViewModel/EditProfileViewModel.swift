//
//  EditProfileViewModel.swift
//  ThreadsTutorial
//
//  Created by Mankuki_era on 2023/08/24.
//

import Foundation
import Firebase
import SwiftUI
import PhotosUI

class EditProfileViewModel: ObservableObject {
    @Published var profileImage: Image?
    private var uiImage: UIImage?
    @Published var selectedItem: PhotosPickerItem? {
        didSet { Task { await loadItem() } }
    }
    
    @MainActor
    private func loadItem() async {
        guard let item = selectedItem else { return }
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }
        self.uiImage = uiImage
        self.profileImage = Image(uiImage: uiImage)
    }
    
    func updateUserData() async throws {
        try await updateProfileImage()
    }
    
    func updateProfileImage() async throws {
        guard let image = self.uiImage else { return }
        guard let imageUrl = try? await ImageUploader.uploadImage(image) else { return }
        try await UserService.shared.updateUserProfileImage(withImageUrl: imageUrl)
    }
}
