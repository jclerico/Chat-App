//
//  SocketService.swift
//  Smack
//
//  Created by Jeremy Clerico on 07/08/2017.
//  Copyright © 2017 Jeremy Clerico. All rights reserved.
//

import UIKit
import SocketIO

class SocketService: NSObject {
    
    static let instance = SocketService()
    
    override init() {
        super.init()
    }
    
    var socket: SocketIOClient = SocketIOClient(socketURL: URL(string: BASE_URL)!)
    
    func establishConnection() {
        socket.connect()
    }
    
    func closeConnection() {
        socket.disconnect()
    }
    
    func addChannel(channelName: String, channelDescription: String, completion: @escaping CompletionHandler) {
        socket.emit("newChannel", channelName, channelDescription)
        completion(true)
    }
    
    //Explanation:
    //'socket.on' - listening for an event of type channelCreated, and the dataArray that comes back from that is the three objects in the guard statements of type Any. Cast them in the order we receive them (look at api code to see order) and cast them as Strings.
    //'newChannel' - Create a newChannel object from the variables
    //'MessageService....' - Append the newChannel to the  messageServices array of channels
    //To use this function, place it in the location we want to listen for this change. (ChannelVC for this app)
    func getChannel(completion: @escaping CompletionHandler) {
        socket.on("channelCreated") { (dataArray, ack) in
            guard let channelName = dataArray[0] as? String else { return }
            guard let channelDesc = dataArray[1] as? String else { return }
            guard let channelId = dataArray[2] as? String else { return }
            
            let newChannel = Channel(channelTitle: channelName, channelDescription: channelDesc, id: channelId)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
    
    
    
    
    
    
    
    
    
    
    

}
