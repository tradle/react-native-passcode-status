
import { NativeModules } from 'react-native'

let RNPS = NativeModules.RNPasscodeStatus

// written out for clarity
// { supported, status, get } = RNPS
export default RNPS
