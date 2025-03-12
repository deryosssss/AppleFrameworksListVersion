//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Derya Baglan on 12/03/2025.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    @Published var selectedFramework: Framework? {
        didSet {
            isShowingDetail = true  // ✅ Correct property
        }
    }
    
    @Published var isShowingDetail: Bool = false  // ✅ Correct property name
}

