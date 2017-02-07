//
//  CameraViewController.swift
//  Kuva
//
//  Created by Matthew on 2/6/17.
//  Copyright © 2017 kuva. All rights reserved.
//

import UIKit
import Alamofire
import CoreLocation
import SwiftyJSON

class CameraViewController: PrimaryViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var captionTextView: UITextView!
    @IBOutlet weak var cameraImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startCamera()
        // Do any additional setup after loading the view.
    }
    
    func startCamera() {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.cameraCaptureMode = .photo
            imagePicker.modalPresentationStyle = .fullScreen
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        cameraImageView.image = info[UIImagePickerControllerOriginalImage] as! UIImage?
        self.dismiss(animated: true, completion: nil);
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
