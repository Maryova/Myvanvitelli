//
//  ContentView.swift
//  myVanvitelli
//
//  Created by Maryam Vasilehbar on 11/19/23.
//
import SwiftUI

struct ContentView: View {
    
    
    let gridData = [
        [
            (image: "person.text.rectangle", name: "Attendances tracking" ),
            (image: "book.pages", name: "Transcript"),
            (image: "pencil.and.list.clipboard", name: "Dashboard")],
        [(image: "questionmark.diamond", name: "Quasrionnaires"),
         (image: "eurosign.square", name: "Payment"),
         (image: "envelope", name: "Inbox")],
        [(image: "newspaper", name: "Feed"),
         (image: "building.columns", name: "University"),
         (image: "link", name: "Links")]
        
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                ForEach(0..<gridData.count) { row in
                    HStack {
                        ForEach(0..<self.gridData[row].count) { column in
                            VStack{
                                Image(systemName: self.gridData[row][column].image)
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .foregroundStyle(.pink)
                                
                                Text(self.gridData[row][column].name)
                                    .font(.system(size: 13))
                            }
                            .frame(width:100,height:100)
                            .border(Color.gray, width: 0.5)
                            .cornerRadius(10)
                            
                        }
                        .background(Color(red: 0.92, green: 0.91, blue: 0.91).opacity(0.57))
                        .shadow(color: .gray.opacity(0.25), radius: 2, x: 0, y: 4)
                        .cornerRadius(12)
                        
                    }
                    
                }
            }
            .padding()
            .navigationTitle("")
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
                        Image(systemName: "gearshape")
                            .foregroundStyle(.pink)
                            .accessibilityLabel("setting")
                    }
                }
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
