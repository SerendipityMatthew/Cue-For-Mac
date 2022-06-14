//
//  LogKeywordRow.swift
//  cue
//
//  Created by Matthew on 2022/6/9.
//

import SwiftUI

struct LogKeywordRow: View {
    @State private var isIgnoreCap = true
    @State private var isIgnoreSpace = true
    @State private var isEffected = true

    var body: some View {
        HStack(alignment: VerticalAlignment.center){
       
            Group(){
                Text("SSID")
                
            }.frame(width: 150, height: 30)
                .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.8))
            Group(){
                Toggle("", isOn: $isIgnoreCap)

            }.frame(width: 150, height: 30)
                .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.8))
            Group(){
                Toggle("", isOn: $isEffected)

            }.frame(width: 150, height: 30)
                .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.8))
            Group(){
                Toggle("", isOn: $isIgnoreSpace)

            }.frame(width: 150, height: 30)
                .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.8))
            Group(){
                Toggle("", isOn: $isEffected)

            }.frame(width: 150, height: 30)
                .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.8))
        }.frame(width: 800, height: 50)
    }
}


struct LogKeywordRow_Previews: PreviewProvider {
    static var previews: some View {
        LogKeywordRow()
    }
}

