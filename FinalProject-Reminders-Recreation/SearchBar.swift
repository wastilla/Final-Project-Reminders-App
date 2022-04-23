//
//  SearchBar.swift
//  FinalProject-Reminders-Recreation
//
//  Created by will astilla on 4/19/22.
//

import Foundation
import SwiftUI

struct SearchBar: View{
    @State private var search: String = ""
    var body: some View {
        TextField("Search", text: $search)
            .padding()
          .font(Font.system(size: 15, weight: .medium))
          .background(Color(.systemGray4))
          .cornerRadius(10)
          .padding()
          .foregroundColor(Color.gray)
    }
}
