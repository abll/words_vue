import Vue from 'vue/dist/vue.esm'
import Login from '../login_app.vue'

document.addEventListener('DOMContentLoaded', () => {
   const app = new Vue({
     el: '#login',
     data: {},
     components: { Login }
   })
})