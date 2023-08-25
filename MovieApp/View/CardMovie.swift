//
//  CardMovie.swift
//  MovieApp
//
//  Created by Brontosaurus on 19/08/23.
//

import SwiftUI

struct CardMovie: View {
    var movie : Movie
    @Namespace var animation
    
    var body: some View {
            VStack (alignment: .leading) {
                Image(movie.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 170)
                    .overlay(Color.black.opacity(0.2))
                    .clipped()
                    .matchedGeometryEffect(id: "image\(movie.image)", in: animation)
                Spacer()
                    .frame(height: 12)
                
                VStack (alignment: .leading, spacing: 4){
                    Text(movie.title)
                        .font(.custom("Inter-SemiBold", size: 13))
                        .foregroundColor(CustomColor.light6)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                    
                    Text(movie.category)
                        .font(.custom("Inter-Regular", size: 11))
                        .foregroundColor(CustomColor.light1)
                        .lineLimit(1)
                    
                    HStack{
                        Text(movie.rating)
                            .font(.custom("Inter-Regular", size: 11))
                            .foregroundColor(CustomColor.light4)
                            .background(CustomColor.dark4)
                        
                        HStack (spacing: 4){
                            Image(systemName: "star.fill")
                                .font(.system(size:12))
                                .foregroundColor(Color.orange)
                            
                            Text(movie.review)
                                .font(.custom("Inter-Regular", size: 11))
                                .foregroundColor(Color.orange)
                        }
                    }
                }
                .padding(.horizontal, 8)
                Spacer()
            }
            .frame(width: 150, height: 268)
            .background(CustomColor.dark5)
            .cornerRadius(8)
        }
        
    }


struct CardMovie_Previews: PreviewProvider {
    static var previews: some View {
        CardMovie(movie: movies[0])
    }
}

