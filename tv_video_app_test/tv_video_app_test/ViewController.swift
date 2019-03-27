//
//  ViewController.swift
//  tv_video_app_test
//
//  Created by João Dematé  on 27/03/19.
//  Copyright © 2019 João Dematé . All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    //PROPERTIES
    let thePlayer: VLCMediaPlayer = {
        let player = VLCMediaPlayer()
        return player
    }()
    
    
    // OUTLETS
    @IBOutlet weak var thePlayerView: UIView!
    
    
    //CLASS
    override func viewDidLoad(){
        super.viewDidLoad()
        setupthePlayer()
        
    }
    
    //DEFINE FUNCTIONS
    func setupthePlayer(){
        
        let streamURL = URL(string: "rtsp://138.118.33.201:554/axis-media/media.amp?videocodec=h264")!
        let theMedial = VLCMedia(url: streamURL)
        thePlayer.media = theMedial
        thePlayer.drawable = thePlayerView
        thePlayer.play()
        
    }
}//END OF CLASS

