//
//  rodView.swift
//  rodBl0g
//
//  Created by Jarrod Masarik on 10/17/22.
//

import Combine
import WebKit

class WebViewModel: ObservableObject {
    let webView: WKWebView
    // "reality can be whatever i want it to be" - not thanos, me; rod.
    private let navigationDelegate: rodViewNavigationDelegate

    init() {
        let configuration = WKWebViewConfiguration()
        configuration.websiteDataStore = .nonPersistent()
        webView = WKWebView(frame: .zero, configuration: configuration)
        navigationDelegate = rodViewNavigationDelegate()

        webView.navigationDelegate = navigationDelegate
        setupBindings()
    }

    @Published var urlString: String = ""
    @Published var canGoBack: Bool = false
    @Published var canGoForward: Bool = false
    @Published var isLoading: Bool = false

    private func setupBindings() {
        webView.publisher(for: \.canGoBack)
            .assign(to: &$canGoBack)

        webView.publisher(for: \.canGoForward)
            .assign(to: &$canGoForward)

        webView.publisher(for: \.isLoading)
            .assign(to: &$isLoading)

    }

    func loadUrl() {
        guard let url = URL(string: urlString) else {
            return
        }

        webView.load(URLRequest(url: url))
    }

    func goForward() {
        webView.goForward()
    }

    func goBack() {
        webView.goBack()
    }
}
