<template>
  <div id="app">
    <HomePage></HomePage>
  </div>
</template>

<script>
import HomePage from './components/HomePage'

export default {
  name: 'app',
  components: {
    HomePage
  }
}
</script>
<style>
html {height:100%;}
* {margin: 0;padding: 0;}
a {text-decoration: none;color: #555;}
img {border: 0;}
body { font: 14px 'Avenir', Helvetica, Arial, sans-serif; background: #f5f5f5; color: #2c3e50;}
</style>