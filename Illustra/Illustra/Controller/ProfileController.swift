//
//  ProfileController.swift
//  Illustra
//
//  Created by Ana Caroline Sampaio Nogueira on 09/06/22.
//

import UIKit

class ProfileController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var userImage: UIImageView!

    var listaImagens = ["astralunar", "makemoney", "sendingcut", "techna"]

    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.clipsToBounds = true
        userImage.layer.cornerRadius = userImage.frame.height / 2
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

extension ProfileController: UICollectionViewDelegate {
}

extension ProfileController: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaImagens.count
    }

    public func collectionView(_ collectionView: UICollectionView,
                               cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
                as? IllustrationCell else { return UICollectionViewCell() }
        cell.image.image = UIImage(named: listaImagens[indexPath.row])
        return cell
    }
}

extension ProfileController: UITableViewDelegate {
}

extension ProfileController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
