import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject private var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetail: $viewModel.isShowingDetail)) { FrameworkTitleView(framework: framework)
                    }
                }
            }
        }
        .navigationTitle("🍏 Frameworks")
            if let selectedFramework = viewModel.selectedFramework {
                FrameworkDetailView(framework: selectedFramework, isShowingDetail: $viewModel.isShowingDetail) // ✅ Corrected binding
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.medium)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
        
    }
}
