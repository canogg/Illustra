//
//  MyCollectionViewCell.swift
//  Illustra
//
//  Created by Vinícius Cavalcante on 14/06/22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var illustrationImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var illustratorNameLabel: UILabel!
    @IBOutlet weak var footerView: UIView!

    static let identifier = "MyCollectionViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        illustrationImageView.layer.cornerRadius = 12
        illustrationImageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }

    public func configure(with illustrator: Illustrator) {
        let nameIllustration = illustrator.illustrations[0]
        illustrationImageView.image = UIImage(named: nameIllustration)
        illustratorNameLabel.text = illustrator.name
        titleLabel.text = nameIllustration
        footerView.backgroundColor = .white
        footerView.layer.cornerRadius = 12
        footerView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }

    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

}
