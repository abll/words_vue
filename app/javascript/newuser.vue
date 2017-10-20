<template>
    <div id="newuser">
        <div class="form control">
            <div class="form-group">
                <label for='name'>Name:</label>
                <input type="text">
            </div>
            <div class="form-group">
                <label for='email'>Email:</label>
                <input type="text">
            </div>
            <div class="form-group">
                <label for='name'>Password:</label>
                <input type="text">
            </div>
            <button class="btn btn-default" type="submit">Sign Up</button>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'newuser',
        data: function() {
            return {}
        }
    }
</script>

<!-- 
    <div class="form control">
            <div class="form-group">
                <label for='name'>Name:</label>
                <input type="text">
            </div>
            <div class="form-group">
                <label for='email'>Email:</label>
                <input type="text">
            </div>
            <div class="form-group">
                <label for='name'>Password:</label>
                <input type="text">
            </div>
            <button class="btn btn-default" type="submit">Sign Up</button>
        </div>
-->