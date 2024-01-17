//
//  Sheet.swift
//  Navigation
//
//  Created by Luciana Lemos on 15/01/24.
//

import SwiftUI

struct Sheet: View {
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                
                Spacer()
                
                Button {
                    self.dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: width * 0.1, height: height * 0.048)
                        .foregroundColor(.gray)
            }
            }
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    Sheet()
}
