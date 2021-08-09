import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
   
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path: '/editar/:id',
    name: 'Editar',
   
    component: () => import(/* webpackChunkName: "about" */ '../views/Editar.vue')
  },
  {
    path: '/nosotros',
    name: 'Nosotros',
   
    component: () => import(/* webpackChunkName: "about" */ '../views/Nosotros.vue')
  },
  {
    path: '/servicio',
    name: 'Servicio',
   
    component: () => import(/* webpackChunkName: "about" */ '../views/Servicio.vue')
  },
  {
    path: '/video',
    name: 'Video',
   
    component: () => import(/* webpackChunkName: "about" */ '../views/Video.vue')
  },
  {
    path: '/asistencia',
    name: 'Asistencia',
   
    component: () => import(/* webpackChunkName: "about" */ '../views/Asistencia.vue')
  } 
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
