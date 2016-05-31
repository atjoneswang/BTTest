//
//  main.swift
//  BTTest
//
//  Created by Jones Wang on 2016/5/31.
//  Copyright © 2016年 j40. All rights reserved.
//

import Foundation
import IOBluetooth


public var deviceCount = 0
print("Hello, World!")
var notify = NotifyBLE()


var btfinder = Btfinder()
var inquiry = IOBluetoothDeviceInquiry(delegate: btfinder)

//inquiry.inquiryLength = 60
inquiry.start()
inquiry.updateNewDeviceNames = true
var devices = inquiry.foundDevices()
print("starting....")

NSRunLoop.mainRunLoop().run()


