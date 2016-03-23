//
//  DisplayViewController.swift
//  PhotoGallery
//
//  Created by Matera on 21/01/16.
//  Copyright © 2016 Matera. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    var currentPhoto : Photo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named: currentPhoto!.filename)
        currentImage.image = image
        self.title = currentPhoto?.name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Get the new view controller using segue.destinationViewController.
        let ThirthScene = segue.destinationViewController as! InfoViewController
        
        // Pass the selected object to the new view controller.
        ThirthScene.currentPhoto = currentPhoto
    }
    

}
