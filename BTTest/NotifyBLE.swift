//
//  NotifyBLE.swift
//  BTTest
//
//  Created by Jones Wang on 2016/5/31.
//  Copyright © 2016年 j40. All rights reserved.
//

import Foundation

class NotifyBLE{
    
    init(){
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(NotifyBLE.printDeviceCount), name:"NotificationIdentifier", object: nil)
    }
    @objc func printDeviceCount(notification: NSNotification){
        let userInfo = notification.userInfo as! [String: AnyObject]
        print ("device count:\(userInfo["deviceCount"]!)")
        exit(0)
    }
}