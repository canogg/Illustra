//
//  collectionProfileController.swift
//  Illustra
//
//  Created by Moyses Miranda do Vale Azevedo on 24/06/22.
//

import Foundation
import UIKit

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
