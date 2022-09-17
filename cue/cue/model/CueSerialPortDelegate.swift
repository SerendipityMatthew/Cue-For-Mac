//
//  CueSerialPortDelegate.swift
//  cue
//
//  Created by Matthew on 2022/6/11.
//

import Foundation
import ORSSerial

class CueSerialPortDelegate: NSObject, ORSSerialPortDelegate {
    @objc dynamic var serialPort: ORSSerialPort? {
        didSet {
            oldValue?.close()
            oldValue?.delegate = nil
            serialPort?.delegate = self
        }
    }
    let _serialPortManager = ORSSerialPortManager.shared()
    func runProcessingInput(serialPath: String, baudRate: NSNumber) {
        setbuf(stdout, nil)
        print("Serial port serialPath = \(serialPath)")
        print("Serial port baudRate = \(baudRate)")


        self.serialPort = ORSSerialPort(path: serialPath) // please adjust to your handle
        self.serialPort?.baudRate = baudRate
        self.serialPort?.delegate = self
        openOrClosePort()
        print("Serial port (\(serialPort?.isOpen))")

    }
    
    func openOrClosePort() {

        if let port = self.serialPort {
            print("openOrClosePort: port.isOpen = \(port.isOpen)" )
            port.parity = ORSSerialPortParity.none
            port.numberOfStopBits = 1
            port.usesDTRDSRFlowControl = false
        
            if (port.isOpen) {
                port.close()
            } else {
                print("openOrClosePort: port = \(port) " )
                port.open()

            }
            print("openOrClosePort: port.path = \(port.path) " )
            print("openOrClosePort: port.name = \(port.name) " )
        }
    }
    

    func handleUserInput(dataFromUser: NSData) {
//        self.serialPort?.sendData()

    }


    func serialPort(_ serialPort: ORSSerialPort, didReceive data: Data) {
        print("========== serialPort = \(serialPort), data = \(data)")

        if let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue) {
            print("========== string = \(string)")
        }
    }
    func serialPortWasOpened(_ serialPort: ORSSerialPort) {
        print("serialPortWasOpened: serialPort = \(serialPort)")
    }

    func serialPortWasClosed(_ serialPort: ORSSerialPort) {
        print("serialPortWasClosed: serialPort = \(serialPort)")
    }

    func serialPort(_ serialPort: ORSSerialPort, didEncounterError error: Error) {
        print("SerialPort \(serialPort) encountered an error: \(error)")
    }
    func serialPortWasRemovedFromSystem(_ serialPort: ORSSerialPort) {
        self.serialPort = nil
    }
}

