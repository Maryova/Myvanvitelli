//
//  examView.swift
//  myVanvitelli
//
//  Created by Maryam Vasilehbar on 11/20/23.
//

import SwiftUI

struct examView: View {
    var body: some View {
        NavigationStack {
            VStack{
                
                Spacer()
                Text("NO EXAM FOUND")
                    .font(.system(size:22))
                Spacer()
            }
            .navigationBarTitle("Exam board", displayMode: .inline)
            .padding()
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }){
                        Image(systemName: "person.fill")
                            .foregroundStyle(.pink)
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        
                    }){
                        
                        
                    }
                    
                }
                
            }
        }
    }
}
        

#Preview {
    examView()
}
