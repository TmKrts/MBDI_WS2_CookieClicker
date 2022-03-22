//
//  CreditsView.swift
//  MBDI_WS2_CookieClicker
//
//  Created by Tim Kaerts on 22/03/2022.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Tim Kaerts")
                Text("Bo Mollee")
            }
        }
        .navigationBarTitle("Credits", displayMode: .inline)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
