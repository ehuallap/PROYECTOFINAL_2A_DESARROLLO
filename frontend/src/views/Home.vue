<template>
    <div class="text-center">
        <h1 class="text-warning mt-3 mb-3"> Ten el acceso a la información de seminarios y eventos nacionales e internacionales, esencial para estudiantes universitarios. </h1>
        <img src="../assets/alumnos.jpg" class="mb-3" width="500" alt="alumnos">
    </div>
    <div class="text-center">
            <div>
                <router-link class="btn btn-light mr-3 bg-warning btn-block" to="/asistencia">Empezar</router-link>
            </div>
            <div>
                <router-link class="btn btn-light mr-3 bg-light btn-block" to="/nosotros">Más Información</router-link>
            </div>
            
    </div>

    


</template>



<script>

import Input from '../components/Input.vue'
import {mapActions} from 'vuex'
import ListaTareas from '../components/ListaTareas.vue'

import { computed } from '@vue/runtime-core'
const shortid = require('shortid');

export default {
  name: 'Home',
  components: {
      Input, ListaTareas
  },
  data() {
      return {
          tarea: {
              id: '',
              nombre: '',
              categorias: [],
              estado: "",
              numero: 0
          }
      }
  },
  methods: {
      ...mapActions(['setTareas']),
      procesarFormularios(){
          console.log(this.tarea)
          if(this.tarea.nombre.trim() === ""){
              console.log('campo vacio')
              return
          }
          console.log("no esta vacio")  

          //generar id
          this.tarea.id = shortid.generate()
          console.log(this.tarea.id)

          //envian los datos
          this.setTareas(this.tarea)

          //limpiar datos
          this.tarea = {
              id: '',
              nombre: '',
              categorias: [],
              estado: '',
              numero: 0
          }
          


          this.tarea = {
              nombre: '',
              categorias: [],
              estado: "",
              numero: 0
          }
      }
  },
  
}
</script>
