import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css';
import MyHeader from './components/MyHeader'
import MyFooter from './components/MyFooter'
import Recommend from './components/Recommend'
import NewSong from './components/NewSong'
import Splendid from './components/Splendid'
import NewDisc from './components/NewDisc'
import RankingList from './components/RankingList'
import Mv from './components/Mv'

Vue.config.productionTip = false
Vue.prototype.axios=axios;
Vue.use(ElementUI);

Vue.component("my-header", MyHeader);
Vue.component("my-footer", MyFooter);
Vue.component("recommend", Recommend);
Vue.component("new-song", NewSong);
Vue.component("splendid", Splendid);
Vue.component("new-disc", NewDisc);
Vue.component("ranking-list", RankingList);
Vue.component("mv", Mv);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')