<template>
  <div v-show="active === true">
    <h1 id="title">{{heading}}</h1>
    <div class="container">
      <div class="item conservative">
        <p class="party" id="tory">conservative</p>
      </div>
      <div class="item libdem">
        <p class="party" id="lib">liberal democrats</p>
      </div>
      <div class="item labour">
        <p class="party" id="lab">labour</p>
      </div>
      <div class="item green">
        <p class="party" id="gre">green</p>
      </div>
      <div class="item ukip">
        <p class="party" id="uk">ukip</p>
      </div>
      <conservative id="conservative"></conservative>
      <libdem id="libdem"></libdem>
      <labour id="labour"></labour>
      <green id="green"></green>
      <ukip id="ukip"></ukip>
    </div>
  </div>
</template>

<script>
  import Conservative from '@/components/Parties/Conservative.vue'
  import Libdem from '@/components/Parties/Libdem.vue'
  import Labour from '@/components/Parties/Labour.vue'
  import Green from '@/components/Parties/Green.vue'
  import Ukip from '@/components/Parties/Ukip.vue'
  import { mapGetters } from 'vuex'

  export default {
    name: 'Policies',
    components: {
      Conservative,
      Libdem,
      Labour,
      Green,
      Ukip
    },
    computed: {
      ...mapGetters({
        heading: 'heading',
        active: 'active'
      })
    }
  }
</script>

<style scoped>
  .container {
    display: grid;
    grid-template-columns: repeat(5, 20%);
    grid-template-rows: 25% auto auto;
    margin: 0;
    justify-items: center;
    width: 95vw;
    align-items: start;
    justify-content: center;
    text-align: center;
  }
  body {
    font-family: 'Roboto Mono', monospace;
    color: #000000;
  }
  #title {
    font-size: 45px;
    font-weight: 400;
  }
  .party {
    font-size: 2vw;
    text-emphasis: circle;
    font-weight: 600;
  }
  #tory {
    grid-column: 1;
    grid-row: 1;
    color: darkblue;
  }
  #lib {
    grid-column: 2;
    grid-row: 1;
    color: #ffcc00;
  }
  #lab {
    grid-column: 3;
    grid-row: 1;
    color: darkred;
  }
  #gre {
    grid-column: 4;
    grid-row: 1;
    color: green;
  }
  #uk {
    grid-column: 5;
    grid-row: 1;
    color: purple;
  }
  #conservative {
    grid-column: 1;
    grid-row: 2;
  }
  #labour {
    grid-column: 3;
    grid-row: 2;
  }
  #libdem {
    grid-column: 2;
    grid-row: 2;
  }
  #ukip {
    grid-column: 5;
    grid-row: 2;
  }
  #green {
    grid-column: 4;
    grid-row: 2;
  }
</style>
