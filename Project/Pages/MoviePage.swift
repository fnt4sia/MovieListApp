//
//  MoviePage.swift
//  Project
//
//  Created by MacBook Air on 29/04/24.
//

import SwiftUI

struct MoviePage: View {
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                ZStack {
                    Image("fantasy")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5)
                }
                .background(Color.white)
                .cornerRadius(25)
                .padding(.bottom, 10)
                VStack (alignment: .leading) {
                    Text("rise of guardians".uppercased())
                        .font(.system(size: 24, design: .serif))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .tracking(2)
                    HStack {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 25,height: 25)
                            .foregroundColor(.yellow)
                        Text("9.8 / 10")
                            .foregroundColor(.white)
                    }
                    Text("24 January 2024")
                        .font(.system(size: 16, design: .monospaced))
                        .foregroundColor(.white)
                    Text("Action / Adventure . 2h 13m")
                        .font(.system(size: 16, design: .monospaced))
                        .foregroundColor(.white)
                        .padding(.bottom, 5)
                    ScrollView(.horizontal) {
                        HStack (spacing: 15){
                            HStack {
                                Image("netflix")
                                    .resizable()
                                    .frame(width: 50, height: 30)
                                Text("N / A")
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(.gray)
                            .cornerRadius(5)
                            HStack {
                                Image("imdb")
                                    .resizable()
                                    .frame(width: 50, height: 30)
                                Text("N / A")
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(.gray)
                            .cornerRadius(5)
                            HStack {
                                Image("prime")
                                    .resizable()
                                    .frame(width: 50, height: 30)
                                Text("N / A")
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(.gray)
                            .cornerRadius(5)
                        }
                        .padding(.bottom, 10)
                    }
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                        .font(.caption)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.horizontal, 20)
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.black)
        .opacity(0.9)
        .ignoresSafeArea(.all)
        .accentColor(.white)
    }
}

#Preview {
    MoviePage()
}
