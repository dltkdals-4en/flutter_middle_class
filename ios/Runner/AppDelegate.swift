import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller = self.window.rootViewController as! FlutterViewController

    let channel = FlutterMethodChannel.init(name:"example.com/value", binaryMessenger: controller)
    channel.setMethodCallHandler{(FlutterMethodCall, FlutterResult) in
        if(call.method == "getValue"){
        result("success")
        }else{
        result(FlutterMethodNotImplement)
        }
    }

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
