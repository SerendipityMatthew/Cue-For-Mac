//
//  SerialPortParaAll.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI

struct SerialPortParaAll: View {
    @Binding var cueSerialPort: CueSerialPort
    var body: some View {

        VStack(){

            CueSerialPortPanel(cueSerialPort: $cueSerialPort)
                .frame(width: 250, height: 293, alignment: .center)
                .background(Color(red: 38/255, green: 38/255, blue: 44/255).opacity(0.6))
                .cornerRadius(10)
            Spacer()
                .frame(width: 100,height:10)
                .background(Color.black)
            IOParaSettingPanel(cueSerialPort: $cueSerialPort)
                .frame(width: 250, height: 150, alignment: .center)
                .background(Color(red: 38/255, green: 38/255, blue: 44/255).opacity(0.6))
                .cornerRadius(10)

        }
        
        .background(Color.black)
    }
}

struct SerialPortParaAll_Previews: PreviewProvider {
    static var previews: some View {
        SerialPortParaAll(cueSerialPort: .constant(CueSerialPort()))
    }
}
