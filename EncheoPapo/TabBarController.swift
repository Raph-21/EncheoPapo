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
        let cozinha = UINavigationController(rootViewController: TelaCozinha())
        let conquistas = UINavigationController(rootViewController: TelaConquistas())

        
        self.setViewControllers([geladeira, cozinha, conquistas], animated: false)
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
        
        guard let itens = tabBar.items else{return}
        
        itens[0].title = ""
        itens[0].image = UIImage(imageLiteralResourceName: "cubo 1")
        
        itens[1].title = ""
        itens[1].image = UIImage(imageLiteralResourceName: "casa 2")
        
        itens[2].title = ""
        itens[2].image = UIImage(imageLiteralResourceName: "trofeu 1")
    }
}

// MARK: Especificando telas
class TelaGeladeira: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
    }
}

class TelaCozinha: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
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
