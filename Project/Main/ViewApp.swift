//
//  ViewApp.swift
//  Project
//
//  Created by MacBook Air on 26/04/24.
//

import SwiftUI

struct ViewApp: View {
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBarAppearance.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        navigationBarAppearance.backgroundColor = UIColor.clear
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }
    
    var body: some View {
        NavigationView {
            TabView {
                HomePage()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                DiscoverPage()
                    .tabItem {
                        Label("Discover", systemImage: "safari.fill")
                    }
                BookmarkPage()
                    .tabItem {
                        Label("Bookmark", systemImage: "books.vertical.fill")
                    }
                ProfilePage()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
            }
            .frame(alignment: .center)
        }
    }
}

#Preview {
    ViewApp()
}
