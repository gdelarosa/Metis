//
//  WelcomeVC.swift
//  Metis
//
//  Created by Gina De La Rosa on 11/12/17.
//  Copyright © 2017 Gina Delarosa. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var videoView: LoopingVideoView!
    @IBOutlet weak var collView: UICollectionView!
    
    let imageArray = [UIImage(named: "Slide1"),UIImage(named: "Slide2"),
                      UIImage(named: "Slide3")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCell", for: indexPath) as! OnboardingCell
        
        cell.imageCell.image = self.imageArray[indexPath.row]
        cell.imageCell.layer.cornerRadius = 10.0
        cell.imageCell.clipsToBounds = true
        
        return cell
        
    }

}
