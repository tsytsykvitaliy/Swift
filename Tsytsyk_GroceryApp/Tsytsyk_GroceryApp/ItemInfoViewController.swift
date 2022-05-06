//
//  ItemInfoViewController.swift
//  Tsytsyk_GroceryApp
//
//  Created by Student on 4/12/22.
//

import UIKit

class ItemInfoViewController: UIViewController {

    var itemDesc = GroceryItem(itemName: "placeholder", itemImage: UIImage.init(named: "chicken")!, itemInfo: "placeholder")
    
    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    
    @IBOutlet weak var itemInfoOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemImageViewOutlet.image = itemDesc.itemImage
        self.title = itemDesc.itemName
        animateImage(itemDesc.itemImage)
    }
    
    @IBAction func showItemInfoAction(_ sender: UIButton) {
        itemInfoOutlet.text = itemDesc.itemInfo
    }
    
    func animateImage(_ imageName: UIImage) {
        UIView.animate(withDuration: 0.5, animations: {self.itemImageViewOutlet.alpha = 0.0})
        UIView.animate(withDuration: 0.5, delay: 0.1, animations: {self.itemImageViewOutlet.alpha = 1.0
            self.itemImageViewOutlet.image = imageName
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
