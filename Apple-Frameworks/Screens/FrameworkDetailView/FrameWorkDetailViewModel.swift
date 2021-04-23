//
//  FrameWorkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Jainam  Shah  on 1/10/21.
//

import SwiftUI

final class FrameWorkDetailViewModel : ObservableObject {
    
    let framework : Framework
    var isShowingDetailView : Binding<Bool>
    @Published var isShowingSafariView = false
    
    init(framework:Framework,isShowingDetailView: Binding<Bool>){
        self.framework = framework
        self .isShowingDetailView = isShowingDetailView
    }
}
