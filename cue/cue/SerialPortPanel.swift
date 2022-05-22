//
//  SerialPortPanel.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI
import SVGView

struct SerialPortPanel: View {
    var body: some View {
        VStack(){
            Text("串口参数设置")
                    .frame(alignment: .leading)
            CueSerialPortPanel()
        }
        .padding(20)
    }
}

struct SerialPortPanel_Previews: PreviewProvider {
    static var previews: some View {
        SerialPortPanel()
    }
}
