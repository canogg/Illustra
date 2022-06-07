//
//  Illustrator.swift
//  Illustra
//
//  Created by Moyses Miranda do Vale Azevedo on 07/06/22.
//

import Foundation

class Illustrator{
    var name: String
    var evaluation: Float
    var profilePicture: String
    
    
    public func  AvaliationCalcule() -> Float{
        return 0.5
    }
    
    init(name: String, evaluation: Float, profilePicture: String) {
        self.name = name
        self.evaluation = evaluation
        self.profilePicture = profilePicture
    }
    
}
