/*
 Copyright 2018-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import UIKit

import MaterialComponents

class ApplicationScheme: NSObject {

  private static var singleton = ApplicationScheme()

  static var shared: ApplicationScheme {
    return singleton
  }

  override init() {
    self.buttonScheme.colorScheme = self.colorScheme
    self.buttonScheme.typographyScheme = self.typographyScheme
    super.init()
  }

  public let buttonScheme = MDCButtonScheme()

  public let colorScheme: MDCColorScheming = {
    let scheme = MDCSemanticColorScheme(defaults: .material201804)
    //TODO: Customize our app Colors after this line
      
      scheme.primaryColor =
        UIColor(red:0.36, green:0.06, blue:0.29, alpha:1.0)
      scheme.onPrimaryColor =
        UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)
      scheme.secondaryColor =
        UIColor(red:0.89, green:0.02, blue:0.15, alpha:1.0)
      scheme.onSecondaryColor =
        UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)
      scheme.surfaceColor =
        UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)
      scheme.onSurfaceColor =
        UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0)
      scheme.backgroundColor =
        UIColor(red:0.96, green:0.89, blue:0.93, alpha:1.0)
      scheme.onBackgroundColor =
        UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0)
      scheme.errorColor =
        UIColor(red:0.99, green:0.59, blue:0.15, alpha:1.0)


    return scheme
  }()

  public let typographyScheme: MDCTypographyScheming = {
    let scheme = MDCTypographyScheme()
    //TODO: Add our custom fonts after this line
      let fontName = "Chalkduster"
      scheme.headline5 = UIFont(name: fontName, size: 24)!
      scheme.headline6 = UIFont(name: fontName, size: 20)!
      scheme.subtitle1 = UIFont(name: fontName, size: 16)!
      scheme.button = UIFont(name: fontName, size: 14)!
       

    return scheme
  }()
}
