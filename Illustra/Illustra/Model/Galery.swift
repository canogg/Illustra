//
//  Galery.swift
//  Illustra
//
//  Created by Moyses Miranda do Vale Azevedo on 07/06/22.
//

import Foundation

class Galery {
    var listGaleryWithAvaliations: [Galery]
    var listGaleryWithoughtAvaliations: [Galery]

    init(listGaleryWithAvaliations: [Galery], listGaleryWithoughtAvaliations: [Galery]) {
        self.listGaleryWithAvaliations = listGaleryWithAvaliations
        self.listGaleryWithoughtAvaliations = listGaleryWithoughtAvaliations
    }
}
