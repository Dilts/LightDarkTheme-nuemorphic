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
            
            Button {
                // Do something
            } label: {
                VStack{
                    GeometryReader { geo in
                        
                        VStack(alignment: .center, spacing: 4) {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("View 1")
                                .bold()
                        }
                        .frame(width: geo.size.width, height: geo.size.height)
                    }
                }
            }
            
            Button {
                // Do something
            } label: {
                VStack{
                    GeometryReader { geo in
                        
                        VStack(alignment: .center, spacing: 4) {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("View 1")
                                .bold()
                        }
                        .frame(width: geo.size.width, height: geo.size.height)
                    }
                }
            }
            
            Button {
                // Do something
            } label: {
                VStack{
                    GeometryReader { geo in
                        
                        VStack(alignment: .center, spacing: 4) {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("View 1")
                                .bold()
                        }
                        .frame(width: geo.size.width, height: geo.size.height)
                    }
                }
            }
            
        }
        .frame(height: 82)
        
        
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
