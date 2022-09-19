//
//  CozinhaCollectionViewCell.swift
//  EncheoPapo
//
//  Created by Ryan Araújo on 16/09/22.
//

import UIKit

class CozinhaCollectionViewCell: UICollectionViewCell {

    static let identifier:String = "CozinhaCollectionViewcell"
        
    override init(frame: CGRect) {
        super.init(frame: frame)
            contentView.backgroundColor = .systemBlue
        }
        
    required init?(coder:NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
        
    

        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


