//
//  collectionViewController.swift
//  Illustra
//
//  Created by Moyses Miranda do Vale Azevedo on 24/06/22.
//

import Foundation
import UIKit

extension ViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        let storyboard = UIStoryboard(name: "Profile", bundle: nil)
        guard let controller = storyboard.instantiateViewController(
            withIdentifier: "ProfileController") as? ProfileController
        else { return print("Erro ao instanciar ProfileController")}
        controller.idUser = indexPath.row
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return illustrators.count
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: MyCollectionViewCell.identifier,
            for: indexPath
        ) as? MyCollectionViewCell else {
            return UICollectionViewCell()
        }

        cell.configure(with: illustrators[indexPath.row])
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowRadius = 4
        cell.layer.shadowOffset = CGSize(width: 0, height: 0)
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 168, height: 168)
    }
}
