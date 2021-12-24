//
//  ContentView.swift
//  Neumorphic_light_dark
//
//  Created by Brian Dilts on 12/23/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
            
            VStack{
                
                Text("Hello, world!")
                    .padding()
                
                Spacer()
                
                CustomTabBar()
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color("background1"), Color("background2"), Color("background3")]), startPoint: .top, endPoint: .bottomTrailing))
          
        
        
        
    } // End body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
