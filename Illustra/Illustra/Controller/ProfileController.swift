//
//  ProfileController.swift
//  Illustra
//
//  Created by Ana Caroline Sampaio Nogueira on 09/06/22.
//

import UIKit

class ProfileController: UIViewController {

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var userImage: UIImageView!

    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star5: UIImageView!

    var listaImagens = [""]
    var idUser = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.clipsToBounds = true
        userImage.layer.cornerRadius = userImage.frame.height / 2
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let user = illustrators[idUser]
        userImage.image = UIImage(named: user.name)
        userName.text = user.name
        showEvaluation(value: user.evaluation)
        listaImagens = user.illustrations
    }

    func showEvaluation(value: Int) {
        switch value {
        case 0:
            star1.image = UIImage(systemName: "star")
            star2.image = UIImage(systemName: "star")
            star3.image = UIImage(systemName: "star")
            star4.image = UIImage(systemName: "star")
            star5.image = UIImage(systemName: "star")
        case 1:
            star1.image = UIImage(systemName: "star.fill")
            star2.image = UIImage(systemName: "star")
            star3.image = UIImage(systemName: "star")
            star4.image = UIImage(systemName: "star")
            star5.image = UIImage(systemName: "star")
        case 2:
            star1.image = UIImage(systemName: "star.fill")
            star2.image = UIImage(systemName: "star.fill")
            star3.image = UIImage(systemName: "star")
            star4.image = UIImage(systemName: "star")
            star5.image = UIImage(systemName: "star")
        case 3:
            star1.image = UIImage(systemName: "star.fill")
            star2.image = UIImage(systemName: "star.fill")
            star3.image = UIImage(systemName: "star.fill")
            star4.image = UIImage(systemName: "star")
            star5.image = UIImage(systemName: "star")
        case 4:
            star1.image = UIImage(systemName: "star.fill")
            star2.image = UIImage(systemName: "star.fill")
            star3.image = UIImage(systemName: "star.fill")
            star4.image = UIImage(systemName: "star.fill")
            star5.image = UIImage(systemName: "star")
        case 5:
            star1.image = UIImage(systemName: "star.fill")
            star2.image = UIImage(systemName: "star.fill")
            star3.image = UIImage(systemName: "star.fill")
            star4.image = UIImage(systemName: "star.fill")
        default:
            print("Error")
        }

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
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "FullScreenApresentation", bundle: nil)
        guard let controller = storyboard.instantiateViewController(
            withIdentifier: "FullScreenApresentationController") as? FullScreenApresentationController
        else { return print("Erro ao instanciar ProfileController")}
        let user = illustrators[idUser]
        controller.nameImage = user.illustrations[indexPath.row]
        self.navigationController?.pushViewController(controller, animated: true)
    }
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
