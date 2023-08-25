//
//  CategoryDetailRow.swift
//  MovieApp
//
//  Created by Brontosaurus on 20/08/23.
//

import SwiftUI

struct CategoryDetailRow: View {
    var titleDetail : String
    
    var body: some View {
        Text(titleDetail)
            .font(.custom("Inter-Regular", size: 12))
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
            .background(CustomColor.dark4)
            .foregroundColor(CustomColor.light4)
            .cornerRadius(8)
  }
}
