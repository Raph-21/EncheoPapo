//
//  TabBarController.swift
//  EncheoPapo
//
//  Created by Raphael on 15/09/22.
//

// MARK: Configurando o tab bar
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBarController()
    }
    
    private func setupTabBarController(){
        
        let geladeira = UINavigationController(rootViewController: TelaGeladeira())
        let cozinha = UINavigationController(rootViewController: CozinhaViewController())
        let conquistas = UINavigationController(rootViewController: TelaConquistas())
        
        
        self.setViewControllers([geladeira, cozinha, conquistas], animated: false)
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
        
        guard let itens = tabBar.items else{return}
        
        itens[0].title = "Geladeira"
        itens[0].image = UIImage(named: "cubo 1")
        itens[0].selectedImage = UIImage(named: "cubo-2 1")
        
        itens[1].title = "Início"
        itens[1].image = UIImage(named: "casa 2")
        itens[1].selectedImage = UIImage(named: "casa-2 1")
        
        itens[2].title = "Conquistas"
        itens[2].image = UIImage(named: "trofeu 1")
        itens[2].selectedImage = UIImage(named: "trofeu-2 1")
        
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 2
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.2
        tabBar.tintColor = .black
        
        self.selectedIndex = 1
    }
}

// MARK: Especificando telas
class TelaGeladeira: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
}



class TelaConquistas: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
}
