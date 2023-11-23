//
//  tabBarView.swift
//  myVanvitelli
//
//  Created by Maryam Vasilehbar on 11/20/23.
//

import SwiftUI

struct tabBarView: View {
    var body: some View {
    
            TabView {
                // Tab 1
                ContentView()
                    .tabItem {
                        Image(systemName: "house")
                            .foregroundColor(.black)
                        
                        Text("Home")
                            .accessibilityLabel("home")
                        
                    }
                
                // Tab 2
                examView2()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Exam calander")
                            .accessibilityLabel("Exam calendar")
                    }
              
                // Tab 3
                examView()
                    .bold()
                    .tabItem {
                        Image(systemName: "doc.questionmark")
                        Text("Exam board")
                            .accessibilityLabel("exam board")
                    }
                 
                // Tab 4
                Text("Fourth Tab")
                    .tabItem {
                        Image(systemName: "calendar.badge.clock")
                        Text("Agenda")
                            .accessibilityLabel("agenda")
                    }
            
                    .badge(1) // Badge for the fourth tab
            }
            
        }
 
}

#Preview {
    tabBarView()
}
