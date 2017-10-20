import Vue from 'vue/dist/vue.esm'
import login from '../login.vue'

document.addEventListener('DOMContentLoaded', () => {
   const app = new Vue({
     el: '#login',
     data: {},
     components: { login }
   })
})