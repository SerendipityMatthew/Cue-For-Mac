//
//  CueSerialPortPanel.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI

struct CueSerialPortPanel: View {
    @Binding var cueSerialPort: CueSerialPort
    let serialPortParaList:[CuePortPara] = initCuePortConfig()
    var body: some View {
        VStack(){
            Text("串口参数设置")
                    .frame(alignment: .leading)
        
            CueSerialPortPara(cueSerialPort: $cueSerialPort)
        }
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
        .cornerRadius(10)
        
    }
}

struct CueSerialPortPanel_Previews: PreviewProvider {
    static var previews: some View {
        CueSerialPortPanel(cueSerialPort: .constant(CueSerialPort()))
    }
}
