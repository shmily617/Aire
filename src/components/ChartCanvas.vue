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

const chartData = {
  labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
  datasets: [{
    fillColor: 'rgba(220,220,220,0.5)',
    strokeColor: 'rgba(220,220,220,1)',
    pointColor: 'rgba(220,220,220,1)',
    pointStrokeColor: '#fff',
    data: [65, 59, 90, 81, 56, 55, 40]
  }, {
    fillColor: 'rgba(151,187,205,0.5)',
    strokeColor: 'rgba(151,187,205,1)',
    pointColor: 'rgba(151,187,205,1)',
    pointStrokeColor: '#fff',
    data: [28, 48, 40, 19, 96, 27, 100]
  }]
}

export default {
  data () {
    return {}
  },

  mounted () {
    console.log(this.$el)
    console.log(chartData)
    /* eslint-disable no-new */
    new Chart(this.$el, {
      type: 'bar',
      data: {
        labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
        datasets: [{
          label: 'outer door',
          data: [30, 19, 23, 56, 12, 39, 23],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)',
            'rgba(220, 220, 220, 0.2)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)',
            'rgba(220, 220, 220, 1)'
          ],
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true
            }
          }]
        }
      }
    })
  }
}
</script>
