//
//  ViewController.swift
//  Sportawy
//
//  Created by MacOSSierra on 2/22/21.
//  Copyright © 2021 TAHIOS. All rights reserved.
//

import UIKit
import Alamofire
import YouTubePlayer

class ViewController: UIViewController {


    @IBOutlet weak var videoView: YouTubePlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      /* [self.playerView loadWithVideoId:@"M7lc1UVf-VE"];*/
        let videaUrl = URL(string: "https://www.youtube.com/watch?v=i4AfVcw6mrY")
        videoView.loadVideoID("i4AfVcw6mrY")
    }

}

