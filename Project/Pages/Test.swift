//
//  Test.swift
//  Project
//
//  Created by MacBook Air on 01/05/24.
//

import SwiftUI

struct Test: View {
    var body: some View{
        VStack {
            HStack {
                Image("drama")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .ignoresSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.1)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0)
            .background(.black)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    Test()
}
