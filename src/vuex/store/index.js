import Vue from 'vue'
import Vuex from 'vuex'
import { mutations } from '../mutations'
import plugins from './plugins'

Vue.use(Vuex)

export default new Vuex.Store({
  mutations,
  plugins
})
