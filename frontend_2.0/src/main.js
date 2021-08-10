// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'


import VueResource from 'vue-resource'
Vue.use(VueResource);

import VueRouter from "vue-router"
Vue.use(VueRouter)

import Data from './components/Data'
import User from './components/User'
import HelloWorld from "./components/HelloWorld";
import Home from "./components/Home";

import Asistencia from 

const router = new VueRouter({
  mode: 'history',
  base: __dirname,
  routes: [
    {
      path: '/',
      component: Home
    },
    {
      path: '/data',
      component: Data
    },
    {
      path: '/hello',
      component: HelloWorld
    }
  ]
});

Vue.config.productionTip = false
new Vue({
  router,
  components: { App },
  template: '<App/>'
}).$mount('#app')
