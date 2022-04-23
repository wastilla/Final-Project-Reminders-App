//
//  ScheduledView.swift
//  FinalProject-Reminders-Recreation
//
//  Created by will astilla on 4/23/22.
//

import Foundation
import SwiftUI

struct ScheduledLink: View{
    var body: some View{
        NavigationLink(destination: ReminderView(), label: {
            HStack{
                VStack{
                    Image(systemName: "calendar")
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .background(.red)
                        .clipShape(Circle())
                        
                    Text("Scheduled")
                        .bold()
                        .foregroundColor(.gray)
                        .font(.system(size: 13))
                }
                .padding()
                Spacer()
                Text("0")
                    .bold()
                    .foregroundColor(.black)
                    .padding()
                    .font(.system(size: 25))
                    
            }
            .frame(width: 170, height: 100)
            .background(Color.white)
            .cornerRadius(10)
            .padding()
            
        })
    }
}
