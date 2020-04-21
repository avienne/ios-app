//
//  EntryPicture.swift
//  wallabag
//
//  Created by Marinel Maxime on 05/11/2019.
//

import Combine
import SwiftUI

struct EntryPicture: View {
    private let placeholderImage: UIImage = UIImage(systemName: "book")!

    @ObservedObject var imagePublisher: ImageDownloaderPublisher

    init(url: String?) {
        imagePublisher = ImageDownloaderPublisher(url: url)
    }

    var body: some View {
        Image(uiImage: imagePublisher.image ?? placeholderImage)
            .resizable()
            .scaledToFit()
    }
}
