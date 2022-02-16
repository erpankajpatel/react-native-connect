//
//  PhyConnectModule.swift
//  PhyConnectModule
//
//  Copyright © 2022 Pankaj Patel. All rights reserved.
//


import Foundation
import PhylloConnect

public var phylloConnectInstance = PhylloManager()  //DeviceManager.swift instance
var nativeMethodInstance = PhyConnectModule()

var rtcBridge :RCTBridge?

class PublicBridgeHelper {
    func getBridge () -> RCTBridge {
    return rtcBridge!
  }
}


@objc(PhyConnectModule)
public class PhyConnectModule: RCTEventEmitter {
  
  override public func supportedEvents() -> [String]! {
    //I will be honest, I am sending these events from DeviceManager.swift, but react native's packager gripes if I dont put the events that DeviceManager.swift is sending through the rootView's bridge here
    return ["onAccountConnected","onAccountDisconnected","onTokenExpired","onExit"]
  }
  
  public override init() {
    super.init()
  }
  

  @objc
  func constantsToExport() -> [AnyHashable : Any]! {
    return ["count": 1]
  }

  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
  @objc(initialize:::::)
  func initialize(clientDisplayName:String,token:String,userId:String ,environment:String, workPlatformId:String) {
    debugPrint("start initialize ..........")
    phylloConnectInstance.initialize(clientDisplayName: clientDisplayName, token: token, userId: userId, environment: environment, workPlatformId: workPlatformId)
  }
    
  @objc public override static func requiresMainQueueSetup() -> Bool {
      return false
  }
}

