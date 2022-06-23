//
//  Illustrator.swift
//  Illustra
//
//  Created by Moyses Miranda do Vale Azevedo on 07/06/22.
//

import Foundation
import UIKit

class Illustrator {
    var name: String
    var title: String
    var illustrations: UIImage

    init(name: String, title: String, illustrations: UIImage) {
        self.name = name
        self.title = title
        self.illustrations = illustrations
    }

}

let illustrators: [Illustrator] = [
    Illustrator(name: "Valeria Gruper",
                 title: "Blue Turtle",
                illustrations: UIImage(named: "blueturtle")!),
    Illustrator(name: "Tracie Andrews",
                 title: "Artine",
                illustrations: UIImage(named: "artine")!),
    Illustrator(name: "Aleksandr Kayda",
                 title: "Hunter",
                illustrations: UIImage(named: "hunter")!),
    Illustrator(name: "Alexey Kot",
                 title: "Magicred",
                illustrations: UIImage(named: "magicred")!),
    Illustrator(name: "Carllos Aribas",
                 title: "Blindman",
                illustrations: UIImage(named: "blindman")!),
    Illustrator(name: "Jose Elgueta",
                 title: "Contemplation",
                illustrations: UIImage(named: "contemplation")!),
    Illustrator(name: "Lilit Martirosyan",
                 title: "Techna",
                illustrations: UIImage(named: "techna")!),
    Illustrator(name: "Omar Aqil",
                 title: "Future Humanity",
                illustrations: UIImage(named: "futurehumanity")!),
    Illustrator(name: "Lilit Martirosyan",
                 title: "Astralunar",
                illustrations: UIImage(named: "astralunar")!),
    Illustrator(name: "Tracie Andrews",
                 title: "Misture",
                illustrations: UIImage(named: "misture")!)
]
