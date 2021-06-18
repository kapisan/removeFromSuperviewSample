//
//  ViewController.swift
//  addSubViewSample
//
//  Created by niwa  shuhei on 2021/06/16.
//

import UIKit

class ViewController: UIViewController {

    private var sampleView: UIView?
    private var warabiAppendView = [UIImageView]()

    var x = 0
    var y = 0

    @IBAction func addButton(_ sender: Any) {

        let warabiImage = UIImage(named: "warabi.png")
        let warabiImageView = UIImageView(image: warabiImage)
        let rect = CGRect(x: x, y: y, width: 100, height: 100)

        warabiImageView.frame = rect
        self.view.addSubview(warabiImageView)
        //warabiImageViewを格納する
        warabiAppendView.append(warabiImageView)
        //y軸を100ずつ下にずらす
        y += 100
    }
    
    @IBAction func deleteActionButton(_ sender: Any) {
        //warabiImageViewをaddSubviewしたのを一括で削除
        for view in warabiAppendView {
            view.removeFromSuperview()
        }

        //Qiitaで教えていただいたコードでも、warabiImageViewをaddSubviewしたのを一括で削除できました。
//        for view in self.view.subviews {
//            if view is UIImageView {
//                view.removeFromSuperview()
//            }
//        }
    }
}
