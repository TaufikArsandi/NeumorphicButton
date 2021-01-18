//
//  ContentView.swift
//  NeumorphicButton
//
//  Created by taufik arsandi on 16/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 50) {
            
            ButtonView1()
            
            ButtonView2()
            
            ButtonView3()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.6614157807, green: 0.9235616809, blue: 0.9764705896, alpha: 1)))
        .ignoresSafeArea(.all)
        .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
