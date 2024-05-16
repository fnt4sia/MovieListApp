//
//  DiscoverPage.swift
//  Project
//
//  Created by MacBook Air on 26/04/24.
//

import SwiftUI

struct DiscoverPage: View {
    var body: some View {
        ZStack {
//            AsyncImage(url: URL(string: "https://i.pinimg.com/564x/08/35/45/083545b7018769d9bea1e73e4222edae.jpg")) { phase in
//                switch phase {
//                case .success(let image):
//                    image
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//                        .edgesIgnoringSafeArea(.all)
//                case .failure:
//                    Text("Failed to load image")
//                case .empty:
//                    Text("error")
//                @unknown default:
//                    Text("error")
//                }
//            }
            Image("movie")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea(.all)
            VStack {
                Text("Discover Your Favourite Movies")
                    .padding(.horizontal, 10)
                    .padding(.bottom, 10)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 26))
                    .foregroundColor(.white)
                    .kerning(0)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                DiscoverSearch()
                    .zIndex(1)
                    .padding(.bottom, 15)
                GenreList()

            }
            .padding(25)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(.black)
            .opacity(0.825)
        }
    }
}

private struct DiscoverSearch: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("", text: $searchText, prompt: Text("Search Movies and Shows").foregroundColor(.black))
                Spacer()
                Image(systemName: "magnifyingglass")
                Image(systemName: "mic")
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 8)
            .background(.white)
            .opacity(0.9)
            .cornerRadius(16)
        }
    }
}

private struct GenreList: View {
    var body: some View {
        VStack {
            HStack {
                CardGenre(imageName: "fantasy")
                Spacer()
                CardGenre(imageName: "romance")
            }
            HStack {
                CardGenre(imageName: "drama")
                Spacer()
                CardGenre(imageName: "comedy")
            }
            HStack {
                CardGenre(imageName: "animation")
                Spacer()
                CardGenre(imageName: "horror")
            }
        }
    }
}

private struct CardGenre: View {
    let imageName : String
    
    init(imageName : String) {
        self.imageName = imageName
    }
    
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .opacity(0.6)
            Text(imageName.capitalized)
                .font(.system(size: 26, design: .monospaced))
                .foregroundColor(.white)
                .fontWeight(.semibold)

        }
        .frame(width: (UIScreen.main.bounds.width * 0.5) - 25, height: 70)
        .cornerRadius(15)
        .zIndex(-1)
    }
}

#Preview {
    DiscoverPage()
}
