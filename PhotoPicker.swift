//
//  PhotoPicker.swift
//  C7MacroChallenge
//
//  Created by Davaughn Williams on 4/29/25.
//

import SwiftUI
import Foundation
import PhotosUI
import AVKit

struct PhotoPicker: UIViewControllerRepresentable {
    @Binding var image: UIImage?

    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.selectionLimit = 0
        config.filter = .images

        let picker = PHPickerViewController(configuration: config)
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, PHPickerViewControllerDelegate {
        let parent: PhotoPicker

        init(_ parent: PhotoPicker) {
            self.parent = parent
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)
            
            guard let provider = results.first?.itemProvider else { return }
            
            if provider.canLoadObject(ofClass: UIImage.self) {
                provider.loadObject(ofClass: UIImage.self) { image, _ in
                    DispatchQueue.main.async {
                        self.parent.image = image as? UIImage
                    }
                }
            }

//            for result in results {
//                if result.itemProvider.canLoadObject(ofClass: UIImage.self) {
//                    result.itemProvider.loadObject(ofClass: UIImage.self) { (image, error) in
//                        if let image = image as? UIImage {
//                            DispatchQueue.main.async {
//                                self.parent.images.append(image)
//                            }
//                        }
//                    }
//                }
//            }
            
            
        }
    }
}
