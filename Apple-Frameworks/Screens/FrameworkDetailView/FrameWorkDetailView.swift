//
//  FrameWorkDetailView.swift
//  Apple-Frameworks
//
//  Created by Jainam Shah  on 11/6/20.
//

import SwiftUI

struct FrameWorkDetailView: View {
    
    @ObservedObject var viewModel : FrameWorkDetailViewModel
    
    var body: some View {
        VStack {
            
            XDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                viewModel.isShowingSafariView.toggle()
                
            } label : {
                AFButton(title : "Learn More")
            }
        }
        .sheet(isPresented: $viewModel.isShowingSafariView, content: {
            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameWorkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorkDetailView(viewModel: FrameWorkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
            .preferredColorScheme(.dark)
    }
}
