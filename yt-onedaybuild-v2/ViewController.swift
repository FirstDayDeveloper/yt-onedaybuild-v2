//
//  ViewController.swift
//  yt-onedaybuild-v2
//
//  Created by Kevin Nyangena on 11/10/22.
//

import UIKit

var model = Model()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        model.getVideos()

    }


}

