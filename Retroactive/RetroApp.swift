//
//  RetroApp.swift
//  Retroactive
//

import Cocoa

let itunesVersionMapping: [iTunesVersion: String] = [.darkMode: "12.9.5", .appStore: "12.6.5", .configurator: "Apple Configurator 2", .classicTheme: "11.4", .coverFlow: "10.7"]
let itunesFeatureMapping: [iTunesVersion: String] = [.darkMode: "DJ apps and Dark Mode".localized(), .appStore: "Ringtones and iTunes U".localized(), .configurator: "App Store".localized(), .classicTheme: "Classic Look".localized(), .coverFlow: "CoverFlow".localized()]
let itunesScreenshotMapping: [iTunesVersion: String] = [.darkMode: "itunes12_9", .appStore: "itunes12_6", .configurator: "itunes_configurator", .classicTheme: "itunes11_4", .coverFlow: "itunes_10_7"]

class iTunesApp: NSObject {
    var version: iTunesVersion!
    var versionNumberString: String!
    var featureDescriptionString: String!
    var previewScreenshot: NSImage!
    var downloadURL: URL!
    
    init(_ version: iTunesVersion) {
        self.version = version
        self.versionNumberString = itunesVersionMapping[version]
        self.featureDescriptionString = itunesFeatureMapping[version]
        self.previewScreenshot = NSImage(named: itunesScreenshotMapping[version]!)
        self.downloadURL = URL(string: "")
    }
}
