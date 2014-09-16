//
//  ComposeViewController.swift
//  SwifferApp
//
//  Created by kiiita on 2014/09/16.
//  Copyright (c) 2014年 Training. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var sweetTextView: UITextView! = UITextView()
    @IBOutlet weak var charRemaining: UILabel! = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendSweet(sender: AnyObject) {
        
        
        var sweet:PFObject = PFObject(className: "Sweets") // Tweetを保存するための変数を作る
        sweet["content"] = sweetTextView.text // Tweet内容を取得
        sweet["sweeter"] = PFUser.currentUser() // 現在のユーザーの取得
        
        sweet.saveInBackground() // ツイートの情報を保存する
        self.navigationController?.popToRootViewControllerAnimated(true) // 保存が終わったらトップ画面へ自動的に戻る
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
