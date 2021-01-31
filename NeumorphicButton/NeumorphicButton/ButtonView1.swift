//
//  ButtonView1.swift
//  NeumorphicButton
//
//  Created by taufik arsandi on 16/01/21.
//

import SwiftUI

struct ButtonView1: View {
    var body: some View {
        VStack {
            Text("Button")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width: 200, height: 60)
                .background(
                    ZStack {
                        Color(#colorLiteral(red: 0.3799001072, green: 0.7373812643, blue: 0.9806709342, alpha: 1))
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .foregroundColor(.white)
                            .blur(radius: 4)
                            .offset(x: -8, y: -8)
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(
                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6614157807, green: 0.9235616809, blue: 0.9764705896, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .padding(2)
                            .blur(radius: 2)
                            .padding()
                    }
                )
                    
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.4360178367, green: 0.7086078298, blue: 0.890621425, alpha: 1)),radius: 20, x: 20, y: 20 )
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),radius: 20, x: -10, y: -10 )
        }
    }
}

struct ButtonView1_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView1()
    }
}
