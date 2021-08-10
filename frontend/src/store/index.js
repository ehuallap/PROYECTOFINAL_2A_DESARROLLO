import { createStore } from 'vuex'
import router from '../router'

export default createStore({
  state: {
    //   Aqui van las variables globales, se dejo esto como ejemplo,  y se puedeusarsi es que lo necesitan
      tareas: [],
      tarea: {
        id: '',
        nombre: '',
        categorias: [],
        estado: "",
        numero: 0
      }
  },
  mutations: {
      //cargar del local storage
      cargar(state, payload){
          state.tareas = payload
      },
      set(state, payload){
          state.tareas.push(payload)
          console.log(state.tareas)
          //local storage tambien lo de abajo
          localStorage.setItem('tareas', JSON.stringify(state.tareas))
      },
      eliminar(state, payload){
          state.tareas = state.tareas.filter(item => item.id !== payload)
          //local storage
          localStorage.setItem('tareas', JSON.stringify(state.tareas))
      },
      tarea(state, payload){
          if(!state.tareas.find(item => item.id === payload)){
            router.push('/') 
            return
          }
          state.tarea = state.tareas.find(item => item.id === payload)
      },
      update(state, payload){
          state.tareas = state.tareas.map(item => item.id === payload.id ? payload : item)
          router.push('/')
          //Local Storage
          localStorage.setItem('tareas', JSON.stringify(state.tareas))
      }

  },
  actions: {

    //lOCAL STORAGE SIN BASE DE DATOS POR AHORA
      cargarLocalStorage({commit}){
          if(localStorage.getItem('tareas')){
              const tareas = JSON.parse((localStorage.getItem('tareas')))
            commit('cargar', tareas)
            return 
          }
          localStorage.setItem('tareas', JSON.stringify([]))
      },

      setTareas({commit}, tarea){
          commit('set', tarea)
      },
      deleteTareas({commit}, id){
          commit('eliminar', id)
      },
      setTarea({commit}, id){
          commit('tarea', id)
      },
      updateTarea({commit}, tarea){
          commit('update', tarea)
      }
  },
  modules: {
  }
})
