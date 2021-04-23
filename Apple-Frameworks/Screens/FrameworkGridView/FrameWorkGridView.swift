//
//  FrameWorkGridView.swift
//  Apple-Frameworks
//
//  Created by Jainam Shah  on 11/6/20.
//

import SwiftUI

struct FrameWorkGridView: View {
    
    @StateObject var viemModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viemModel.columns){
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viemModel.selctedFramework = framework
                            }
                    }
            }
        }
            .navigationTitle(Text("🍎 Frameworks").font(.largeTitle))
            .sheet(isPresented: $viemModel.isShowingDetailView) {
                FrameWorkDetailView(viewModel: FrameWorkDetailViewModel(framework: viemModel.selctedFramework!,
                                                                        isShowingDetailView: $viemModel.isShowingDetailView))
            }
    }
  }
}

struct FrameWorkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorkGridView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
  }




