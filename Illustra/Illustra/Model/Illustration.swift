//
//  Illustration.swift
//  Illustra
//
//  Created by Moyses Miranda do Vale Azevedo on 07/06/22.
//

import Foundation
import UIKit

class Illustration {
    var name: String
    var image: UIImage

    init(name: String) {
        self.name = name
        self.image = UIImage(named: name)!
    }
}
