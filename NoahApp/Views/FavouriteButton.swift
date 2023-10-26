//
//  FavouriteButton.swift
//  NoahApp
//
//  Created by Ali on 26/10/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .black : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
