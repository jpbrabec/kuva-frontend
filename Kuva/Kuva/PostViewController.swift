//
//  PostViewController.swift
//  Kuva
//
//  Created by Shane DeWael on 2/5/17.
//  Copyright © 2017 kuva. All rights reserved.
//

import UIKit
import Alamofire

class PostViewController: PrimaryViewController {

    @IBOutlet var photoTextView: UITextView!
    @IBOutlet var captionTextView: UITextView!
    
    @IBAction func postButtonPressed(_ sender: Any) {
        
        let caption = captionTextView.text
        let photo = photoTextView.text

        //we need auth
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
