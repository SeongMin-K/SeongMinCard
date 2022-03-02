//
//  ContentView.swift
//  SeongMinCard
//
//  Created by SeongMinK on 2022/03/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Shark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(Color.cyan, lineWidth: 5)
                    }
                Text("Seongmin Kim")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+82 10 4529 2274", imageName: "phone.fill")
                InfoView(text: "eo1tks3@naver.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
