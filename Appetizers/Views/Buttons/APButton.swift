//
//  APButton.swift
//  Appetizers
//
//  Created by Kvng Eko on 2/10/23.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(Color.brandPrimary)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}


struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "test title")
    }
}
