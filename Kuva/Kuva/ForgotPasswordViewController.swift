//
//  ForgotPasswordViewController.swift
//  Kuva
//
//  Created by Matthew on 2/4/17.
//  Copyright © 2017 kuva. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func resetPressed(_ sender: Any) {
        let email = emailTextField.text
        
        let parameters: Parameters = [
            "email": email
        ]
        
        //use AlamoFire to send reset password request
        Alamofire.request("http://kuva.jakebrabec.me/api/user/reset", method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON{ response in
            
            if let msg = response.result.value {
                print("RESPONSE: \(msg)")
            }
            
            let msgJSON = JSON(msg)
            var alert: UIAlertController
            let message: String = msgJSON["message"].stringValue
            if message == "error" {
                alert = UIAlertController(title: "bad!!!", message: "bad bad", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "☹️", style: UIAlertActionStyle.default, handler: nil))
            } else {
                alert = UIAlertController(title: "wow", message: "😍", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "😏", style: UIAlertActionStyle.default, handler: nil))
            }
            self.present(alert, animated: true, completion: nil)
        }
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