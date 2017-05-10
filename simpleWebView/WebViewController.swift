//
//  WebViewController.swift
//  simpleWebView
//
//  Created by 森本 紘太 on 2017/04/27.
//  Copyright © 2017年 h.morimoto. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

    // StoryBoardで配置したwebViewのプロパティ
    @IBOutlet weak var webView: UIWebView!
    
    // 初期URL
//    let initialUrl = NSURL(string: "https://www.compathy.net/magazine/2017/04/26/houtoenjoy_singapore_library/")
//    let initialUrl = NSURL(string: "https://salonlist.jp/macaron/pixam-f-dewy-beige-hair")
    let initialUrl = NSURL(string: "http://cdn.lodeo.io/prdtest/mrmt/tw_test/yoko/dfp.html")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // webViewのデリゲートを設定
        self.webView.delegate = self
        
        // 初期URLで読み込み
        let request = NSURLRequest(URL: initialUrl!)
        self.webView.loadRequest(request)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func prevBtn(sender: AnyObject) {
        if self.webView.canGoBack {
            self.webView.goBack() // 戻る
        }
    }
    
    @IBAction func nextBtn(sender: AnyObject) {
        if self.webView.canGoForward {
            self.webView.goForward() // 進む
        }
    }
    
    @IBAction func reloadBtn(sender: AnyObject) {
        self.webView.reload()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
