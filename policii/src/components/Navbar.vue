<template>
  <div class="navbar" id="nav">
    <div class="item" id="environment" v-on:click="activate($event)">
      🌳
    </div>
    <div class="item" id="healthcare" v-on:click="activate($event)">
      🏥
    </div>
    <div class="item" id="education" v-on:click="activate($event)">
      📚
    </div>
    <div class="item" id="security" v-on:click="activate($event)">
      🏰
    </div>
    <div class="item" id="brexit" v-on:click="activate($event)">
      🇪🇺
    </div>
    <div class="item" id="economy" v-on:click="activate($event)">
      💰
    </div>
    <div class="item" id="social" v-on:click="activate($event)">
      🎗️
    </div>
    <div class="item" id="home" v-on:click="activate($event)">
      policii️
    </div>
    <div class="item" id="local" v-on:click="activate($event)">
      🏙
    </div>
    <div class="item" id="infrastructure" v-on:click="activate($event)">
      🚂
    </div>
    <div class="item" id="industry" v-on:click="activate($event)">
      🏭
    </div>
    <div class="item" id="housing" v-on:click="activate($event)">
      🏡
    </div>
    <div class="item" id="diverse" v-on:click="activate($event)">
      🌈
    </div>
    <div class="item" id="disabilities" v-on:click="" v-on:click="activate($event)">
      ♿
    </div>
    <div class="item" id="foreign" v-on:click="activate($event)">
      🌍
    </div>
    <div class="burger" id="menu">
      <div class="content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
      </div>
      <a href="javascript:void(0);" class="icon" onclick="responsive()">&#9776;</a>
    </div>
  </div>
</template>

<script>
  import Categories from '@/components/Categories.vue'
  import Policies from '@/components/Policies.vue'
  import { mapMutations, mapGetters } from 'vuex'

  export default {
    name: 'policii',
    components: {
      Categories,
      Policies
    },
    computed: {
      ...mapGetters({
        heading: 'heading',
        active: 'active'
      })
    },
    methods: {
      activate (event) {
        if (event.currentTarget.id === this.heading) {
          this.turn(!this.active)
          console.log('turned')
        } else {
          if (this.active === false) {
            this.update({
              title: event.currentTarget.id,
              active: !this.active
            })
            console.log('updated')
          } else {
            this.switch(event.currentTarget.id)
            console.log('switched')
          }
        }
      },
      ...mapMutations([
        'update',
        'switch',
        'turn'
      ])
    }
  }
</script>

<style scoped>
  .navbar {
    overflow: hidden;
    background-color: white;
    position: fixed;
    align-items: center;
    justify-items: center;
    top: 0;
    left: 0;
    width: 100%;
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    z-index: 10000;
    font-size: 40px;
    box-shadow: 8px 0px 5px #888888;
  }

  .item {
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
  }

  #home {
    align-self: center;
    justify-self: center;
  }

  .burger {
    display: none;
    padding: 20px;
    float: left;
    border-radius: 3px;
    font-size: 40px;
    transition: color linear 0.15s;
  }

  .content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding: 12px 16px;
    z-index: 10000;
    font-size: 12px;
  }

  .burger:hover .content {
    display: block;
  }

  .content a:hover {
    background-color: #f1f1f1;
  }

  .content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
  }

  .dropdown:hover .dropbtn {
    background-color: #3e8e41;
  }

  @media screen and (max-width: 1210px) {
    .navbar div:not(:nth-child(8)) {
      display: none;
    }
    .navbar div:last-child {
      display: block;
      position: absolute;
      right: 25px;
    }
    .burger {
      display: inline-block;
    }
  }
</style>
