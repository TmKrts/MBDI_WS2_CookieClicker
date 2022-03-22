//
//  StoreView.swift
//  MBDI_WS2_CookieClicker
//
//  Created by Tim Kaerts on 22/03/2022.
//

import SwiftUI

struct StoreView: View {
    @Binding var timesClicked: Int
    
    var body: some View {
        VStack {
            Spacer()
            Text("Koop goodies van je cookies.")
            Text("Tegoed: \(timesClicked) cookies.")
            Spacer()
            Text("Koop een 🤖 robot (100 cookies)")
                .foregroundColor(Color.blue)
            Text("koop een 🚜 farm (200 cookies)")
                .foregroundColor(Color.blue)
            Text("Koop een ⛏ mine (1000 cookies)")
                .foregroundColor(Color.blue)
            Spacer()
        }
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView(timesClicked: .constant(0))
    }
}
