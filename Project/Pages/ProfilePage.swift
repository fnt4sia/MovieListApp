//
//  ProfilePage.swift
//  Project
//
//  Created by MacBook Air on 26/04/24.
//

import SwiftUI

struct ProfilePage: View {
    @State var togglePicker = false;
    @State var selectedColor = "red";
    var body: some View {
        VStack {
            ZStack {
                Image("fantasy")
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.9)
                ZStack {
                    Image("animation")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: 125, height: 125)
                .background(.blue)
                .cornerRadius(100)
                .position(x: 70, y: UIScreen.main.bounds.height * 0.35)
                .padding(.horizontal, 20)
                .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                Button(action: {
    
                  }) {
                      Text("Edit Profile")
                          .font(.system(size: 16))
                          .padding(.horizontal, 15)
                          .padding(.vertical, 10)
                          .background(Color.blue)
                          .foregroundColor(.white)
                          .cornerRadius(10)
                  }
                  .position(x: UIScreen.main.bounds.width - 70, y: UIScreen.main.bounds.height * 0.35 + 40)
            }
            .frame(width: UIScreen.main.bounds.width, height: 300)
            .background(.black)
            .padding(.bottom, 65)
            HStack {
                Text("Fitra Ramadhan")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 20)
            .frame(width: UIScreen.main.bounds.width, alignment: .leading)
            HStack {
                Text("75 Followers")
                    .foregroundColor(.white)
                    .padding(.trailing, 5)
                Text("50 Following")
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 20)
            .frame(width: UIScreen.main.bounds.width, alignment: .leading)
            Button (action: {
                togglePicker.toggle()
            }){
                Text("Change Colour Theme")
                    .foregroundColor(.white)
                    .padding(10)
            }
            .frame(width: UIScreen.main.bounds.width - 25)
            .background(.blue)
            .cornerRadius(10)
            
            if(togglePicker) {
                Picker(selection: $selectedColor, label: Text("")) {
                    Text("Red").tag(Color.red).foregroundColor(.white)
                    Text("Green").tag(Color.green).foregroundColor(.white)
                    Text("Blue").tag(Color.blue).foregroundColor(.white)
                }
                .pickerStyle(WheelPickerStyle())
                .padding()
                .background(.black)
          
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .topLeading)
        .background(.black)
        .opacity(0.9)
    }
}

#Preview {
    ProfilePage()
}


