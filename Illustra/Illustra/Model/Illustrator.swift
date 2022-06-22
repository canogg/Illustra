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
    var evaluation: Float
    var profilePicture: String

    public func avaliationCalcule() -> Float {
        return 0.5
    }

    init(name: String, evaluation: Float, profilePicture: String) {
        self.name = name
        self.evaluation = evaluation
        self.profilePicture = profilePicture
    }

}

class Illustratorr {
    var name: String
    var title: String
    var illustrations: UIImage

    init(name: String, title: String, illustrations: UIImage) {
        self.name = name
        self.title = title
        self.illustrations = illustrations
    }

}

let illustrators: [Illustratorr] = [
    Illustratorr(name: "Valeria Gruper",
                 title: "Blue Turtle",
                illustrations: UIImage(named: "blueturtle")!),
    Illustratorr(name: "Tracie Andrews",
                 title: "Artine",
                illustrations: UIImage(named: "artine")!),
    Illustratorr(name: "Aleksandr Kayda",
                 title: "Hunter",
                illustrations: UIImage(named: "hunter")!),
    Illustratorr(name: "Alexey Kot",
                 title: "Magicred",
                illustrations: UIImage(named: "magicred")!),
    Illustratorr(name: "Carllos Aribas",
                 title: "Blindman",
                illustrations: UIImage(named: "blindman")!),
    Illustratorr(name: "Jose Elgueta",
                 title: "Contemplation",
                illustrations: UIImage(named: "contemplation")!),
    Illustratorr(name: "Lilit Martirosyan",
                 title: "Techna",
                illustrations: UIImage(named: "techna")!),
    Illustratorr(name: "Omar Aqil",
                 title: "Future Humanity",
                illustrations: UIImage(named: "futurehumanity")!),
    Illustratorr(name: "Lilit Martirosyan",
                 title: "Astralunar",
                illustrations: UIImage(named: "astralunar")!),
    Illustratorr(name: "Tracie Andrews",
                 title: "Misture",
                illustrations: UIImage(named: "misture")!)
]
