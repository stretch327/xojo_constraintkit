# Autolayout

## Description
This is an autolayout library for use with Xojo iOS and Xojo macOS Desktop projects. It gives access to Apple's newer Anchor system as well as Animation and about 40 helper methods to make dealing with constraints a little easier.

## Installation
Open the sample project which matches your project type (iOS or macOS), copy the folder called "Copy This Folder" and paste it into your project.

## Usage
The simplest way to start is to simply call:

Self.ConvertConstraintsForAllControls(999) in the Opening event of your macOS Window or iOS Screen. This can be done on a view by view basis so you can still use Xojo's positioning system if your app doesn't need constraints for everything.

For an iOS project, your constraints will be converted to SOSLayoutConstraints which are effectively NSLayoutConstraints at runtime. Once that's done you can add, remove and manipulate the constraints as necessary, including using Anchors to simplify things. Personally if I can do something with Anchors, I don't even bother with constraints directly any more.

For a macOS project, your locks will be converted to SOSLayoutConstraints and from then on, if you need to modify control positions, you will need to use constraints to do so.

For more information, please see this webinar that I did with Xojo in Summer 2023 when I launched this project.

https://www.youtube.com/watch?v=j9PHzlYBm2A

## Notes

- Always work right to left or bottom to top. That is, make constraints that connect to things against their left/leading/top edge, so that the offsets are always >= 0.
- Be careful not to over-constrain items on your layouts. Each item (other than the view itself) should have no more than two required equality constraints in any direction, either horizontally or vertically. 
  - For instance:
    - Left and Width
    - Left and Right 
    - Width and Right
    - NEVER Left, Right and Width, especially when they would create a layout that cannot be satisfied by the solver. It'll likely crash.
  - You may use inequalities and/or lower priority constraints to describe your preferences.
- If you plan to support Right-to-Left languages, use Leading & Trailing instead of Left & Right unless your layout absolutely needs it. For instance, text tends to use Leading/Trailing but often pictures and graphics use Left/Right. Do what's right for your layout and your audience.



## Support

Please file questions, bug reports and feature requests as Issues on this repo. If you would like ask a more direct question, you can message me directly on Xojo's user forum at https://forum.xojo.com. My username there is Greg_O.

## Contributing
At the moment, this library covers almost all of Apple's constraint capabilities for iOS and macOS, but if Apple does something new, I will try to keep up. If you feel that the library is missing something please file an issue or fork the project, *create a branch for your idea* and then create a pull request. We will not accept pull requests that go directly into main.

## License
This project is MIT licensed.

