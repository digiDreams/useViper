//
//  ContentView.swift
//  useViper
//
//  Created by Apprenant 16 on 02/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var contentPresenter: ContentPresenter
    @State var isPresented = false
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack {
                    Text("Version => iOS 16")
                    Text(contentPresenter.greeting)
                    Button {
                    contentPresenter.displayInteractorGreeting(isPresented: $isPresented)
                    }label: {
                    Text("Tap me !")
                    }
                }
                .navigationDestination(isPresented: $isPresented) {
                    SecondaryView()
                }
            }
        } else {
            
            NavigationView {
                VStack {
                    Text("Version < iOS 16")
                    Text(contentPresenter.greeting)
                    Button {
                        contentPresenter.displayInteractorGreeting(isPresented: $isPresented)
                    } label: {
                        Text("Tap me !")
                    }
                    NavigationLink(destination: SecondaryView(), isActive: $isPresented){
                        EmptyView()
                    }
                }
                .padding()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contentPresenter: ContentPresenter(interactor: ContentInteractor(), router: ContentRouter()))
    }
}
