//
//  CueSerialPort.swift
//  cue
//
//  Created by Matthew on 2022/5/28.
//

import Foundation

struct CueSerialPort: Hashable{

    var portName: String = PortNameConstants.PortNameList[0]
    var baudRate: String = BaudrateConstants.BaudRate_List[0]
    var dataBits: String = DataBitsConstants.DataBits_List[0]
    var stopBits: String = StopBitsConstants.StopBits_List[1]
    var parity: String = ParityConstants.Parity_List[0]
    var flowType: String = ""
    var receiveLogType: ReceiveSendFormat = ReceiveSendFormat.text
    var inputCommandType: ReceiveSendFormat = ReceiveSendFormat.text
   
}
