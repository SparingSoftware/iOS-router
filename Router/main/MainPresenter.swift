//
//  MainPresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation


class MainPresenter: IMainPresenter {
    
    private weak var view: IMainView?
    private var user: User?
    
    //
    
    init(
        view: IMainView?,
        user: User?
    ) {
        self.view = view
        self.user = user
    }
    
    //
    // Lifecycle
    //
    
    func viewDidLoad() {
        view?.setupViews()
        
        if let user = self.user {
            view?.showTitle(title: "Hello \(user.name)")
        } else {
            view?.showTitle(title: "Hello Anonymous!")
        }
    }
    
    //
    // Actions
    //
    
    func logoutClicked() {
        view?.backToLogin()
    }
    
    func aboutClicked() {
        view?.showAbout()
    }
    
}



//


protocol IMainPresenter {
    
    // Lifecycle
    func viewDidLoad()
    
    //
    func logoutClicked()
    func aboutClicked()

    
}

//

protocol IMainView: class {
    
    func setupViews()
    func showTitle(title: String)
    func backToLogin()
    func showAbout()
    
}
