//
//  DetailMovieView.swift
//  MovieApp
//
//  Created by Brontosaurus on 20/08/23.
//

import SwiftUI



struct DetailMovieView: View {
    let theCast = [
        Casting(image: "cast1", name: "Eiji Akaso", filmname: "Akira Tendo"),
        Casting(image: "cast2", name: "Mai Shiraisi", filmname: "Shizuka Mikazuki"),
        Casting(image: "cast3", name: "Shuntaro Yanagi", filmname: "Kenichiro Ryuzaki"),
        Casting(image: "cast4", name: "Kazuki Kitamura", filmname: "Gonzo Kosugi"),
        Casting(image: "cast5", name: "Miwako Kakei", filmname: "")
    ]
    
    @State private var categories2 = [
        "Action",
        "Comedy",
        "Horror",
        "Supernatural",
        "Suspense"
    ]
    var bgoverlay = [Color("dark6").opacity(0), Color("dark6"),
                     Color("dark6"), Color("dark6")]
    
  
    @Binding var selectedItem: Movie
    @Binding var show: Bool
    var animation: Namespace.ID
    
    var body: some View {
        ZStack {
            //background
            CustomColor.dark6

            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    Image(selectedItem.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 390, height: 380, alignment: .top)
                        .clipped()
                        .mask (
                            LinearGradient(gradient: Gradient(colors: [Color.black,Color.black,Color.black, Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom))
                        .matchedGeometryEffect(id: "image\(selectedItem.image)", in: animation)
                        .overlay(
                                Button(action: {
                                    withAnimation(.spring())
                                    {show.toggle()}
                                }, label: {
                                    Image(systemName: "chevron.left")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 16, height: 16)
                                        .clipped()
                                        .foregroundColor(CustomColor.light6)
                                        .background(
                                            Rectangle()
                                                .frame(width: 32, height: 32)
                                                .foregroundColor(CustomColor.dark6.opacity(0.5))
                                                .cornerRadius(8)
                                        )
                                })
                                .padding(.trailing, 330)
                                .padding(.bottom, 250)
                            )
                        .padding(.bottom, 20)
                    
                    
                    VStack(spacing: 0.0){
                        HStack {
                            Text(selectedItem.title)
                                .font(.custom("Inter-Semibold", size: 17))
                                .foregroundColor(CustomColor.light6)
                            
                            Spacer()
                            
                            Button {
                                //action
                                
                            } label: {
                                Image(systemName:"bookmark")
                                    .font(.system(size: 20))
                                    .foregroundColor(CustomColor.light6)
                            }
                        }
                        .padding(.horizontal, 16)
                        
                        Spacer()
                            .frame(height: 20)
                        
                        HStack (spacing: 27){
                            //rating
                            VStack (alignment: .center, spacing: 4){
                                Text("Rating")
                                    .font(.custom("Inter-Medium", size: 13))
                                    .foregroundColor(CustomColor.light4)
                                
                                Text(selectedItem.rating)
                                    .font(.custom("Inter-Regular", size: 12))
                                    .foregroundColor(CustomColor.dark2)
                            }
                            //relesasedate
                            VStack (alignment: .center, spacing: 4){
                                Text("Release Date")
                                    .font(.custom("Inter-Medium", size: 13))
                                    .foregroundColor(CustomColor.light4)
                                
                                Text(selectedItem.releasedate)
                                    .font(.custom("Inter-Regular", size: 12))
                                    .foregroundColor(CustomColor.dark2)
                            }
                            //Runningtime
                            VStack (alignment: .center, spacing: 4){
                                Text("Running Time")
                                    .font(.custom("Inter-Medium", size: 13))
                                    .foregroundColor(CustomColor.light4)
                                
                                Text(selectedItem.runningtime)
                                    .font(.custom("Inter-Regular", size: 12))
                                    .foregroundColor(CustomColor.dark2)
                            }
                            
                            //reviews
                            VStack (alignment: .center, spacing: 4){
                                HStack (spacing: 4){
                                    Image(systemName: "star.fill")
                                        .font(.system(size: 13))
                                        .foregroundColor(Color.orange)
                                    Text(selectedItem.review)
                                        .font(.custom("Inter-Medium", size: 13))
                                        .foregroundColor(Color.orange)
                                }
                                Text("107 Reviews")
                                    .font(.custom("Inter-Regular", size: 12))
                                    .foregroundColor(CustomColor.dark2)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding(0)
                        
                        Spacer()
                            .frame(height: 16)
                        
                        //category
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack (spacing: 8) {
                                ForEach(categories2, id: \.self){ category in
                                    CategoryDetailRow(titleDetail: category)
                                }
                            }
                            .padding(.leading, 16)
                        }
                        
                        Spacer().frame(height: 16)
                        
                        VStack (alignment: .leading, spacing: 8){
                            Text("Synopsis")
                                .font(.custom("Inter-SemiBold", size: 13))
                                .foregroundColor(CustomColor.light4)
                            
                            Text("Akira Tendo, a 24-year-old office worker of ZLM, discovers himself trapped in a routine and meaningless life. He lacks drive and motivation since he is disenchanted with his career, however, when a zombie apocalypse caused by experimental bio weaponry unexpectedly strikes Tokyo, everything is turned upside down.")
                                .font(.custom("Inter-Regular", size: 12))
                                .foregroundColor(CustomColor.dark2)
                                .lineLimit(5)
                        }
                        .padding(.horizontal, 16)
                        
                        Spacer()
                            .frame(height: 16)
                        
                        VStack(alignment: .leading, spacing: 8){
                            Text("The Cast")
                                .font(.custom("Inter-SemiBold", size: 13))
                                .foregroundColor(CustomColor.light4)
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack (spacing: 8) {
                                    ForEach(theCast){ casting in
                                        Cast(cast: casting)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal, 16)
                        
                        VStack (alignment: .center){
                            Button {
                                
                            } label: {
                                Text("Play Movie")
                                    .font(.custom("Inter-Bold", size: 17))
                                    .padding(.vertical, 16)
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(CustomColor.light6)
                                    .background(CustomColor.primary)
                                    .cornerRadius(8)
                                    .shadow(color: Color .black .opacity (0.7), radius: 5, y: -5)
                                    .padding(.bottom, 30)
                            }
                            .padding(.horizontal, 16)
                        }
                    }
                }
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    
    }
}

    
struct DetailMovieView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
   }
}
