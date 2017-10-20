<template>
    <div id="login">
        <div class="wrapper container">
            <form class="form-group">
                <h2>Please sign in</h2>
                <label for="user">Username:</label><input class="two" type="text">
                <label for="password">Password:</label><input class="four" type="text">
                <button class="btn btn-default" type="submit">Login</button>
                <div><a  href="#new">New User</a></div>
            </form>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'login',
        data: function () {
            return {}
        }
    }
</script>
