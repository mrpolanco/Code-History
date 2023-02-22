//
//  WelcomeView.swift
//  Code History
//
//  Created by Rich Polanco on 2/21/23.
//

import SwiftUI

struct WelcomeView: View {

    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(destination: GameView(), label: {
                        HStack {
                            Spacer()
                            Text("Ok, let's go!")
                                .font(.body)
                                .bold()
                                .padding()
                            Spacer()
                        }.background(GameColor.accent)
                    })

                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
