//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Jainam Shah  on 11/6/20.
//

import SwiftUI

struct FrameworkTitleView : View {
    
    let framework : Framework
    
    var body : some View {
        
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
                .shadow(color: .gray, radius: 5, x: 0, y: 4)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaleEffect()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
  }

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
            .environment(\.colorScheme, .light)
    }
}
