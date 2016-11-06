<style src="./HomePage.css" scoped></style>

<template>
  <section class="home-page">
    <header class="header">
      <h3>loc: Beijing University of Posts and Telecommunications</h3>
    </header>

    <section class="air">
      <div class="outer">
        <div class="temperature">70</div>
        <div class="pm2p5">500</div>
      </div>
      <div class="inner">39</div>
    </section>
    <section class="chart-canvas">
      <ChartCanvas/>
    </section>
    <footer class="footer">
      <p>footer</p>
    </footer>
  </section>
</template>

<script>
// import { mapMutations } from 'vuex'
import ChartCanvas from './ChartCanvas'

export default {
  components: { ChartCanvas },

  data () {
    return {}
  }
}
</script>
