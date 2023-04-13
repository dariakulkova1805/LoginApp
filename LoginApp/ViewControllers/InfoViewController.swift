//
//  InfoViewController.swift
//  LoginApp
//
//  Created by DARYA on 3/23/23.
//

import UIKit

class InfoVeiwController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet var photoImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    
    // MARK: - Public Properties
    
    var user: User!
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage.image = UIImage(named: user.person.photo)
        nameLabel.text = user.person.name
        ageLabel.text = user.person.age
        cityLabel.text = user.person.city
        educationLabel.text = user.person.education
    }
}
