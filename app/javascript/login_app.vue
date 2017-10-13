<template>
    <div id="login">
        <label for="user">Username:</label><input type="text"><br>
        <label for="password">Password:</label><input type="text"></label><br>
        <button>Login</button> 
        <a href="#new">New User</a>
    </div>
</template>

<script>
    export default {
        name: 'Login',
        data: function () {
            return {}
        }
    }
</script>
