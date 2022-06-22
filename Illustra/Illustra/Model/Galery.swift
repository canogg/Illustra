//
//  Galery.swift
//  Illustra
//
//  Created by Moyses Miranda do Vale Azevedo on 07/06/22.
//

import Foundation

class Galery {
    init(listGaleryWithAvaliations: [Galery], listGaleryWithoughtAvaliations: [Galery]) {
        self.listGaleryWithAvaliations = listGaleryWithAvaliations
        self.listGaleryWithoughtAvaliations = listGaleryWithoughtAvaliations
    }

    var listGaleryWithAvaliations: [Galery]
    var listGaleryWithoughtAvaliations: [Galery]

}
