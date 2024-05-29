//
//  SplashViewController.swift
//  RiveClassDojo
//
//  Created by Jakub Kašpar on 29.05.2024.
//

import RiveRuntime
import SnapKit
import UIKit

final class CDCSplashViewController: UIViewController {

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupAppearance()
        setupConstraints()
    }

    private func setupAppearance() {
        view.addSubview(riveAnimationView)
    }

    private func setupConstraints() {
        riveAnimationView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().offset(-60)
            $0.size.equalTo(200)
        }
    }

    // MARK: - Accessors

    private lazy var riveAnimationView: RiveView = riveAnimationViewModel.createRiveView()

    private lazy var riveAnimationViewModel: RiveViewModel = {
        let riveModel = RiveViewModel(fileName: "classdojo")
        return riveModel
    }()
}
