
# RewardsSDK 

RewardsSDK by CloudCard

## Installation

CocoaPods is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate RewardsSDK into your Xcode project using CocoaPods, specify it in your Podfile:



```bash
pod 'RewardsSDK', :git => 'https://github.com/CloudCardInc/cc-rewards-ios-sdk.git'
```
    
## Usage

```swift
import RewardsSDK

RewardsManager.shared.initialize(origin: "XXXX",
                                 cardholderId: "XXXX",
                                 uiContext: self,
                                 headerTitle: "XXXX",
                                 userProfileName: "XXXX",
                                 userProfileImage: URL,
                                 summaryContent: "XXXX",
                                 userCurrentLocation: CLLocation,
                                 theme: RewardsSDKTheme)
```

## Parameters

```swift
origin: String
```
origin parameter requires string type value. It will be provided by CloudCard to activate the RewardsSDK.


```swift
cardholderId: String
```
cardholderId parameter requires Cardholder ID of logged-in user in the app e.g ch_xxxxxxxxx. 


```swift
uiContext: viewController-Reference
```
uiContext parameter will take current view reference to open RewardsSDK.


```swift
headerTitle: String
```
headerTitle is optional and can be send as nil to initialize function. It support string value to display title. 


```swift
userProfileName: String
```
userProfileName parameter is optional. It can take nil or can be filled with string value of logged-in user name. 


```swift
userProfileImage: URL()
```
userProfileImage parameter is optional. It can be nil or can be filled with URL of image for user profile picture.


```swift
summaryContent: String
```
summaryContent parameter is optional. It can be send as nil or with string value.


```swift
userCurrentLocation: CLLocation,
```
userCurrentLocation is optional parameter and can be send as nil to initialize function. It support CLLocation with user coordinates to display nearby offers.


```swift
theme: RewardSDKTheme()
```
theme parameter support custom theme to set RewardsSDK looks and feel. It is optional parameter can be send nil to initialize function.


## RewardsManager Extras

```swift
RewardsManager.shared.logoutUser()
```
To logout current logged-in user from RewardsSDK.

```swift
RewardsManager.shared.dismissRewards { Bool in
}
```
To dismiss RewardsSDK from screen.

```swift
RewardsManager.shared.addCustomCallbacks(callbacks: [String])
```
To register custom callsback in RewardsSDK.


## RewardsManagerDelegate

```swift
protocol RewardsManagerDelegate: NSObjectProtocol {
    func errorOccured(error: String, reason: String)
    func callbackDetected(name: String)
}

RewardsManager.shared.delegate = self
```
RewardsSDK provides protocol in case of error occured or custom callback received in SDK.


     
## RewardsSDKTheme

```swift
let customTheme = RewardsSDKTheme()
customTheme.headerColor = Color
customTheme.primaryColor = Color
customTheme.interactiveColor = Color
customTheme.boldFontName = Font Name
customTheme.mediumFontName = Font Name
customTheme.regularFontName = Font Name
customTheme.lightFontName = Font Name
customTheme.logoStyle = RewardImageStyle
customTheme.profileImageStyle = RewardImageStyle
customTheme.brandDetailsHeaderStyle = RewardHeaderStyle
```


## RewardsSDKTheme Parameters

```swift
headerColor = .Color
```
```swift
primaryColor = .Color
```
```swift
interactiveColor = .Color
```
```swift
boldFontName = "Font Name in String"
```
```swift
mediumFontName = "Font Name in String"
```
```swift
regularFontName = "Font Name in String"
```
```swift
lightFontName = "Font Name in String"
```
```swift
logoStyle = .RewardsImageStyle
```
```swift
profileImageStyle = .RewardsImageStyle
```
```swift
brandDetailsHeaderStyle = .RewardsHeaderStyle
```                                 
     
## RewardImageStyle

```swift
enum RewardsImageStyle: Int {
    case roundedRect
    case circular
}
```

## RewardHeaderStyle

```swift
enum RewardsHeaderStyle: Int {
    case diagonal
    case rectangular
}
```                            
       