<template>
    <div class="navbar navbar-dark bg-warning">
        <router-link to="/" class="navbar-brand">
        EVENCORP
        </router-link>
        <div class="d-flex">
            <div>
                <router-link class="btn btn-light mr-3" to="/">Inicio</router-link>
            </div>
            <div>
                <router-link class="btn btn-light mr-3" to="/nosotros">Nosotros</router-link>
            </div>
            <div> 
                <router-link class="btn btn-light mr-3" to="/servicio">Servicio</router-link>
            </div>
            <div> 
                <router-link class="btn btn-light mr-3" to="/video">Video</router-link>
            </div>
            <div> 
                <router-link class="btn btn-light mr-3" to="/asistencia">Participación</router-link>
            </div>
        </div>
    </div> 
</template>

<script>
export default {

}
</script>
