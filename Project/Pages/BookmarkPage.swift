//
//  BookmarkPage.swift
//  Project
//
//  Created by MacBook Air on 26/04/24.
//

import SwiftUI

struct BookmarkPage: View {
    var body: some View {
        VStack {
            ScrollView {
                HStack {
                    Text("Bookmark")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Image(systemName: "trash")
                        .foregroundColor(.white)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                HStack {
                    CardBookmark(imageName: "fantasy")
                    CardBookmark(imageName: "horror")
                }
                HStack {
                    CardBookmark(imageName: "comedy")
                    CardBookmark(imageName: "animation")
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(.horizontal, 30)
        .padding(.vertical, 20)
        .background(.black)
        .opacity(0.9)
    }
}

private struct CardBookmark: View {
    
    var imageName:String;
    init(imageName: String) {
        self.imageName = imageName
    }

    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
        }
        .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 200)
        .cornerRadius(16)
        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        .padding(.bottom, 10)
    }
}

#Preview {
    BookmarkPage()
}
