// Getting rid of the import of the vue app as i will be doing the presentation in the rails form. 
import Vue from 'vue/dist/vue.esm'
import VueResource from 'vue-resource'

Vue.use(VueResource)

document.addEventListener('DOMContentLoaded', () => {
  Vue.http.headers.common['X-CSRF_Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

  var element = document.getElementById("new-user-form")

  if (element != null){

    var user = JSON.parse(element.dataset.user)

    var app = new Vue({
      el: element,
      data: function () {
        return { user: user }
      },
      methods: {
        testMethod: function () {
          if((document.getElementById("pw").value) == (document.getElementById("pw-conf").value)) {
            console.log("Password Is The Same");
          } else {
            console.log("Password Is Not The Same!");
          }
        },
        saveUser: function () {
          this.$http.post('/signup', {user: this.user}).then(response => {
            console.log("User Saved");
          }, response => {
            console.log("User Not Saved")
          })
        }
      }
    })
  }
})