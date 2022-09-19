//
//  TabBarController.swift
//  EncheoPapo
//
//  Created by Raphael on 15/09/22.
//

// MARK: Configurando o tab bar
import UIKit

class TabBarController: UITabBarController{
    
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
        
        itens[0].title = ""
        itens[0].image = UIImage()
        
        itens[1].title = ""
        itens[1].image = UIImage()
        
        itens[2].title = ""
        itens[2].image = UIImage()
    }
}

// MARK: Especificando telas
class TelaGeladeira: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.title = "Geladeira"
        // Do any additional setup after loading the view.
    }
}



class TelaConquistas: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.title = "Conquistas"
        // Do any additional setup after loading the view.
    }
}
