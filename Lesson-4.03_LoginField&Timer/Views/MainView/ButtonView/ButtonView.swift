//
//  ButtonView.swift
//  Lesson-4.03_LoginField&Timer
//
//  Created by Юрий Куринной on 26.11.2023.
//

import SwiftUI

// MARK: - Button View

struct ButtonView: View {
    
    // MARK: Body
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            TitleLabelView(title: Constants.buttonTitle)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .clipShape(.buttonBorder)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 4)
        )
    }
}

// MARK: - Constants

private extension ButtonView {
    enum Constants {
        static let buttonTitle = "Start"
    }
}

#Preview {
    ButtonView()
}
