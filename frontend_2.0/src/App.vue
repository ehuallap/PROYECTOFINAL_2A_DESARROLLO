<template>
  <div id="app">
    <img src="./assets/logo.png">
    <HelloWorld/>
    <User/>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld'
import Data from './components/Data'
import User from './components/User'

export default {
  name: 'App',
  components: {
    HelloWorld,
    User
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
