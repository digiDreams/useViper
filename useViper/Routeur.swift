//
//  Routeur.swift
//  useViper
//
//  Created by Apprenant 16 on 02/02/2023.
//

import Foundation
import SwiftUI
// Router doit gérer la navigation.

class ContentRouter { // pas de type
    func showSecondaryView(isPresented: Binding<Bool>) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){ // ou + Double(1)
            isPresented.wrappedValue.toggle()
        }
        
    }
}
