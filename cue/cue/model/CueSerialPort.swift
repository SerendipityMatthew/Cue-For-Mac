//
//  CueSerialPort.swift
//  cue
//
//  Created by Matthew on 2022/5/28.
//

import Foundation

struct CueSerialPort: Hashable{
    var portName: String
    var baudRate: Int
    var dataBits: Int = 8
    var stopBits: Int
    var parity: String
    var flowType: String
    var receiveLogType: ReceiveSendFormat = ReceiveSendFormat.text
    var inputCommandType: ReceiveSendFormat = ReceiveSendFormat.text
   
}
