//
//  ViewController.swift
//  ImageViewMission
//
//  Created by 지아손 on 2020/10/07.
//

import UIKit

class ViewController: UIViewController {
    var numImg = 1
    var maxImg = 6

    @IBOutlet var imgGallary: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPrevImg(_ sender: UIButton) {
        numImg = numImg - 1
        if(numImg < 1) {
            numImg = maxImg
        }
        
        let imgName = String(numImg)+".png"
        imgGallary.image = UIImage(named: imgName)
    }
    
    @IBAction func btnNextImg(_ sender: UIButton) {
        numImg = numImg + 1
        if (numImg > maxImg) {
            numImg = 1
        }
        
        let imgName = String(numImg)+".png"
        imgGallary.image = UIImage(named: imgName)
    }
}

