//
//  DarkNeumorphicButton.swift
//  Neumorphic_light_dark
//
//  Created by Brian Dilts on 12/23/21.
//

import SwiftUI

struct DarkNeumorphicButton: View {
    var body: some View {
        
        ZStack{
            
            
            Button {
                // do something
            } label: {
                Image(systemName: "leaf.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                
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
