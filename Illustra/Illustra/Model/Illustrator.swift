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
    var evaluation: Int
    var illustrations: [String]

    init(name: String, evaluation: Int, illustrations: [String]) {
        self.name = name
        self.evaluation = evaluation
        self.illustrations = illustrations
    }

}

let illustrators: [Illustrator] = [
    Illustrator(name: "Aleksandr Kayda",
                evaluation: 4,
                illustrations: ["DockMan", "Hunter", "JunkCrab"]
               ),
    Illustrator(name: "Alexey Kot",
                evaluation: 3,
                illustrations: ["Applause", "Arena", "MagiCred", "ShowMan"]),
    Illustrator(name: "Carllos Aribas",
                evaluation: 5,
                illustrations: ["BlindMan", "Feeling", "Line", "Simple"]),
    Illustrator(name: "Jose Elgueta",
                evaluation: 4,
                illustrations: ["Contemplation", "LongHapiness", "Peaceof", "Shoelace", "ThinkingAbout"]),
    Illustrator(name: "Lilit Martirosyan",
                evaluation: 2,
                illustrations: ["Astralunar", "MakeMoney", "SendingCut", "Techna"]),
    Illustrator(name: "Osmar Aqil",
                evaluation: 1,
                illustrations: ["FutureHumanity", "Misterrob", "Roboonit"]),
    Illustrator(name: "Tracie Andrews",
                evaluation: 5,
                illustrations: ["Artine", "Misture", "Simble"]),
    Illustrator(name: "Valeria Gruper",
                evaluation: 4,
                illustrations: ["BlueTurtle", "Flamingos", "PinkFlamingo"])
]
