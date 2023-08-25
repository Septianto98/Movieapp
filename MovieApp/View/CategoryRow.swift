//
//  CategoryRow.swift
//  MovieApp
//
//  Created by Brontosaurus on 20/08/23.
//

import SwiftUI

struct CategoryRow: View {
    @Binding var selected: String
    var title: String
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){selected = title}
        }) {
            Text(title)
                .font(.custom("Inter-Regular", size: 13))
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .background(selected == title ? CustomColor.primary : CustomColor.dark4) //Color("primary") : Color("dark1"))
                .foregroundColor(selected == title ? CustomColor.light6 : CustomColor.light4)//selected == title ? Color("light6") : Color("light4"))
                .cornerRadius(8)
                .background(
                    ZStack{
                        if selected == title{
                            CustomColor.primary
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "Tab", in: animation)
                            
                        }
                    }
                )
        }
    }
}

