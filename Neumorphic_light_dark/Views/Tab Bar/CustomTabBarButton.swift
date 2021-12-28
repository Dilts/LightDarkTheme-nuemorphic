//
//  CustomTabBarButton.swift
//  Neumorphic_light_dark
//
//  Created by Brian Dilts on 12/23/21.
//

import SwiftUI

struct CustomTabBarButton: View {
    
    var buttonText: String
    var imageName: String
    
    var body: some View {
        ZStack{
            LinearGradient(Color.darkStart, Color.darkEnd)
        Button {
            // Do something
        } label: {
            VStack{
                GeometryReader { geo in
                    
                    VStack(alignment: .center, spacing: 4) {
                        Image(systemName: imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color("text-buttons"))
                        Text(buttonText)
                            .bold()
                            .foregroundColor(Color("text-buttons"))
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            }
        }
        }
        
    }
}



//struct CustomTabBarButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTabBarButton()
//    }
//}
