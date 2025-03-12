//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Derya Baglan on 12/03/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetail: Bool
    @Environment(\.openURL) var openURL  // 🔹 Use SwiftUI's built-in openURL

    var body: some View {
        VStack(spacing: 20) {
            // Close Button (X) at the Top Right
            HStack {
                Spacer()
                Button(action: {
                    isShowingDetail = false
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                }
                .padding()
            }
            
            // Framework Image
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            // Framework Name
            Text(framework.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // Framework Description
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            // Learn More Button - Opens Safari
            Button(action: {
                if let url = URL(string: framework.urlString) {
                    openURL(url)  // ✅ Uses SwiftUI's openURL function
                }
            }) {
                Text("Learn More")
                    .font(.headline)
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 20)
        }
        .padding()
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetail: .constant(true))
}
