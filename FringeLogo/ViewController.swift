//
//  ViewController.swift
//  FringeLogo
//
//  Created by EyreFree on 2021/8/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let labelSize: CGSize = CGSize(width: 100, height: 100)
        let label: UILabel = UILabel(frame:
            CGRect(
                x: (UIScreen.main.bounds.size.width - labelSize.width) / 2,
                y: (UIScreen.main.bounds.size.height - labelSize.height) / 2,
                width: labelSize.width,
                height: labelSize.height
            )
        )
        label.text = "这是主页"
        label.textAlignment = .center
        label.font = UIFont.pingFangSCBoldItalic(ofSize: 16)
        label.textColor = UIColor.black
        self.view.addSubview(label)
    }


}

