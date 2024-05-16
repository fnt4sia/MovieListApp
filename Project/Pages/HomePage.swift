//
//  ContentView.swift
//  Project
//
//  Created by MacBook Air on 26/04/24.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack{
            ScrollView(.vertical){
                SearchBar()
                    .zIndex(1)
                    .padding(.bottom,10)
                RecomTab()
                    .padding(.bottom,20)
                CategoryRow()
                    .padding(.bottom,20)
                CategoryRow()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        .background(.black).opacity(0.9)
    }
}

private struct SearchBar: View {
    @State private var searchText = ""
    var body: some View {
        HStack {
            TextField("", text: $searchText, prompt: Text("Search Movies and Shows").foregroundColor(.gray))
            Spacer()
            Image(systemName: "magnifyingglass")
            Image(systemName: "mic")
        }
        .padding(EdgeInsets(top: 10,  leading: 15, bottom: 10, trailing: 15))
        .border(.black)
        .foregroundColor(.white)
        .background(.black)
        .cornerRadius(10)
    }
}

private struct RecomTab: View {
    var images = [
        "fantasy",
        "animation",
        "drama",
        "horror",
        "comedy"
    ]
    
    @State var currentIndex = 0;
    
    var body: some View {
        ZStack {
            ScrollView (.horizontal){
                HStack (spacing: 20){
                    ForEach(images, id: \.self) { imageName in
                        ZStack {
                            Image(imageName)
                                .resizable()
                                .opacity(0.6)
                                .frame(width: UIScreen.main.bounds.width - 40, height: 325)
                                .cornerRadius(20)
                            VStack (alignment: .leading, spacing: 0){
                                HStack {
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text("9.8")
                                        .foregroundColor(.white)
                                }
                                Text("ZooTopia")
                                    .font(.system(size: 26, design: .monospaced))
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .lineLimit(2)

                                Text("Action | Adventure")
                                    .font(.system(size: 16, design: .serif))
                                    .foregroundColor(.white)
                                    .lineLimit(1)
                            }
                            .padding(15)
                            .frame(width: UIScreen.main.bounds.width - 40 ,alignment: .leading)
                            .offset(x: 0, y: 70)
                        }
                        .frame(width: UIScreen.main.bounds.width - 40, height: 325, alignment: .leading)
                        .cornerRadius(20)
                    }
                }
                .frame(alignment: .topLeading)
                .background(.clear)
                .cornerRadius(20)
                .animation(.easeOut(duration: 0.5), value: currentIndex)
                .offset(x: -CGFloat(currentIndex) * (UIScreen.main.bounds.width - 20), y: 0)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
                        currentIndex = (currentIndex + 1) % images.count
                    }
                }
            }
            .scrollDisabled(true)
            HStack {
                ForEach(0 ... 4, id: \.self) { i in
                    if i == currentIndex % images.count {
                        Image(systemName: "dot.square.fill")
                            .foregroundColor(.white)
                    }else {
                        Image(systemName: "dot.square")
                            .foregroundColor(.white)
                    }

                }
            }
            .offset(x : UIScreen.main.bounds.width * 0.25, y : 140)
        }
    }
}

private struct CategoryRow: View {
    var body: some View {
        VStack {
            HStack {
                Text("Popular Movies")
                    .font(.system(size: 20, design: .monospaced))
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .kerning(0)
                Spacer()
                Text("View All")
                    .font(.system(size: 16, design: .rounded))
                    .foregroundColor(.gray)
                    .fontWeight(.light)
                    .kerning(2)
            }
            .padding(.bottom, 10)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<3) { index in
                        CardMovie()
                    }
                }
            }
        }
    }
}

private struct CardMovie: View {
    var body: some View {
        NavigationLink (destination: MoviePage()){
            ZStack {
                Image("fantasy")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .opacity(0.8)
                Text("Beauty and The Beast")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .frame(width: 250, alignment: .leading)
                    .offset(CGSize(width: 10, height: 55))
                    .lineLimit(2)
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("9.8")
                        .foregroundColor(.yellow)
                }
                .frame(width: 250, alignment: .leading)
                .offset(CGSize(width: 10, height: -55))
                    
            }
            .frame(width: 250, height: 150)
            .cornerRadius(15)
        }
    }
}

#Preview {
    HomePage()
}
