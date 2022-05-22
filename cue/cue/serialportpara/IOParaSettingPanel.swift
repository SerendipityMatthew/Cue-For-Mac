//
//  IOParaSettingPanel.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI

struct IOParaSettingPanel: View {
    @State private var selected = "TEXT"
    var body: some View {
        VStack(){
            Text("接受日志参数设置").padding(.top, 5)
            HStack(){
                Picker(selection: $selected, label: Text("")) {
                    Text("TEXT").tag("TEXT").padding(.trailing,20)
                    Text("HEX").tag("HEX")
                }
                .pickerStyle(.radioGroup)
                .padding([.leading, .trailing, .bottom], 10)
                .horizontalRadioGroupLayout()
                
            }
        }
    }
}

struct IOParaSettingPanel_Previews: PreviewProvider {
    static var previews: some View {
        IOParaSettingPanel()
    }
}
