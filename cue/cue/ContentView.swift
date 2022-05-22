//
//  ContentView.swift
//  cue
//
//  Created by Matthew on 2022/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
        HStack{
            CueFunctionPanel()
        }
        .frame(width: 1462, height: 752, alignment: .topLeading)

        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
