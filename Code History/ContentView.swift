//
//  ContentView.swift
//  Code History
//
//  Created by Rich Polanco on 2/5/23.
//

import SwiftUI

struct ContentView: View {

    let question = Question (
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswersIndex: 2
    )

    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)

    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1/10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack {
                    //Button 1
                    Button(action: {
                        print("Tapped choice 1")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[0])
                    })

                    //Button 2
                    Button(action: {
                        print("Tapped choice 2")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[1])

                    })
                    // Button 3
                    Button(action: {
                        print("Tapped choice 3")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[2])
                    })

                    // Button 4
                    Button(action: {
                        print("Tapped choice 4")

                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[3])
                    })

                }
            }

        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
