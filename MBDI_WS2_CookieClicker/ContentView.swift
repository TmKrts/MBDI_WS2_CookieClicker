//
//  ContentView.swift
//  MBDI_WS2_CookieClicker
//
//  Created by Tim Kaerts on 22/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State var timescClicked = 0
    @State var isShowingSheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Button(
                    action: {
                        print("cookie clicked")
                        timescClicked = timescClicked + 1
                    },
                    label: {
                        Image("cookie")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                )
                
                Text("You clicked the cookie \(timescClicked) times.")
                Spacer()
                HStack {
                    NavigationLink(destination: CreditsView()) {
                        Text("Credits")
                    }
                    Spacer()
                    Button("Store",
                           action: {
                        print("Clicked store button")
                        isShowingSheet = true
                    })
                }
                Spacer()
            }
            .padding(.all)
            .navigationBarTitle("Cookie Clicker")
            .sheet(isPresented: $isShowingSheet, content: {StoreView(timesClicked: $timescClicked)})
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
