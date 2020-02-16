
import Vue from 'vue/dist/vue.esm.js'
import VueRouter from 'vue-router'
import VueApollo from 'vue-apollo'
import ApolloClient from "apollo-boost"

import Index from './components/index.vue'

const apolloClient = new ApolloClient({
  uri: "http://localhost:3000/graphql",
  request: async operation => {
    operation.setContext({
      headers: {
        'X-CSRF-Token': document.querySelector('meta[name=csrf-token]').getAttribute('content'),
      },
    });
  }
});

const apolloProvider = new VueApollo({
  defaultClient: apolloClient
});


Vue.use(VueApollo);

Vue.use(VueRouter);

const router = new VueRouter({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'index',
      component: Index
    }
  ],
});

const app = new Vue({
  el: '#app',
  router,
  apolloProvider
});