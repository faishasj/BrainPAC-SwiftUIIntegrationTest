//
//  ContentView.swift
//  BrainPAC-SwiftUIIntegrationTest
//
//  Created by Faisha Surjatin on 6/6/2023.
//

import SwiftUI
import BrainPACNIH

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                NavigationLink(destination: BrainPACView(game: BrainPACGame.bart)) {
                    Text("Play BART")
                }
                Spacer()
                NavigationLink(destination: BrainPACView(game: BrainPACGame.sst)) {
                    Text("Play SST")
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
