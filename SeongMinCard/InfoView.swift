//
//  InfoView.swift
//  SeongMinCard
//
//  Created by SeongMinK on 2022/03/02.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+82 10 4529 2274", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
