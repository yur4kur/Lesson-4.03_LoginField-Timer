//
//  LabelForButtonView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import SwiftUI

// MARK: - LabelForButtonView

struct DraftButtonLabelView: View {
    
    // MARK: - Public properties
    
    let title: String
    
    
    // MARK: - Body
    
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(.white)
    }
}


// MARK: - Preview


#Preview {
    DraftButtonLabelView(title: "Welcome")
}
