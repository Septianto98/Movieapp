//
//  Cast.swift
//  MovieApp
//
//  Created by Brontosaurus on 20/08/23.
//

import SwiftUI


struct Cast: View {
    let cast : Casting
    
    var body: some View {
        VStack (alignment: .center, spacing: 4){
            Image(cast.image)
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
            
            Text(cast.name)
                .font(.custom("Inter-Regular", size: 10))
                .foregroundColor(CustomColor.light3)
            
            Text(cast.filmname)
                .font(.custom("Inter-Regular", size: 10))
                .foregroundColor(CustomColor.dark1)
        }
        .frame(width: 83, height: 96)
    }
}

struct Cast_Previews: PreviewProvider {
    static var previews: some View {
        Cast(cast: Casting(image: "cast1", name: "Eiji Akaso", filmname: "Akira Tendo"))
    }
}
