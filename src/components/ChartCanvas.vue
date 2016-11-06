<style scoped>
.my-chart {
  position: relative;
  width: 100%;
}
</style>

<template>
  <canvas id="myChart" class="my-chart" width="400" height="400"></canvas>
</template>

<script>
import Chart from 'chart.js'

export default {
  data () {
    return {}
  },

  mounted () {
    /* eslint-disable no-new */
    new Chart(this.$el, {
      type: 'line',
      data: {
        labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
        datasets: [{
          label: 'outer door',
          fill: false,
          backgroundColor: 'rgba(255, 99, 132, 0.8)',
          borderColor: 'rgba(255, 99, 132, 0.8)',
          pointBackgroundColor: '#fff',
          data: [65, 59, 90, 81, 56, 55, 40]
        }, {
          label: 'inner door',
          fill: false,
          backgroundColor: 'rgba(75, 192, 192, 0.8)',
          borderColor: 'rgba(75, 192, 192, 0.8)',
          pointBackgroundColor: '#fff',
          data: [28, 18, 40, 19, 23, 21, 20]
        }]
      }
    })
  }
}
</script>
