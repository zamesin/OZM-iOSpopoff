//
//  ImageCell.swift
//  OZM
//
//  Created by Semyon Novikov on 11/09/15.
//  Copyright (c) 2015 ozm. All rights reserved.
//

import Foundation
import UIKit

class ImageCell: UICollectionViewCell {

    @IBOutlet weak var imageView: WebImageView!

    override func prepareForReuse() {
        imageView.clean()
        super.prepareForReuse()
    }

    func populateWith(image: Image) -> Void {
        //imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.setImageFromUrl(image.url!, isGIF: image.isGIF ?? false)
    }
}