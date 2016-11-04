<template>
  <div id="app">
    <img src="./assets/logo.png">
    <TodoApp></TodoApp>
  </div>
</template>

<script>
import TodoApp from './components/TodoApp'

export default {
  name: 'app',
  components: {
    TodoApp
  }
}
</script>

<style>
#app {
  text-align: center;
  margin-top: 60px;
}
</style>
