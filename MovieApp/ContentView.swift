//
//  ContentView.swift
//  MovieApp
//
//  Created by Brontosaurus on 22/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            TabView (selection: $currentTab) {
                Home()
                    .tag(Tab.home)
                Text("Explore")
                    .font(.custom("Inter-Regular", size: 40))
                    .tag(Tab.explore)
                Text("Favorite")
                    .tag(Tab.favorite)
                Text("Profile")
                    .tag(Tab.profile)
            }
            CustomTabBar(currentTab: $currentTab)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
