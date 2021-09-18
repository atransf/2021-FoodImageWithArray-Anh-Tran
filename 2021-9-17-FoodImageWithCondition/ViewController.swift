//
//  ViewController.swift
//  2021-9-17-FoodImageWithCondition
//
//  Created by Anh Tran on 9/17/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodPriceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        foodImageView.image = UIImage(named: "pizza")
        foodPriceLable.text = "🍕 Pizza: $19.99"
    }
    
    @IBAction func nextDishButtonPressed(_ sender: UIButton) {
        
        if foodPriceLable.text!.contains("Pizza") {
            foodImageView.image = UIImage(named: "hamburger")
            foodPriceLable.text = ("🍔 Burger: $15.99")
        } else if foodPriceLable.text!.contains("Burger") {
            foodImageView.image = UIImage(named: "salad")
            foodPriceLable.text = ("🥗 Salad: $12.99")
        }  else if foodPriceLable.text!.contains("Salad") {
            foodImageView.image = UIImage(named: "pasta")
            foodPriceLable.text = ("🍝 Pasta: $21.99")
        } else {
            foodImageView.image = UIImage(named: "pizza")
            foodPriceLable.text = "🍕 Pizza: $19.99"
        }
        
    }


}
