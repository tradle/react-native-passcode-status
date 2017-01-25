
import { NativeModules } from 'react-native'

let RNPS = NativeModules.RNPasscodeStatus

// written out for clarity
const { supported, status, get } = RNPS
export default { supported, status, get }
