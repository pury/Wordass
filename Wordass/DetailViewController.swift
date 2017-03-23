//
//  DetailViewController.swift
//  Wordass
//
//  Created by pury on 3/24/17.
//  Copyright © 2017 pury. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var word: String?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // http://cn.bing.com/dict/search?q=word&FORM=BDVSP2&qpvt=word
        let url = NSURL(string: "http://fanyi.baidu.com/?aldtype=85#en/zh/" + self.word!);
        //let url = NSURL(string: "http://cn.bing.com/dict/search?q=word&FORM=BDVSP2&qpvt=word");
        
        let request = NSURLRequest(url: url as! URL);
        self.webView.loadRequest(request as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
