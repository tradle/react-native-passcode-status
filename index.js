
import { NativeModules } from 'react-native'

let RNPS = NativeModules.RNPasscodeStatus

// written out for clarity
const supported = RNPS.supported
const status = RNPS.status
export { supported, status }
