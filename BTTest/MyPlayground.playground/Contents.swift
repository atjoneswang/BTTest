//: Playground - noun: a place where people can play

import Cocoa
import IOBluetooth
import XCPlayground

class BlueDelegate : IOBluetoothDeviceInquiryDelegate {
    @objc func deviceInquiryComplete(sender: IOBluetoothDeviceInquiry, error: IOReturn, aborted: Bool) {
        aborted
        print("called")
        let devices = sender.foundDevices()
        for device : AnyObject in devices {
            if let thingy = device as? IOBluetoothDevice {
                thingy.getAddress()
            }
        }
    }
}

var delegate = BlueDelegate()
var inquiry = IOBluetoothDeviceInquiry(delegate: delegate)
inquiry.start()
XCPSetExecutionShouldContinueIndefinitely()
var str = "Hello, playground"
print(str)