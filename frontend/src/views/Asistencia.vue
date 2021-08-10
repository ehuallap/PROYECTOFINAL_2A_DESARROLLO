<template>

  <h1 class="text-center mt-5 mb-5 text-warning">¿ Que actividad realizar hoy ?</h1>
  <table class="table">
  <thead>
    <tr>
      <th scope="col">ID Actividad</th>
      <th scope="col">Titulo</th>
      <th scope="col">Descripción de la actividad</th>
      <th scope="col">Fecha de inicio</th>
      <th scope="col">Fecha de culminación</th>
      <th scope="col">Duración</th>
    </tr>
  </thead>
  <tbody>
    <tr v-for="item in arrayBlog" :key="item.id">
      <th scope="row">{{item.id}}</th>
      <td>{{item.title}}</td>
      <td>{{item.description}}</td>
      <td>{{item.starts}}</td>
      <td>{{item.ends}}</td>
      <td>{{item.time}}</td>
      <button @click="deleteData(item.id)" type="button"> ELIMINAR </button>
    </tr>
  </tbody>
  </table>
  <h1 class="text-center mt-5 mb-5 text-warning"> También puedes crear tu propia actividad! </h1>
  <form>
    <input type="text" class="form-control my-2  mt-5" placeholder="Titulo" v-model="nuevo_cliente.title">
    <input type="text" class="form-control my-2" placeholder="Descripción" v-model.trim="nuevo_cliente.description">
    <input type="text" class="form-control my-2" placeholder="Fecha de inicio" v-model="nuevo_cliente.start">
    <input type="text" class="form-control my-2" placeholder="Fecha de culminación" v-model="nuevo_cliente.end">
    <input type="text" class="form-control my-2" placeholder="Tiempo de duración" v-model="nuevo_cliente.time">
    <input type="text" class="form-control my-2" placeholder="Clientes iniciales" v-model="nuevo_cliente.clients">
  </form>

  <button @click="postData" type="button" class="btn btn-warning btn-lg btn-block mt-5 mb-5">Post</button>

  <button @click="escoger" type="button" class="btn btn-warning btn-lg btn-block mt-5 mb-5"> Escoger Actividad del dia de hoy</button>
  <h2 class="text-center mb-5">La actividad escogida es: <span class="text-warning mb-3">{{alumno_escogido.title}} </span></h2>
  <h3 class="text-center mb-5"><span class="text-warning">{{alumno_escogido.description}} </span></h3>
  <h3 class="text-center mb-5"> La duración es de: <span class="text-warning">{{alumno_escogido.time}} </span></h3>

</template>

<script>

export default {
    components: {

    },
    data() {
        return {
            alumno_escogido: "",
            arrayBlog: [],
            nuevo_cliente: {
                title:"",
                description:"",
                start: "",
                end: "",
                time: "",
                clients:"",
            },
            objetivo: {
              id: "",
            }
        }
    },
    methods:{
        async consumirApi(){
            try {
                const data = await fetch('http://127.0.0.1:5000/routine/get_routines')
                const array = await data.json()
                console.log(array)
                this.arrayBlog = array;

            } catch (error) {
                console.log(error)
            }
        },
        escoger(){
            const random = Math.floor(Math.random() * this.arrayBlog.length);
            this.alumno_escogido = this.arrayBlog[random]
        },
        postData() {
          // Opciones por defecto estan marcadas con un *
          fetch('http://127.0.0.1:5000/routine/create_routine', {
            method: 'POST', // *GET, POST, PUT, DELETE, etc.
            mode: 'cors', // no-cors, *cors, same-origin
            cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
            credentials: 'same-origin', // include, *same-origin, omit
            headers: {
              'Access-Control-Allow-Origin': '*',

              'Content-Type': 'application/json'
            },
            redirect: 'follow', // manual, *follow, error
            referrerPolicy: 'no-referrer', // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
            body: JSON.stringify({
              title: this.nuevo_cliente['title'].toString(),
              description: this.nuevo_cliente['description'].toString(),
              start: this.nuevo_cliente['start'].toString(),
              end: this.nuevo_cliente['end'].toString(),
              time: this.nuevo_cliente['time'].toString(),
              clients: this.nuevo_cliente['clients'].toString()
            })
            });
        },
      deleteData(id) {
          // Opciones por defecto estan marcadas con un *
          fetch('http://127.0.0.1:5000/routine/delete_routine', {
            method: 'DELETE', // *GET, POST, PUT, DELETE, etc.
            mode: 'cors', // no-cors, *cors, same-origin
            cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
            credentials: 'same-origin', // include, *same-origin, omit
            headers: {
              'Access-Control-Allow-Origin': '*',
              'Content-Type': 'application/json'
            },
            redirect: 'follow', // manual, *follow, error
            referrerPolicy: 'no-referrer', // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
            body: JSON.stringify({
              id: id.toString(),
            })
            });
        },

    },
    created(){
        this.consumirApi()
    }
}

</script>

