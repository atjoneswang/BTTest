//
//  Btfinder.swift
//  BTTest
//
//  Created by Jones Wang on 2016/5/31.
//  Copyright © 2016年 j40. All rights reserved.
//

import Foundation
import IOBluetooth

class Btfinder : IOBluetoothDeviceInquiryDelegate {
    
    
    @objc func deviceInquiryComplete(sender: IOBluetoothDeviceInquiry, error: IOReturn, aborted: Bool) {
        //aborted
        NSLog("called")
        NSNotificationCenter.defaultCenter().postNotificationName("NotificationIdentifier", object: self,userInfo: ["deviceCount":sender.foundDevices().count])
        let devices = sender.foundDevices()
        for device : AnyObject in devices {
            if let thingy = device as? IOBluetoothDevice {
                thingy.getAddress()
            }
        }
    }
    
    @objc func deviceInquiryDeviceFound(sender: IOBluetoothDeviceInquiry!, device: IOBluetoothDevice!) {
            NSLog(device.name)
    }
}