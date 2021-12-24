//
//  DarkNeumorphicButton.swift
//  Neumorphic_light_dark
//
//  Created by Brian Dilts on 12/23/21.
//

import SwiftUI

struct DarkNeumorphicButton: View {
    var body: some View {
        ZStack {
            
            LinearGradient(Color.darkStart, Color.darkEnd)
            
            Button {
                // do something
            } label: {
                Image(systemName: "leaf.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color("text-buttons"))
            }
            .buttonStyle(DarkButtonStyle())
            
        }
    }
}

struct DarkNeumorphicButton_Previews: PreviewProvider {
    static var previews: some View {
        DarkNeumorphicButton()
    }
}
