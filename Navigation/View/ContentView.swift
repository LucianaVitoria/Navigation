//
//  ContentView.swift
//  Navigation
//
//  Created by Luciana Lemos on 15/01/24.
//

import SwiftUI

struct ContentView: View {
    @State var sheet: Bool = false
    
    var body: some View {
        VStack {
            Button {
                sheet.toggle()
            } label: {
                Text("Abrir sheet")
                    .font(.title)
                    .foregroundStyle(.red)
            }
            .sheet(isPresented: $sheet) {
                Sheet()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
