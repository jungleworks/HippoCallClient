//
//  HippoCallClient.swift
//  HippoCallClient
//
//  Created by Vishal on 14/11/18.
//  Copyright © 2018 Vishal. All rights reserved.
//

import Foundation


public class HippoCallClient {
   public static let shared = HippoCallClient()
   private(set) var delgate: HippoCallClientDelegate?
   
    public func registerHippoCallClient(delegate: HippoCallClientDelegate) {
        self.delgate = delegate
    }
    public func voipNotificationRecieved(dictionary: [AnyHashable: Any], peer: CallPeer, signalingClient: SignalingClient, currentUser: CallPeer) {
        CallClient.shared.voipNotificationReceived(dictionary: dictionary, peer: peer, signalingClient: signalingClient, currentUser: currentUser)
    }
    public func hangupCall() {
        CallClient.shared.hangupCall()
    }
    public func startCall(call: Call, completion: @escaping (Bool) -> Void) {
        CallClient.shared.startNew(call: call, completion: completion)
    }
    public func startConnecting(call: PresentCallRequest, uuid: String) {
        CallClient.shared.startConnecting(call: call, uuid: uuid)
    }
    public func setCredentials(rawCredentials: [String: Any]) {
        CallClient.shared.setCredentials(rawCredentials: rawCredentials)
    }
    public func activeCallUUID() -> String? {
        return CallClient.shared.activeCall?.uID
    }
}
