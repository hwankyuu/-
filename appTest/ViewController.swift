//
//  ViewController.swift
//  appTest
//
//  Created by 이환규 on 2022/04/17.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false // 확대 여부를 나타내는 변수
    var imgLight: UIImage? // 켜진 전구 이미지가 있는 UIImage 타입의 변수

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgLight = UIImage (named: "littledeep_bulb_style1.png")
        imgView.image = imgLight
        // Do any additional setup after loading the view.
    }


    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom) {
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            btnResize.setTitle("확대", for: .normal)
        }
        else {
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            btnResize.setTitle("축소", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
}

