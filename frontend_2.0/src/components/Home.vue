<template>
  <h2> Bienvenido estimado {{Client}}</h2>
    <div class="text-center">
        <h1 class="text-warning mt-3 mb-3"> Ten el acceso a la información de seminarios y eventos nacionales e internacionales, esencial para estudiantes universitarios. </h1>

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
export default {
  name: 'Home',
  data () {
    return {
      Client: 'Cliente'
    }
  }
}
</script>
