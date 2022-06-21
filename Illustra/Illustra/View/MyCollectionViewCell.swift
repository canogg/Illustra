//
//  MyCollectionViewCell.swift
//  Illustra
//
//  Created by Vinícius Cavalcante on 14/06/22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet weak var footerCard: UIView!

    static let identifier = "MyCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageView.layer.cornerRadius = 12
        footerCard.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }

    public func configure(with image: UIImage) {
        imageView.image = image
        footerCard.backgroundColor = .white
        footerCard.layer.cornerRadius = 12
    }

    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

}
