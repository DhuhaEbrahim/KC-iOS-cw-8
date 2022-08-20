//
//  SeconedView.swift
//  CW8
//
//  Created by dhuha kaweyani on 20/08/2022.
//

import SwiftUI

struct SeconedView: View {
    let myColor : Color
    let myS : String
    var body: some View {
        ZStack{
            myColor.ignoresSafeArea()
            VStack{
                Text(myS).font(.system(size: 50, weight: .heavy, design: .serif))
            }
        }
    }
}

struct SeconedView_Previews: PreviewProvider {
    static var previews: some View {
        SeconedView(myColor: Color.white, myS: "hello") //to view how it will look like
    }
}
