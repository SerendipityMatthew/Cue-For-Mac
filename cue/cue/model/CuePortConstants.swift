//
//  CueBaudRate.swift
//  cue
//
//  Created by Matthew on 2022/5/28.
//

import Foundation

struct PortNameConstants {
    static let PortNameDefault: String = ""
 
    
    static let PortNameList:[String] = [
        PortNameDefault
    ]
}

struct BaudrateConstants {
    static let Baudrate_9600 = "9600"
    static let Baudrate_19200 = "19200"
    static let Baudrate_38400 = "38400"
    static let Baudrate_57600 = "57600"
    static let Baudrate_115200 = "115200"
    
    static let BaudRate_List:[String] = [
        Baudrate_9600,
        Baudrate_19200,
        Baudrate_38400,
        Baudrate_57600,
        Baudrate_115200,
    ]
}


struct ParityConstants {
    static let Parity_None = "none"
    static let Parity_Even = "even"
    static let Parity_Odd = "odd"
    static let Parity_Mark = "mark"
    static let Parity_Space = "space"
    
    static let Parity_List:[String] = [
        Parity_None,
        Parity_Even,
        Parity_Odd,
        Parity_Mark,
        Parity_Space,
    ]
}


struct StopBitsConstants {
    static let StopBits_1 = "1"
    static let StopBits_2 = "2"
    
    static let StopBits_List:[String] = [
        StopBits_1,
        StopBits_2,
    ]
}

struct DataBitsConstants {
    static let DataBits_5 = "5"
    static let DataBits_6 = "6"
    static let DataBits_7 = "7"
    static let DataBits_8 = "8"
    
    static let DataBits_List:[String] = [
        DataBits_5,
        DataBits_6,
        DataBits_7,
        DataBits_8,
    ]
}
