//
//  ViewController.swift
//  YandexMobileAdsSample
//
//  Created by Alexander Kadyrov on 24.02.2022.
//  alexander-kad@yandex.ru
//

import YandexMobileAds
import UIKit

class ViewController: UIViewController {
    
    private lazy var adLoader: YMANativeAdLoader = {
        let item = YMANativeAdLoader()
        item.delegate = self
        return item
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        let request = YMANativeAdRequestConfiguration(blockID: "adf-279013/966633")
        adLoader.loadAd(with: request)
    }
}

extension ViewController: YMANativeAdLoaderDelegate {
    
    func nativeAdLoader(_ loader: YMANativeAdLoader, didLoad ad: YMANativeAd) {
        
    }
    
    func nativeAdLoader(_ loader: YMANativeAdLoader, didFailLoadingWithError error: Error) {
        
    }
}
