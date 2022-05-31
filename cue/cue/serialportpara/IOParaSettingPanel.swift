//
//  IOParaSettingPanel.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI

struct IOParaSettingPanel: View {
    @Binding var cueSerialPort: CueSerialPort
    var body: some View {
        VStack(){
            Text("接受日志参数设置").padding(.top, 5)
            HStack(){
                Picker(selection: self.$cueSerialPort.receiveLogType, label: Text("")) {
                    Text(ReceiveSendFormat.text.rawValue).tag(ReceiveSendFormat.text).padding(.trailing,20)
                    Text(ReceiveSendFormat.hex.rawValue).tag(ReceiveSendFormat.hex)
                }
                .pickerStyle(.radioGroup)
                .padding([.leading, .trailing, .bottom], 10)
                .horizontalRadioGroupLayout()
                
            }
            Spacer().frame(height: 20)
                .background(Color.black)
            Text("发送日志参数设置").padding(.top, 5)
            HStack(){
                Picker(selection: $cueSerialPort.inputCommandType, label: Text("")) {
                    Text(ReceiveSendFormat.text.rawValue).tag(ReceiveSendFormat.text).padding(.trailing,20)
                    Text(ReceiveSendFormat.hex.rawValue).tag(ReceiveSendFormat.hex)
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
        IOParaSettingPanel( cueSerialPort: .constant(CueSerialPort()))
    }
}
