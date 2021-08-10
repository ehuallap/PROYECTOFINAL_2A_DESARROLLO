<template>
  <div id="app">
    <!-- Router -->
    <nav>
      <ul>
        <li>
          <router-link to='/'> User </router-link>
        </li>
        <li>
          <router-link to='/data'> Data </router-link>
        </li>
        <li>
          <router-link to='/hello'> Hello </router-link>
        </li>
      </ul>
    </nav>
    <router-view></router-view> <!-- Esto se remplaza segun el componente seleccionado en el router-->
    <!-- fin Router -->
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld';
import Data from './components/Data';
import User from './components/User';

export default {
  name: 'App',
  components: {
    HelloWorld,
    Data,
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
