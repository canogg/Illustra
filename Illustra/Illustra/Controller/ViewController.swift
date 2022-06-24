//
//  ViewController.swift
//  Illustra
//
//  Created by Ana Caroline Sampaio Nogueira on 07/06/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 148, height: 188)
        collectionView.collectionViewLayout = layout

        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.layer.masksToBounds = false

    }
}
