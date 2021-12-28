//
//  NeumorphicButton.swift
//  Neumorphic_light_dark
//
//  Created by Brian Dilts on 12/23/21.
//

import SwiftUI

struct NeumorphicButton: View {
    var body: some View {
        VStack{
            
            // MARK: Neumorphic Type A
            
            HStack{
                
                // TYPE ONE
                VStack{
                    ZStack{
                        
                        Color.offWhite
                        
                        Button {
                            // do something
                        } label: {
                            Image(systemName: "leaf.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color("text-buttons"))
                        }
                        .buttonStyle(SimpleButtonStyleA3())
                        
                    }
                }
                
                // TYPE TWO
                VStack{
                    ZStack{
                        
                        Color.offWhite
                        
                        Button {
                            // do something
                        } label: {
                            Image(systemName: "leaf.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color("text-buttons"))
                        }
                        .buttonStyle(SimpleButtonStyleA2())
                        
                    }
                }
            }
            
            // TYPE THREE
            VStack{
                
                ZStack{
                    
                    Color.offWhite
                    
                    Button {
                        // do something
                    } label: {
                        Image(systemName: "leaf.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color("text-buttons"))
                    }
                    .buttonStyle(SimpleButtonStyleA1())
                    
                }
            }
            
            
            // MARK: Neumorphic Type B
            
            VStack{
                
                HStack{
                    
                    // TYPE ONE
                    ZStack{ Color.offWhite
                        Button {
                            // do something
                        } label: {
                            Image(systemName: "leaf.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            
                        }
                        .buttonStyle(LightButtonStyle())
                    }
                    
                    // TYPE TWO
                    ZStack{ Color.offWhite
                        Button {
                            // do something
                        } label: {
                            Image(systemName: "leaf.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            
                        }
                        .buttonStyle(LightButtonStyle())
                    }
                    
                }
                
            }
            
            
        }
        
    } // end body
}

struct NeumorphicButton_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicButton()
    }
}


/*VStack {
 GeometryReader { geo in
 
 VStack(alignment: .center, spacing: 4) {
 Image(systemName: "leaf.circle")
 .resizable()
 .scaledToFit()
 .frame(width: 24, height: 24)
 .foregroundColor(Color("text-buttons"))
 //                        Text("Special")
 //                            .bold()
 //                            .foregroundColor(Color("text-buttons"))
 }
 //                    .frame(width: 100, height: 100)
 //                    .frame(width: geo.size.width, height: geo.size.height)
 }
 }*/
