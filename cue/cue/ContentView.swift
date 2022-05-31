//
//  ContentView.swift
//  cue
//
//  Created by Matthew on 2022/5/21.
//

import SwiftUI
import ORSSerial

struct ContentView: View {
    @State private var cueSerialPort = CueSerialPort()
    @State private var portNameList = PortNameListObject()
    var body: some View {
        VStack{
            CueFunctionPanel(cueSerialPort: $cueSerialPort, portNameListObject: portNameList)
            HStack{
                SerialPortParaAll(cueSerialPort: $cueSerialPort,
                                  portNameListObject: portNameList )
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
