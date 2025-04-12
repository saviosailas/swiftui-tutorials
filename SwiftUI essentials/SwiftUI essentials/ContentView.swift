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
            
            VStack(alignment: .leading) {
                Text("Turtle rock")
                    .font(.title)
                    .foregroundStyle(FirstDayStyle())
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About turtle rock")
                    .font(.title2)
                Text("Butterflies are winged insects from the lepidopteran superfamily Papilionoidea, characterized by large, often brightly coloured wings that often fold together when at rest, and a conspicuous, fluttering flight. The oldest butterfly fossils have been dated to the Paleocene, about 56 million years ago, though molecular evidence suggests that they likely originated in the Cretaceous.")
                    .font(.body)
            }
            .padding()
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
