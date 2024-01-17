//
//  Tab.swift
//  Navigation
//
//  Created by Luciana Lemos on 15/01/24.
//

import SwiftUI

struct Tab: View {
    var body: some View {
        TabView {
            NavigationStack {
                ContentView()
                    .background(.gray.opacity(0.4))
                    .ignoresSafeArea()
            }
            .tabItem {
                Image(systemName: "mic")
                Text("Content View")
            }
            .toolbarBackground(.indigo, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme(.dark, for: .tabBar)
            
            NavigationStack {
                SecondScreen()
                    .background(.gray.opacity(0.4))
                    .ignoresSafeArea()
            }
            .tabItem {
                Image(systemName: "pencil.and.scribble")
                Text("Second Screen")
            }
            .toolbarBackground(.indigo, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme(.dark, for: .tabBar)
        }
    }
}

#Preview {
    Tab()
}
