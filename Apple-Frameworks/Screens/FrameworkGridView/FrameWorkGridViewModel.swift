//
//  FrameWorkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Jainam Shah  on 11/6/20.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
    var selctedFramework : Framework? {
        didSet { isShowingDetailView.toggle() }
    }
    @Published var isShowingDetailView = false
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())
                                ]
}
