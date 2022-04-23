//
//  ReminderView.swift
//  FinalProject-Reminders-Recreation
//
//  Created by will astilla on 4/18/22.
//
import SwiftUI
import Foundation


struct ReminderView: View {
    @State private var reminders = [Reminder]()
    @State private var multiSelection = Set<UUID>()
    @State private var showSheet: Bool = false
    @State private var currentIndex: Int = -1
    @State private var ReminderName: String = "Reminder"
    @State private var note: String = ""
    @State private var dateOn = false
    @State private var timeOn = false
    @FocusState private var amountIsFocused: Bool
    var body: some View {
        
        List($reminders){ $reminder in
            HStack{
                Button{
                    reminder.complete.toggle()
                } label: {
                    if(reminder.complete){
                        Image(systemName: "circle.fill")
                    } else {
                        Image(systemName: "circle.fill")
                    }
                }
                .background(reminder.complete ? Color.white : Color.blue)
                .opacity(reminder.complete ? 1.0 : 0.0)
                .overlay(
                    Circle()
                        .stroke(reminder.complete ? Color.blue : Color.black, lineWidth: 4)
                )
                .clipShape(Circle())
                .animation(.easeInOut, value: reminder.complete )
                
                TextField("", text: $reminder.name)
                    .foregroundColor(reminder.complete ? Color.gray : Color.black)
                    .focused($amountIsFocused)
                
                if(amountIsFocused){
                    Button{
                        showSheet.toggle()
                    } label: {
                        Image(systemName: "info.circle")
                    }
                    
                }
                
                
            }
            
        }
        .navigationTitle("Reminders")
        .toolbar {
            ToolbarItem(placement: .bottomBar){
                Button("+ Add Item") {
                    withAnimation{
                        self.addReminder()
                    }
                }
                .sheet(isPresented: $showSheet) {
                    NavigationView{
                        List{
                            Section{
                                TextField("", text: $ReminderName)
                                TextField("Notes", text: $note)
                            }
                            Section{
                                HStack{
                                    Image(systemName: "calendar")
                                        .foregroundColor(.white)
                                        .frame(width: 30, height: 30)
                                        .background(.red)
                                        .cornerRadius(10)
                                    Toggle("Date", isOn: $dateOn)
                                }
                                HStack{
                                    Image(systemName: "clock")
                                        .foregroundColor(.white)
                                        .frame(width: 30, height: 30)
                                        .background(.blue)
                                        .cornerRadius(10)
                                    Toggle("Time", isOn: $timeOn)
                                }
                                
                            }
                        }
                        .toolbar{
                            ToolbarItem(placement: .navigationBarLeading){
                                Button("Cancel"){
                                    showSheet = false
                                }
                            }
                            ToolbarItem(placement: .principal) {
                                HStack {
                                    Text("Details").font(.headline)
                                }
                            }
                            ToolbarItem(placement: .navigationBarTrailing){
                                Button("Done"){
                                    showSheet = false
                                }
                            }
                        }
                    }
                    
                }
            }
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    amountIsFocused = false
                }
            }
            
        }
        
    }

    private func addReminder(){
        self.reminders.append(Reminder(name: ""))
    }

}


