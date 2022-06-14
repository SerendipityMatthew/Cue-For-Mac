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
    //定义是否显示收费弹窗
    @State private var showingPayModel = false
    var body: some View {
        ZStack(){
            VStack(){
                CueFunctionPanel(cueSerialPort: $cueSerialPort, portNameListObject: portNameList, isShowConfig: $showingPayModel)
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
            .zIndex(0)
            
            if($showingPayModel.wrappedValue){
                CueConfig()
                    .zIndex(0.5)
                    .frame(width: 400, height: 400)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
