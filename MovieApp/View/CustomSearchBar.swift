//
//  CustomSearchBar.swift
//  MovieApp
//
//  Created by Brontosaurus on 20/08/23.
//

import SwiftUI

struct CustomSearchBar: View {
    @State var search = ""
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            TextField("Search Your Movie", text: $search)
                
            
            Image(systemName: "mic")
        }
        
        .padding(.vertical, 16)
        .padding(.horizontal, 12)
        .font(.custom("Inter-Regular", size: 16))
        .background(CustomColor.light6)
        .foregroundColor(CustomColor.dark2)
        .cornerRadius(8)
    }
}

struct CustomSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchBar()
    }
}
