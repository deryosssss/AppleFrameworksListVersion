//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Derya Baglan on 12/03/2025.
//

import Foundation
import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width:280, height: 45)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
