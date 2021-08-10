<template>
  <Navbar/>
  <div class="container">
    <router-view/>
  </div>
</template>

<script>
// localStorage este map actions
import {mapActions} from 'vuex' 
import Navbar from './components/Navbar.vue'
export default {
    components: {
        Navbar
    },
    // tambien este methodo del local storage y  el created
    methods:{
        ...mapActions(['cargarLocalStorage'])
    },
    created(){
        this.cargarLocalStorage()
    }
}
</script>
