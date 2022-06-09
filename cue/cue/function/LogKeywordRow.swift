//
//  LogKeywordRow.swift
//  cue
//
//  Created by Matthew on 2022/6/9.
//

import SwiftUI
import AppKit

struct LogKeywordRow: View {
    @State private var isIgnoreCap = true
    @State private var isIgnoreSpace = true
    @State private var isEffected = true

    var body: some View {
        HStack(alignment: VerticalAlignment.center){
            Text("SSID").padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
            Spacer()
            Toggle("", isOn: $isIgnoreCap)
            Spacer()
            Toggle("", isOn: $isIgnoreSpace)
            Spacer()
            Toggle("", isOn: $isEffected)
            Spacer()
        }.frame(width: 2000, height: 50)
    }
}


struct ColorPickerIconView: View {

    var body: some View {
        HStack(alignment: VerticalAlignment.center){
            Spacer()
                .frame(width: 60, height: 40).background(Color.red)
            
        }.frame(width: 500, height: 50)
    }
}
struct LogKeywordRow_Previews: PreviewProvider {
    static var previews: some View {
        LogKeywordRow()
    }
}

struct ColorPickerIconView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerIconView()
    }
}
