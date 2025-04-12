//
//  ContentView.swift
//  SwiftUI essentials
//
//  Created by savio sailas on 12/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: CGFloat.zero) {
            HStack(alignment: .center) {
                Spacer()
                    .frame(maxWidth: .infinity)
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
