//
//  CustomTabBar.swift
//  Neumorphic_light_dark
//
//  Created by Brian Dilts on 12/23/21.
//

import SwiftUI

struct CustomTabBar: View {
    
    
    
    var body: some View {
        
        HStack{
            
            CustomTabBarButton(buttonText: "Explore", imageName: "figure.walk.circle")
            
            CustomTabBarButton(buttonText: "Create", imageName: "wand.and.stars.inverse")
            
            CustomTabBarButton(buttonText: "Profile", imageName: "person")
            
        }
        .frame(height: 82)
        
        
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
