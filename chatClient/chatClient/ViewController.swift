//
//  Created by Joel, Shoshanna and Alvin on 1/14/15.
//  Copyright (c) 2015 Joel Konijn. All rights reserved.
//


import UIKit
import Starscream

class ViewController: UIViewController, WebSocketDelegate {
    var socket = WebSocket(url: NSURL(scheme: "ws", host: "localhost:3000", path: "/")!, protocols: ["chat", "superchat"])

    //While viewcontroller is loaded connect the websocket to the chatserver for the entire lifecycle of the viewcontroller.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        socket.delegate = self
        socket.connect()
    }
    
    //capturing message from input box
    
    var inputMessage = ""
    
    @IBAction func inputMsg(sender: UITextField) {
        inputMessage = sender.text
    }
    
    //displaying received message
    
    var ArrayOfMsg: [String] = []
    
    @IBOutlet var msgReceived: UITextView!
    
    func websocketDidReceiveMessage(text: String) {
        ArrayOfMsg.append(text)
        var message = ""
        for msg in ArrayOfMsg {
            message += msg + "\n"
            msgReceived.text = message
        }
    }
    
//    func websocketDidReceiveMessage(text: String) {
//        
////        ArrayOfMsg.append(text)
////        println(ArrayOfMsg)
////        for msg in ArrayOfMsg {
//            msgReceived.text = text
//            println(msgReceived.text)
////        }
//    }
    
    //send message from input box to server

    @IBAction func buttonTapped(sender: AnyObject) {
        socket.writeString("\(inputMessage)")
    }
    
    //obligated functions
    
    func websocketDidConnect() {
        println("client is connected")
    }
    
    func websocketDidDisconnect(error: NSError?) {
        println("client is disconnected")
    }
    
    func websocketDidWriteError(error: NSError?) {
        println("websocket write error")
    }
    
    func websocketDidReceiveData(data: NSData) {
        println("data is being sent")
    }
    
}