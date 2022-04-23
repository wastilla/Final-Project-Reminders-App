//
//  ContentView.swift
//  FinalProject-Reminders-Recreation
//
//  Created by will astilla on 4/3/22.
//

import SwiftUI


struct ContentView: View {
    @State private var search: String = ""
    var body: some View {
        NavigationView{
            VStack{
                SearchBar()
                HStack{
                    todayLink()
                    ScheduledLink()
                }
                NavigationLink(destination: ReminderView(), label: {
                    HStack{
                        VStack{
                            Image(systemName: "calendar")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(.gray)
                                .clipShape(Circle())
                                
                            Text("All")
                                .bold()
                                .foregroundColor(.gray)
                                .font(.system(size: 13))
                        }
                        .padding()
                        Spacer()
                        Text(String("0"))
                            .bold()
                            .foregroundColor(.black)
                            .padding()
                            .font(.system(size: 25))
                            
                    }
                    .frame(width: 380, height: 75)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()
                    
                })
                VStack(alignment: .leading, spacing: 0){
                    HStack{
                        Text("My Lists")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .padding(.leading)
                        Spacer()
                        Button{
                            
                        } label: {
                            Text("UPGRADE")
                                .font(.system(size: 12, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .padding(5)
                        }
                        .background(.blue)
                        .cornerRadius(20)
                        .padding(.trailing)
                            
                    }
                    List{
                        NavigationLink(destination: ReminderView(), label: {
                            HStack{
                                Image(systemName: "list.bullet")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.blue)
                                    .clipShape(Circle())
                                    
                                Text("Reminders")
                                    .font(.system(size: 15))
                            }
                        })
                        
                        NavigationLink(destination: ReminderView(), label: {
                            HStack{
                                Image(systemName: "list.bullet")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.yellow)
                                    .clipShape(Circle())
                                    
                                Text("To-Do")
                                    .font(.system(size: 16))
                            }
                        })
                        
                        NavigationLink(destination: ReminderView(), label: {
                            HStack{
                                Image(systemName: "list.bullet")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30)
                                    .background(.green)
                                    .clipShape(Circle())
                                    
                                Text("Homework")
                                    .font(.system(size: 15))
                            }
                        })
                    }

                    
                }
            }
            .toolbar{
                ToolbarItem(placement: .bottomBar){
                    Button{
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                        Text("New Reminder")
                            .fontWeight(.bold)
                    }
                }
                ToolbarItem(placement: .bottomBar){
                    Button("Add List") {
                       
                    }
                    
                }
            }
            .background(Color(.systemGray6))
            .navigationBarHidden(true)
        }
        
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            ContentView()
        }
        
    }
}
