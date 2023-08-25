//
//  CustomTabBar.swift
//  MovieApp
//
//  Created by Brontosaurus on 22/08/23.
//

import SwiftUI

struct CustomTabBar: View {
    
    var backgroundColor = CustomColor.dark6
    @Binding var currentTab: Tab
    
    var body: some View {
        VStack {
            HStack(spacing: 0.0){
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Button {
                        withAnimation(.easeInOut) {
                            currentTab = tab
                        }
                    } label: {
                        Image(tab.rawValue)
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 28, height: 28)
                            .foregroundColor(currentTab == tab ? CustomColor.primary : CustomColor.light3)
                            .padding(.bottom)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .frame(maxWidth: .infinity)
        }
        .frame(height: 24)
        .padding(.top, 30)
        .background(backgroundColor)
    }
}



struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
