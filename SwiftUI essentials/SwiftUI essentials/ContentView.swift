//
//  ContentView.swift
//  SwiftUI essentials
//
//  Created by savio sailas on 12/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .frame(width: 350)
                .offset(y: -150)
                .padding(.bottom, -150)
            VStack(spacing: CGFloat.zero) {
                VStack(alignment: .leading) {
                    Text("Turtle rock")
                        .font(.title)
                        .foregroundStyle(FirstDayStyle())
                    HStack {
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                        Spacer()
                        Text("California")
                            .font(.subheadline)
                    }
                    
                }
                .padding()
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}


struct FirstDayStyle: ShapeStyle {
    func resolve(in environment: EnvironmentValues) -> Color {
        switch environment.colorScheme {
        case .dark:
            return Color.white //.blendMode(.darken)
        case .light:
            return Color.black //.blendMode(.darken)
        @unknown default:
            return Color.black //.blendMode(.darken)
        }
    }
}
