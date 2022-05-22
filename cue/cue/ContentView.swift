//
//  ContentView.swift
//  cue
//
//  Created by Matthew on 2022/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            CueFunctionPanel()
            HStack{
                SerialPortParaAll()
                    .frame( height: 700,alignment: .topLeading)
                LogCollectPanel()
            }.frame(width: 1050, height: 700, alignment: .topLeading)
        }
        .frame(width: 1462, height: 752, alignment: .topLeading)
        .padding(EdgeInsets(top: 10,leading: 14, bottom: 0, trailing: 10))
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
