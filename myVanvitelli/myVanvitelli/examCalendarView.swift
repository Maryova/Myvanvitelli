//
//  examCalendar.swift
//  myVanvitelli
//
//  Created by Maryam Vasilehbar on 11/22/23.
//

import SwiftUI

struct examView2: View {
@State private var ExamCalendar = 0

    var body: some View {
        VStack {
            Picker("What is your favorite color?", selection: $ExamCalendar) {
                Text("BOOKABLE").tag(1)
                Text("BOOKED").tag(2)
                
            }
            .pickerStyle(.segmented)
            .padding()
            
            if ExamCalendar == 1 {
                            TestView()
                        } else if ExamCalendar == 2 {
                            TestView3()
                        }
        }
        Spacer()
    }
}
#Preview {
    examView2()
}

