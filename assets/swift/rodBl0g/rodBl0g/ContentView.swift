//
//  ContentView.swift
//  rodBl0g
//
//  Created by Jarrod Masarik on 10/17/22.
//
import UIKit
import SwiftUI
// for webView
import WebKit

struct ContentView: View {
@StateObject var model = WebViewModel()

var body: some View {
    ZStack(alignment: .bottom) {
        Color.pink.ignoresSafeArea()
        
        VStack(spacing: 0) {
            HStack(spacing: 10) {
                HStack {
                    
                }.background(Color.purple).cornerRadius(30)}.padding(10)
            
            ZStack {
                WebView()
                
                if model.isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                }
            }
            
        }
    }
    .toolbar {
        ToolbarItemGroup(placement: .bottomBar) {
            
            
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// rod's webView of "jurrod.com"
struct WebView: UIViewRepresentable {
    // explicit typecasting
    typealias UIViewType = WKWebView
    let webView: WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    // static var
    //var webView = WKWebView.self() // i hope these work..
    var url = URL(string: "https://www.jurrod.com") // hey i know this site
    // functions
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
    // gets ran on start..initialize variables JUST IN CASE !
    init () {
        webView = WKWebView(frame: .zero)
        webView.overrideUserInterfaceStyle = .dark
        webView.backgroundColor = UIColor.magenta
        url = URL(string: "https://www.jurrod.com") // maybe..?
        
        loadUrl() // whats this do?
    }
    // oh i make it here..
    func loadUrl(){
        // what the fuck is this conditional??
        webView.load(URLRequest(url: ((url ?? url)!)))// GET request
    }
}
