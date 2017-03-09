//
//  SearchResultViewController.swift
//  ReswiftAppCoordinatorDemo
//
//  Created by Xianning Liu on 08/01/2017.
//  Copyright © 2017 xianlinbox. All rights reserved.
//

import UIKit

class SearchResultSceneViewController: BaseViewController {

    var searchResultCoordinator: SearchResultsSceneCoordinatorProtocol?
    var searchResultView:SearchResultView?

    //MARK: update state
    override func newState(state: AppState) {
        if let properties = state.property.properties{
            self.searchResultView?.update(properties: properties)
        }
        super.newState(state: state)
    }

    //MARK: user action
    func showPropertyDetail(index:Int) {
        self.searchResultCoordinator?.showPropertyDetail(index: index)
    }

    //MARK: lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        searchResultView = SearchResultView(frame: self.view.bounds)
        searchResultView?.selectPropertyAt = self.showPropertyDetail
        self.view.addSubview(searchResultView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
