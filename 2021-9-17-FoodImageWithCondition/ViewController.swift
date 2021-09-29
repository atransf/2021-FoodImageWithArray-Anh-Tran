//
//  ViewController.swift
//  2021-9-17-FoodImageWithCondition
//
//  Created by Anh Tran on 9/17/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var foodImageView: UIImageView!
   
    var imageIndex = 0
    let imageList = ["pizza","salad","hamburger","pasta"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let imageName = imageList[imageIndex]
        foodImageView.image = UIImage(named: imageName)
        
    }
    
    @IBAction func nextDishButtonPressed(_ sender: UIButton) {
        
        if imageIndex < imageList.count-1 {
            imageIndex += 1
        } else {
            imageIndex = 0
        }
        
        let imageName = imageList[imageIndex]
        foodImageView.image = UIImage(named: imageName)
    }


}
