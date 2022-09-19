//
//  CozinhaViewController.swift
//  EncheoPapo
//
//  Created by Ryan Araújo on 16/09/22.
//

import UIKit


class CozinhaViewController: UIViewController {


        lazy var collectionView:UICollectionView = {
            let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            collectionView.backgroundColor = .blue
            collectionView.register(CozinhaCollectionViewCell.self, forCellWithReuseIdentifier: CozinhaCollectionViewCell.identifier)
            let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
            layout.scrollDirection = .horizontal
            collectionView.setCollectionViewLayout(layout, animated: true)
            collectionView.delegate = self
            collectionView.dataSource = self
            
        
            return collectionView
    
            
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.title = "Início"
        self.view.addSubview(self.collectionView)
        // Defininindo Título da Navigation Bar e cor do fundo da tela.
        
        let labelTitle = UILabel(frame: CGRect(x: 18, y: 110, width: 279, height: 82))
        labelTitle.text = "O que você quer cozinhar hoje?"
        labelTitle.textAlignment = .left
        labelTitle.font = UIFont(name: "Epilogue-ExtraBold", size: 32)
        labelTitle.numberOfLines = 2
        
    }
}

extension CozinhaViewController:UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CozinhaCollectionViewCell.identifier, for: indexPath) as? CozinhaCollectionViewCell
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 375, height: 190)
    }
}

