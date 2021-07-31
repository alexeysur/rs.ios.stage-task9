//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import Foundation

struct imageGallery: Hashable {
    var id: Int
    var datePublic: Date
    var image: String
    
    init(id: Int, datePublic: Date, image: String) {
        self.id = id
        self.datePublic = datePublic
        self.image = image
    }

static let collectionData: [String] = [
        ""
    ]

    
}



