//
//  CueSerialPortPanel.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI

struct CueSerialPortPanel: View {
    @ObservedObject var portNameListObject: PortNameListObject

    @Binding var cueSerialPort: CueSerialPort
    var body: some View {
        VStack(){
            Text("串口参数设置")
                    .frame(alignment: .leading)
        
            CueSerialPortPara(
                cueSerialPort: $cueSerialPort,
                portNameListObject: portNameListObject
            )
        }
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
        .cornerRadius(10)
        
    }
}

struct CueSerialPortPanel_Previews: PreviewProvider {
    static var previews: some View {
        CueSerialPortPanel(
            portNameListObject: PortNameListObject(),
            cueSerialPort: .constant(CueSerialPort())
        )
    }
}
