//
//  ViewController.swift
//  PGActionSheet
//
//  Created by piggybear on 2017/10/2.
//  Copyright © 2017年 piggybear. All rights reserved.
//

import UIKit
import PGActionSheet

class ViewController: UIViewController {
    @IBAction func button1Handler() {
        let actionSheet = PGActionSheet(cancelButton: true, buttonList: ["收藏", "保存", "编辑"])
        present(actionSheet, animated: false, completion: nil)
        actionSheet.handler = {index in
            print("index = ", index)
        }
    }
    
    @IBAction func button2Handler() {
        let actionSheet = PGActionSheet(buttonList: ["收藏", "保存", "编辑"])
        present(actionSheet, animated: false, completion: nil)
        actionSheet.handler = {index in
            print("index = ", index)
        }
    }
    
    @IBAction func button3Handler() {
        let actionSheet = PGActionSheet(buttonList: ["收藏", "保存", "编辑"])
        actionSheet.delegate = self
        actionSheet.actionSheetTitle = "PGActionSheet"
        present(actionSheet, animated: false, completion: nil)
    }
    
    @IBAction func button4Handler() {
        let actionSheet = PGActionSheet(buttonList: ["收藏", "保存", "编辑"])
        actionSheet.delegate = self
        actionSheet.translucent = false
        present(actionSheet, animated: false, completion: nil)
    }
    
    @IBAction func button5Handler() {
        let actionSheet = PGActionSheet(buttonList: ["收藏", "保存", "编辑"])
        actionSheet.delegate = self
        actionSheet.actionSheetTranslucent = false
        present(actionSheet, animated: false, completion: nil)
    }
    
    @IBAction func button6Handler() {
        let actionSheet = PGActionSheet(cancelButton: true, buttonList: ["收藏", "保存", "编辑","收藏"])
        actionSheet.delegate = self
        present(actionSheet, animated: false, completion: nil)
        actionSheet.textFont = UIFont.boldSystemFont(ofSize: 20)
        actionSheet.textColor = UIColor.orange
        actionSheet.cancelTextColor = UIColor.blue
        actionSheet.cancelTextFont = UIFont.systemFont(ofSize: 20)
        actionSheet.actionSheetTitle = "PGActionSheet"
        actionSheet.actionSheetTitleFont = UIFont.boldSystemFont(ofSize: 22)
        actionSheet.actionSheetTitleColor = UIColor.red
    }
}

extension ViewController: PGActionSheetDelegate {
    func actionSheet(_ actionSheet: PGActionSheet, clickedButtonAt index: Int) {
        print("index = ", index)
    }
}



