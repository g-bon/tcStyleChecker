# tcStyleChecker
*tcStyleChecker* is a plugin to enable jshint based syntax and style checking in SmartBear [TestComplete](http://smartbear.com/product/testcomplete/overview/).


## Installation

## File structure:
* **installer**
  - **node-v0.10.22-x86.msi** : node js package
  - **SCInstaller.iss** : installShield script
  * **Output**
    - **TCSyntaxChecker.exe** : installer, includes NodeJS and JSHint

* **src**
  - **CheckStyle.tcx**  : testcomplete plugin, it's a zip archive with the 3 following files inside
  - **CheckStyle.sj**       : jscript file that calls JSHint
  - **description.xml**     : describes the plugin and defines the UI button
  - **soicon.bmp**          : button icon
  * **config**
    - **config.json**       : defines the the style rules to apply
    - **reporter.js**       : defines the output format

### Manual installation (preferred method to get the latest jshint version)
  - Install NodeJS
  - Install JSHint from command line:  npm install -g jshint
  - Copy CheckStyle.tcx to C:\Program Files (x86)\SmartBear\TestComplete 9\Bin\Extensions\ScriptExtensions\
  - Copy config.json and reporter.js to C:\Users\USERNAME\AppData\Local\SmartBear\TestComplete\9.0\StyleChecker\
  - In Testcomplete open File/Install Script Extensions and enable the extension

### Using the installer
  - Run TCSyntaxChecker.exe (TestComplete must be closed)

## Contributing
*tcStyleChecker* has been initially written and is maintained by Gabriele Bonetti but you are very welcome to submit a [pull request](https://help.github.com/articles/using-pull-requests/) for any improvement you might like.
