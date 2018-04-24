import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!

    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        webView.evaluateJavaScript("navigator.userAgent") { [weak webView] (result, error) in
            if let webView = webView, let userAgent = result as? String {
                webView.customUserAgent = userAgent + "[NATIVE/WV]"
            }
        }
        self.view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if let path = Bundle.main.path(forResource: "index", ofType: "html", inDirectory: "static") {
            webView.load(URLRequest(url: URL(fileURLWithPath: path)))
        }
    }
}
