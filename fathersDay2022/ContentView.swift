//
//  ContentView.swift
//  fathersDay2022
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 20/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isSheetShown = false
    @State var message = ""
    @State var medal = ""
    @State var messageTwo = ""
    @State var positionY = 420
    
    var body: some View {
        VStack {
            Text("Hey Dadster!!")
                .padding()
                .font(.system(size: 30))
            Text("Guess what? It's Father's day! It has been agreed that you are the best dad ever, so we'd like to award you with a little something")
                .multilineTextAlignment(.center)
                .font(.system(size: 25))
                .padding()
                .frame(width: 300, height: 250)
            Button {
                isSheetShown = true
            } label: {
                Text("Tap to continue")
                    .font(.system(size: 30))
            }
        }
        .sheet(isPresented: $isSheetShown) {
            VStack {
                Text(message)
                    .bold()
                    .font(.system(size: 50))
                    .multilineTextAlignment(.center)
                    .padding()
                ZStack {
                    Image(systemName: "person.fill")
                        .font(.system(size: 200))
                    withAnimation {
                        Text(medal)
                            .font(.system(size: 100))
                            .offset(y: CGFloat(positionY))
                    }
                }
                Button {
                    withAnimation {
                        positionY -= 358
                    }
                    message = "A medal for the most amazing dad ever!"
                    medal = "🏅"
                    messageTwo = "I really appreciate all the things you have done for me, taking care of me and inspiring me to be a better person. Thank you and happy fathers day!"
                } label: {
                    Text("What is it??")
                        .font(.system(size: 20))
                        .padding()
                }
                Text(messageTwo)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 200)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
