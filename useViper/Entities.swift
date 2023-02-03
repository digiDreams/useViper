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

protocol User: Hashable {
    func greetingSomeone() -> String
    var description: String {get set}
}

struct UserName: Hashable {
    
    var userName: String
    func greetingSomeone(name: String) -> String {
        return "Hello ! My name is \(name), nice to meet you !"
    }
}

var userNamesList: [UserName] = [UserName(userName: "Zhang"), UserName(userName: "Xin"), UserName(userName: "RaoHong"), UserName(userName: "PeiPei")]

