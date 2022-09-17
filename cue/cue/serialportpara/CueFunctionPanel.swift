//
//  StartButtonImage.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI
import ORSSerial

struct CueFunctionPanel: View {
    @Binding var cueSerialPort: CueSerialPort
    @ObservedObject var portNameListObject: PortNameListObject
    @Binding var isShowConfig: Bool

    
    var body: some View {
  
        ZStack(){
            HStack(alignment: .top, spacing: 20){
                Spacer().frame(width: 1)
                Button(action: {
                    let serialPortManager = ORSSerialPortManager.shared()
                    let serialPortList = serialPortManager.availablePorts
                    portNameListObject.portNameList.removeAll()
                    serialPortList.forEach { serialPort in
                        print("serialPort =  \(serialPort.name) " )
                        portNameListObject.portNameList.append(serialPort.name)
                        PortNameConstants.PortNameList.append(serialPort.name)
                    }
                    let port = ORSSerialPort(path: "/dev/cu.\(cueSerialPort.portName)")
                    let myInteger = Int(cueSerialPort.baudRate)
                    if let myInteger = Int(cueSerialPort.baudRate) {
                        port?.baudRate = NSNumber(value:myInteger)
                    }
                    if (cueSerialPort.portName.isEmpty){
                        return
                    }
                    port?.parity = .none
                    port?.numberOfStopBits = 1
                    
                    port?.usesDTRDSRFlowControl = true
                    print("serialPort: cueSerialPort = \(cueSerialPort) " )
                    if (port?.isOpen == false){
                        port?.open()
                    }
                    var isOpened = port?.isOpen

                    print("serialPort: port?.name = \(port?.name) " )
                    print("serialPort: port?.path = \(port?.path) " )

                    print("serialPort: port?.open() = \(isOpened) " )

                }, label: {
                    Image("start_button_image")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: Alignment.leading)
                })
                .frame(width: 60, height: 60, alignment:.center)
                .buttonStyle(BorderlessButtonStyle())
                .border(Color.gray, width: 1)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                Button(action: {
                    print("button pressed")
                }, label: {
                    Image("stop_button_image")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: Alignment.leading)
                })
                .frame(width: 60, height: 60, alignment:.center)
                .buttonStyle(BorderlessButtonStyle())
                .border(Color.gray, width: 1)
                
                
                Button(action: {
                    $isShowConfig.wrappedValue = !($isShowConfig.wrappedValue)
                    
                }, label: {
                    Image("settings_config")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: Alignment.leading)
                })
                .frame(width: 60, height: 60, alignment:.center)
                .buttonStyle(BorderlessButtonStyle())
                .border(Color.gray, width: 1)
            }
            .frame(width: 1050, height: 80, alignment: .leading)
         
            .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.6))
            .cornerRadius(10)
  
        }
        
  
    }
}

struct CueFunctionPanel_Previews: PreviewProvider {
    static var previews: some View {
        CueFunctionPanel(cueSerialPort: .constant(CueSerialPort()),
                         portNameListObject: PortNameListObject(), isShowConfig: .constant(false))
    }
}
