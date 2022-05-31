//
//  SerialPortController.swift
//  cue
//
//  Created by Matthew on 2022/5/31.
//

import Foundation
import ORSSerial

class SerialPortController: NSObject, ORSSerialPortDelegate {
    func serialPort(_ serialPort: ORSSerialPort, didReceive data: Data) {
        print("========== serialPort = \(serialPort), data = \(data)")

        if let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue) {
            print("========== string = \(string)")
        }
    }
    
    func serialPortWasRemovedFromSystem(_ serialPort: ORSSerialPort) {
    }
    
    func serialPort(_ serialPort: ORSSerialPort, didEncounterError error: Error) {
        print("SerialPort \(serialPort) encountered an error: \(error)")
    }
}
