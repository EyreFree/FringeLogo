# FringeLogo

iOS App 仿小红书刘海 Logo 实现，效果如下：

![](Res/Preview.gif)

关键代码：

```swift
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = ViewController()
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
        
        // 添加 Logo
        if (UIDevice.isiPhoneXSeries) {
            let labelSize: CGSize = CGSize(width: 50, height: 20)
            let label: UILabel = UILabel(frame:
                CGRect(
                    x: (UIScreen.main.bounds.size.width - labelSize.width) / 2,
                    y: 5,
                    width: labelSize.width,
                    height: labelSize.height
                )
            )
            label.text = "小红书"
            label.textAlignment = .center
            label.font = UIFont.pingFangSCBoldItalic(ofSize: 12)
            label.backgroundColor = UIColor(hexRGB: 0xf03b3f)
            label.textColor = UIColor(hexRGB: 0xfffffd)
            label.layer.cornerRadius = labelSize.height / 2
            label.clipsToBounds = true
            label.tag = 2333
            self.window?.addSubview(label)
            self.window?.bringSubviewToFront(label)
        }
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // 隐藏 Logo
        if let label = self.window?.viewWithTag(2333) {
            label.isHidden = true
        }
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // 显示 logo
        if let label = self.window?.viewWithTag(2333) {
            label.isHidden = false
        }
    }
}
```