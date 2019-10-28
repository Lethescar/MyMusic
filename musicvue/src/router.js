import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index'
import Play from './views/Play'
import Splendid from './components/Splendid'
import Comment from './views/Comment'
import MyHeader from './components/MyHeader'
import MyFooter from './components/MyFooter'
import NotFound from './views/NotFound'

Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',component:Index},
    {path: '/index',component:Index},
    {path: '/index',component:Index},
    {path: '/play',component:Play},
    {path: '/splendid',component:Splendid},
    {path: '/Comment',component:Comment},
    {path: '/myheader',component:MyHeader},
    {path: '/myfooter',component:MyFooter},
    {path: '/*',component:NotFound},
  ]
})
