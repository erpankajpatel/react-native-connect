import React, { useEffect } from 'react'
import PhyConnectModule, { Counter } from 'react-native-connect'

const App = () => {
  useEffect(() => {
    console.log(PhyConnectModule)
  })

  return <Counter />
}

export default App
