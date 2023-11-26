//
//  MainTextView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import SwiftUI

// MARK:  - MainTextView

struct MainTextView: View {
    
    // MARK: - Wrapped properties
    
    var text: String
    
    
    // MARK: - Body
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding(.top, 100)
    }
}


// MARK: - Preview

#Preview {
    MainTextView(text: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
}
