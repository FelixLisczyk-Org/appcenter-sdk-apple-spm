# App Center SDK as a binary Swift package for iOS and macOS

Check out the official repository from microsoft for the SDK here: [https://github.com/microsoft/appcenter-sdk-apple](https://github.com/microsoft/appcenter-sdk-apple)

# Note
Add the following snippet to your app for AppCenterDistribute to localize the update dialog properly:
```swift
if let bundleURL = Bundle.main.url(forResource: "AppCenter_AppCenterDistributeTarget", withExtension: "bundle") {
    Distribute.resourceBundle = Bundle(url: bundleURL)
}
```