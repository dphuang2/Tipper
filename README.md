# Tipper

**tipper** is a tip calculator application for iOS.

Submitted by: **Dylan Huang**

Time spent: **9** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [x] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Theme options in the settings view
- [x] Added image in front of UITextField


## Video Walkthrough 

Here's a walkthrough of implemented user stories:
Basic app usage and Theme Options
<a href="http://imgur.com/hszhHN4"><img src="http://i.imgur.com/hszhHN4.gif" title="source: imgur.com" /></a>
UI animation, Remembering Bill amount, and keyboard as First Responder
<a href="http://imgur.com/YMsRMdG"><img src="http://i.imgur.com/YMsRMdG.gif" title="source: imgur.com" /></a>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Since I don't own a macintosh I had to turn my desktop into a Hackintosh and run Xcode from there. The whole process of making a Hackintosh as well as installing Xcode onto it took about two days of work. After I got Xcode working, I created the basic version of the app pretty quickly but the most challenging thing was ironing out the bugs for the SettingsView. More specifically, implementing the different theme options took awhile to learn how to do because I ran into problems trying to set all views to the same theme. Another big challenge was when I came across something I wanted to do and there were no specific tutorials or forum posts about it so I had to look into the apple documentation to figure out how some functions work.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
