//
//  SecondaryView.swift
//  useViper
//
//  Created by Apprenant 16 on 02/02/2023.
//

import SwiftUI

struct SecondaryView: View {
    
    var body: some View {
        VStack {
            List(userNamesList, id: \.self) { singleUser in
                Text(singleUser.greetingSomeone(name: singleUser.userName))
                
            }
            Text("123 vive les crêpes.")
        }
    }
}

struct SecondaryView_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryView()
    }
}
