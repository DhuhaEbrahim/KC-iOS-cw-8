//
//  ContentView.swift
//  CW8
//
//  Created by dhuha kaweyani on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    let colors = [Color.blue, Color.pink, Color.green, Color.red, Color.yellow]
    @State var userText = ""
    @State var selected : Color = Color.blue
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.white.ignoresSafeArea()
                VStack(spacing: 30){
                    Spacer()
                    Text("choose your favourite color !")
                        .font(.system(size: 40, weight: .semibold, design: .serif))
                    
                    HStack{
                        ForEach(colors, id: \.self){ color in
                            Circle().fill(color)
                                .onTapGesture {
                                    selected = color
                                }
                        }
                    }.padding()
                    
                    Text("what do you want to type?").font(.system(size: 20, weight: .medium, design: .serif))
                    TextField("type here", text: $userText).padding()
                    
                    NavigationLink(destination: SeconedView(myColor: selected, myS: userText)) {
                        Text("save").padding().frame(width: 300, height: 50).background(.green).clipShape(RoundedRectangle(cornerRadius: 15)).foregroundColor(.white)
                    }
                }.padding()
            }
            .navigationTitle("My diary")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
