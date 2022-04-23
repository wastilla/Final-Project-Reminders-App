//
//  TodayLink.swift
//  FinalProject-Reminders-Recreation
//
//  Created by will astilla on 4/21/22.
//

import Foundation
import SwiftUI

struct todayLink: View{
    var body: some View{
        NavigationLink(destination: ReminderView(), label: {
            HStack{
                VStack{
                    Image(systemName: "21.square")
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .background(.blue)
                        .clipShape(Circle())
                        
                    Text("Today")
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
