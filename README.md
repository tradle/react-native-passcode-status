# react-native-passcode-status

thin wrapper around [UIDevice-PasscodeStatus](https://github.com/liamnichols/UIDevice-PasscodeStatus)

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
