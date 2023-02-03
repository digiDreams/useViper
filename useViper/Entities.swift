//
//  Entities.swift
//  useViper
//
//  Created by Apprenant 16 on 02/02/2023.
//

import Foundation
import SwiftUI

// Modèle de données.
// On change le nom de greeting demain.

protocol User {
    func greetingSomeone()
    var description: String {get set}
}

class UserName {
    var userName: String
    init(userName: String) {
        self.userName = userName
    }
    func greetingSomeone(name: String) -> String {
        return ("Hello ! My name is \(name), nice to meet you !")
    }
}

