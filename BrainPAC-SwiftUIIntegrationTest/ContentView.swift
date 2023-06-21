//
//  ContentView.swift
//  BrainPAC-SwiftUIIntegrationTest
//
//  Created by Faisha Surjatin on 6/6/2023.
//

import SwiftUI
import BrainPACNIH

func onSessionComplete(resultsPath: String, schemaUrl: String) -> Void {
    print(resultsPath)
    print(schemaUrl)
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                NavigationLink(destination: BrainPACView(game: BrainPACGame.bart, onSessionComplete: onSessionComplete)) {
                    Text("Play BART")
                }
                Spacer()
                NavigationLink(destination: BrainPACView(game: BrainPACGame.sst, onSessionComplete: onSessionComplete)) {
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
