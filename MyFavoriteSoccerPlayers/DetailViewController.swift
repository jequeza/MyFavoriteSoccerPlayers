//
//  DetailViewController.swift
//  MyFavoriteSoccerPlayers
//
//  Created by Jesus Quezada on 10/9/17.
//  Copyright © 2017 Jesus Quezada. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    //   @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    @IBOutlet weak var productImageView: UIImageView!
    
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if detailItem != nil {
            if let photo = productImageView {
                photo.image = UIImage(named:detailItem!)
            }
        }else{
            productImageView.image = UIImage(named:"Ronaldinho.jpg")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    
}
