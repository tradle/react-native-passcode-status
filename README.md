# react-native-passcode-status

check if device-level passcode is supported/enabled/disabled

thin wrapper around [UIDevice-PasscodeStatus](https://github.com/liamnichols/UIDevice-PasscodeStatus)

## Installation

See [Linking Libraries](http://facebook.github.io/react-native/docs/linking-libraries-ios.html)

## Usage

```js
import { supported, status } from 'react-native-passcode-status'
if (supported) {
  switch (status) {
  case 'enabled':
    // do something
    break;
  case 'disabled':
    // do something else
    break;
  case 'unknown':
    // do something elser
    break;
  }
} else {
  // your iOS version is probably < 8
}
```
