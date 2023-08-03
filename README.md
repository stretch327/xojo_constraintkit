# Autolayout

## Description
This is an autolayout library for use with Xojo iOS and Xojo macOS Desktop projects. It gives access to Apple's newer Anchor system as well as Animation and about 40 helper methods to make dealing with constraints a little easier.

## Installation
Open the sample project which matches your project type (iOS or macOS), copy the folder called "Copy This Folder" and paste it into your project.

## Usage
The simplest usage is to simply call:

Self.ConvertConstraintsForAllControls(999) in the Opening event of your macOS Window or iOS Screen. This can be done on a view by view basis so you can still use Xojo's positioning system if your app doesn't need constraints for everything.

For an iOS project, your constraints will be converted to SOSLayoutConstraints which are effectively NSLayoutConstraints at runtime. Once that's done you can add, remove and manipulate the constraints as necessary, including using Anchors to simplify things.

For a macOS project, your locks will be converted to SOSLayoutConstraints and from then on, if you need to modify control positions, you will need to use constraints to do so.

## Support
Please file questions, bug reports and feature requests as Issues on this repo. If you would like ask a more direct question, you can message me directly on Xojo's user forum at https://forum.xojo.com. My username there is Greg_O.

## Contributing
At the moment, this library covers almost all of Apple's constraint capabilities for iOS and macOS, but if Apple does something new, we will try to keep up. If you feel that the library is missing something please file an issue or fork the project, *create a branch for your idea* and then create a pull request. We will not accept pull requests that go directly into main.

## License
This project is MIT licensed.

