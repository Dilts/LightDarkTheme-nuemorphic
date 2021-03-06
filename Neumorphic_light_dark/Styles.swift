//
//  Styles.swift
//  Neumorphic_light_dark
//
//  Created by Brian Dilts on 12/23/21.
//

import Foundation
import SwiftUI

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
    static let lightStart = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
    static let lightEnd = Color(red: 200 / 255, green: 200 / 255, blue: 200 / 255)
    static let darkStart = Color(red: 50 / 255, green: 60 / 255, blue: 65 / 255)
    static let darkEnd = Color(red: 25 / 255, green: 25 / 255, blue: 30 / 255)
}

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

// MARK: Light Neumorphic Flat-Button Style A1

struct SimpleButtonStyleA1: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
            .background(
                Group {
                    if configuration.isPressed {
                        Circle()
                            .fill(Color.offWhite)
                            .overlay(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
                            )
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 8)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                            )
                    } else {
                        Circle()
                            .fill(Color.offWhite)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    }
                }
            )
    }
}


// MARK: Light Neumorphic Flat-Button Style A2

struct SimpleButtonStyleA2: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
            .background(
                Group {
                    if configuration.isPressed {
                        Circle()
                            .fill(Color.offWhite)
                            .overlay(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
                            )
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 8)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                            )
                    } else {
                        /*
                         Circle()
                         .fill(Color.offWhite)
                         .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                         .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                         */
                        Circle()
                            .fill(Color.offWhite)
                            .overlay(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                            )
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 8)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
                            )
//                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
//                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    }
                }
            )
    }
}


// MARK: Light Neumorphic Flat-Button Style A3

struct SimpleButtonStyleA3: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
            .background(
                Group {
                    if configuration.isPressed {
                        Circle()
                            .fill(Color.offWhite)
                            .overlay(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
                            )
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 8)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                            )
                    } else {
                        /*
                         Circle()
                         .fill(Color.offWhite)
                         .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                         .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                         */
                        Circle()
                            .fill(Color.offWhite)
                            .overlay(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 8)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                            )
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 12)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
                            )
//                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 10, y: 10)
//                            .shadow(color: Color.white.opacity(0.7), radius: 5, x: -5, y: -5)
                    }
                }
            )
    }
}


// MARK: Dark Neumorphic Pillow-Button Style

struct DarkBackground<S: Shape>: View {
    var isHighlighted: Bool
    var shape: S
    
    var body: some View {
        ZStack {
            if isHighlighted {
                shape
                    .fill(LinearGradient(Color.darkEnd, Color.darkStart))
                    .overlay(shape.stroke(LinearGradient(Color.darkStart, Color.darkEnd), lineWidth: 4))
                    .shadow(color: Color.darkStart, radius: 10, x: 5, y: 5)
                    .shadow(color: Color.darkEnd, radius: 10, x: -5, y: -5)
                
            } else {
                shape
                    .fill(LinearGradient(Color.darkStart, Color.darkEnd))
                    .overlay(shape.stroke(LinearGradient(Color.darkEnd, Color.darkStart), lineWidth: 4))
                    .shadow(color: Color.darkStart, radius: 10, x: -10, y: -10)
                    .shadow(color: Color.darkEnd, radius: 10, x: 10, y: 10)
            }
        }
        
        
    }
}

struct DarkButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(20)
            .contentShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
            .background(
                DarkBackground(isHighlighted: configuration.isPressed, shape: RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
            )
            .foregroundColor(Color("text-buttons"))
    }
}

// MARK: Light Neumorphic Pillow-Button Style

struct LightBackground<S: Shape>: View {
    var isHighlighted: Bool
    var shape: S
    
    var body: some View {
        ZStack {
            if isHighlighted {
                shape
                    .fill(LinearGradient(Color.lightEnd, Color.lightStart))
                    .overlay(shape.stroke(LinearGradient(Color.lightStart, Color.lightEnd), lineWidth: 4))
                    .shadow(color: Color.lightStart, radius: 10, x: 5, y: 5)
                    .shadow(color: Color.lightEnd, radius: 10, x: -5, y: -5)
                
            } else {
                shape
                    .fill(LinearGradient(Color.lightStart, Color.lightEnd))
                    .overlay(shape.stroke(LinearGradient(Color.lightEnd, Color.lightStart), lineWidth: 4))
                    .shadow(color: Color.lightStart, radius: 10, x: -10, y: -10)
                    .shadow(color: Color.lightEnd, radius: 10, x: 10, y: 10)
            }
        }
        
        
    }
}

struct LightButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(20)
            .contentShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
            .background(
                LightBackground(isHighlighted: configuration.isPressed, shape: RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
            )
            .foregroundColor(Color("text-buttons"))
    }
}
