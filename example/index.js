/**
 * @format
 */

import { AppRegistry } from 'react-native'

import { name as appName } from './app.json'
import TesterApp from './src/App'
// import App from './src/App'

AppRegistry.registerComponent(appName, () => TesterApp)
