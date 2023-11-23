//
//  personBotton.swift
//  myVanvitelli
//
//  Created by Maryam Vasilehbar on 11/22/23.
//

import SwiftUI

struct personBotton: View {
    var body: some View {
        NavigationView {
            VStack {
                // Your content here

                NavigationLink(destination: ListContentView()) {
                    Text("Show List")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("Main View")
        }
    }
}

struct ListContentView: View {
    var body: some View {
        List {
            Text("Item 1")
            Text("Item 2")
            Text("Item 3")
            // Add more list items as needed
        }
        .navigationBarTitle("List View")
    }
}


#Preview {
    personBotton()
}
