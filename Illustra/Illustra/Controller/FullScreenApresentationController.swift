//
//  FullScreenApresentation.swift
//  Illustra
//
//  Created by Moyses Miranda do Vale Azevedo on 23/06/22.
//

import UIKit

class FullScreenApresentationController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    var nameImage: String = "errorImage"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        image.image = UIImage(named: nameImage)
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
