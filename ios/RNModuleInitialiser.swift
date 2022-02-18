@objc(RNModuleInitialiser)
final class RNModuleInitialiser: NSObject {

    //Inject your dependencies here
    override init() {

    }

}

extension RNModuleInitialiser: RCTBridgeDelegate {

    func sourceURL(for bridge: RCTBridge!) -> URL! {
#if DEBUG
        return RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
#else
        return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
#endif
    }

    func extraModules(for bridge: RCTBridge!) -> [RCTBridgeModule]! {

        var extraModules = [RCTBridgeModule]()

        //Initialise the modules here using the dependencies injected above

        return extraModules
    }

}