//
//  ButtonView4.swift
//  NeumorphicButton
//
//  Created by taufik arsandi on 01/02/21.
//

import SwiftUI

struct ButtonView4: View {
    @GestureState var tap = false
    @State var press = false
    var body: some View {
        ZStack {
            Image(systemName: "sun.max")
                .font(.system(size: 44, weight: .light))
                .offset(x: press ? -90 : 0, y: press ? -90 : 0)
                .rotation3DEffect(
                    Angle(degrees: press ? 20 : 0),
                    axis: (x: 10, y: -10, z: 0))
            Image(systemName: "moon")
                .font(.system(size: 44, weight: .light))
                .offset(x: press ? 0 : 90, y: press ? 0 : 90)
                .rotation3DEffect(
                    Angle(degrees: press ? 0 : 20),
                    axis: (x: -10, y: 10, z: 0))
        }
        .frame(width: 100, height: 100)
        .background(
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(press ? #colorLiteral(red: 0.6614157807, green: 0.9235616809, blue: 0.9764705896, alpha: 1) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.6614157807, green: 0.9235616809, blue: 0.9764705896, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                
                Circle()
                    .stroke(Color.clear, lineWidth: 10)
                    .shadow(color: Color(press ? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) : #colorLiteral(red: 0.6614157807, green: 0.9235616809, blue: 0.9764705896, alpha: 1)), radius: 3, x: -5, y: -5)
                
                Circle()
                    .stroke(Color.clear, lineWidth: 10)
                    .shadow(color: Color(press ? #colorLiteral(red: 0.6614157807, green: 0.9235616809, blue: 0.9764705896, alpha: 1) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 3, x: 3, y: 3)
            }
        )
        .clipShape(Circle())
        .shadow(color: Color(press ? #colorLiteral(red: 0.4360178367, green: 0.7086078298, blue: 0.890621425, alpha: 1) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
        .shadow(color: Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.4360178367, green: 0.7086078298, blue: 0.890621425, alpha: 1)), radius: 20, x: 20, y: 20)
        .scaleEffect(tap ? 1.2 : 1)
        .gesture(
            LongPressGesture().updating($tap) { currentState, GestureState, tansaction in
                GestureState = currentState
                
            }
            .onEnded { value in
                self.press.toggle()
            }
        )
    }
}

struct ButtonView4_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView4()
    }
}
