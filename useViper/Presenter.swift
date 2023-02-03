//
//  Presenter.swift
//  useViper
//
//  Created by Apprenant 16 on 02/02/2023.
//

import Foundation
import SwiftUI

// Sert juste à présenter les données, à l'envoyer à la view (fait le lien).

class ContentPresenter: ObservableObject {
    @Published var greeting = ""
    let interactor: ContentInteractor
    let router: ContentRouter
    init(interactor: ContentInteractor, router: ContentRouter) {
        self.interactor = interactor
        self.router = router
    }
    func displayInteractorGreeting(isPresented: Binding<Bool>) {
        greeting = interactor.greetingClick()
        router.showSecondaryView(isPresented: isPresented)
    }
    func someName() {
        
        // Add navigaiton method here from router
    }
    
    
    
    
}
