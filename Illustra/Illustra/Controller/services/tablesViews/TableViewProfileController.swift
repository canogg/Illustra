//
//  TableViewProfileController.swift
//  Illustra
//
//  Created by Moyses Miranda do Vale Azevedo on 24/06/22.
//

import Foundation
import UIKit

extension ProfileController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return print("Click in me \(indexPath.row)")
    }
}

extension ProfileController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? Cell
        else {return UITableViewCell()}
        cell.userComment.text = comments[indexPath.row].comment
        cell.userImage.image = UIImage(named: comments[indexPath.row].imageName)
        return cell
    }
}

class Cell: UITableViewCell {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userComment: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        userImage.roundedImage()
    }
}
