//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Jainam Shah  on 11/6/20.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView : Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView.toggle()
            } label : {
                Image(systemName: "xmark")
                    .foregroundColor(.primary)
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
