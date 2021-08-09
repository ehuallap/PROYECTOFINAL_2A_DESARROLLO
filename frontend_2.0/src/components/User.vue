<template>
<div class='users'>
    <h2>Users</h2>
    <ul>
        <li v-for='user in users'>
            {{user.Name}} - {{ user.Email }}
            <button v-on:click='deleteUser(user)'>x</button>
        </li>
    </ul>

    <form v-on:submit='addUser'>
    <!-- <form v-on:submit.prevent='addUser'> --> <!-- con esto prevenimo el comportamiento por defecto, la recarga de pagina al submit-->
        <input type='text' v-model='newUser.name' placeHolder='name'>
        <input type='email' v-model='newUser.email' placeHolder='email'>
        <button type='submit'> Add </button>
    </form> <br>
</div>
</template>

<script>
export default{
    // con esto podemos crear variables que puedan usarse en el html(template)
    data(){
        return {
            users: [],
            newUser: {}
        }
    },
    methods:{
        addUser(e){
            e.preventDefault(); // cancela el comportamiento por defecto, en este caso evitar que se vuelva a cargar la pagina luego del submit
            console.log('user added');
            this.users.push(this.newUser);
            this.newUser = {};
        },
        deleteUser(user){
            this.users.splice(this.users.indexOf(user), 1);
            console.log('deleteUser');
        }
    },
    created(){ // este metodo se llama cuando se cra el componente
        // con esto hacemos una peticion a un server
        this.$http.get('http://localhost:5000/client/get_clients')
            .then(res => this.users = res.body);
    }
}
</script>

<style>
    .users{
        background-color: #cccccc;
    }
</style>
