//
//  useViperApp.swift
//  useViper
//
//  Created by Apprenant 16 on 02/02/2023.
//

import SwiftUI

@main
struct useViperApp: App {
    @StateObject var presenter = ContentPresenter(interactor: ContentInteractor(), router: ContentRouter())
    var body: some Scene {
        WindowGroup {
            ContentView(contentPresenter: presenter)
            
        }
    }
}
