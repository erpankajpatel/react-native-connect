import * as React from 'react'
import { Button, NativeModules, StyleSheet, Text, View } from 'react-native'

export const addOne = (input: number) => input + 1

const phyllo = NativeModules.PhyConnectModule

export const Counter = () => {
  const [count, setCount] = React.useState(0)

  return (
    <View style={styles.container}>
      <Text>You pressed {count} times</Text>
      <Button onPress={() => {
        const result = phyllo.initialize('appName', 'token', 'userId', 'dev', '');}} title='Press Me' />
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    height: 200,
  },
})

export default Counter;
