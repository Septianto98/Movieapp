//
//  Home.swift
//  MovieApp
//
//  Created by Brontosaurus on 19/08/23.
//

import SwiftUI

struct Home: View{
    
    @State var selected = tabs[0]
    @Namespace var animation
    @State var show = false
    @State var selectedItem : Movie = movies[0]
    
    var body: some View {
        ZStack {
            
            //background
            CustomColor.dark6
                
            
            VStack {
                ScrollView{
                    VStack {
                        //Searchbar
                        VStack {
                            CustomSearchBar()
                        }
                        .padding(.horizontal, 16)
                        
                        Spacer()
                            .frame(height: 20)
                        
                        //categorylist
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack (spacing: 8) {
                                ForEach(tabs, id:\.self){tab in
                                    CategoryRow(selected: $selected, title: tab, animation: animation)
                                }
                            }
                        }
                        .padding(.leading, 16)
                        
                        Spacer()
                           .frame(height: 20)
                        
                        //Recommended Film
                        VStack{
                            HStack{
                                Text("Recommended For You")
                                    .font(.custom("Inter-SemiBold", size: 17))
                                    .foregroundColor(CustomColor.light6)
                                
                                Spacer()
                                
                                Button {
                                    //action
                                } label: {
                                    Text("Show All")
                                        .font(.custom("Inter-Regular", size: 12))
                                        .foregroundColor(CustomColor.light4)
                                }
                            }
                            .padding(.trailing, 16)
                            
                            Spacer()
                                .frame(height: 16)
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack (spacing: 8){
                                    ForEach(movies){movie in
                                        CardMovie(movie: movie)
                                            .onTapGesture {
                                                withAnimation(.spring()){
                                                    selectedItem = movie
                                                    show.toggle()
                                                }
                                            }
                                    }
                                }
                            }
                        }
                        .padding(.leading,16)
                        
                        Spacer()
                            .frame(height: 20)
                        
                        //Popular Film
                        VStack{
                            HStack{
                                Text("Popular")
                                    .font(.custom("Inter-SemiBold", size: 17))
                                    .foregroundColor(CustomColor.light6)
                                
                                Spacer()
                            
                                Button {
                                    //action
                                } label: {
                                    Text("Show All")
                                        .font(.custom("Inter-Regular", size: 12))
                                        .foregroundColor(CustomColor.light4)
                                }
                            }
                            .padding(.trailing, 16)
                            
                            Spacer()
                                .frame(height: 16)
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack (spacing: 8){
                                    ForEach(movies){popular in
                                        CardMovie(movie: popular)
                                            .onTapGesture {
                                                withAnimation(.spring()){
                                                    selectedItem = popular
                                                    show.toggle()
                                                }
                                            }
                                    }
                                }
                            }
                        }
                        .padding(.leading, 16)
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.top, 54)
            }
            .opacity(show ? 0 : 1)
            if show {
                DetailMovieView(selectedItem: $selectedItem, show: $show, animation: animation)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all)
    }
   /*/ init(){
        for familyName in UIFont.familyNames {
            print(familyName)
            
            for fontName in UIFont.fontNames(forFamilyName: familyName){
                print("--\(fontName)")
            }
        }
    }*/
}
    
let tabs = ["All", "Action", "Adventure", "Comedy", "Drama", "Horror"]
    
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
