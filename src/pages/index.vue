<template>
  <body id="mainPage">
    <div class = "header">
      <AppHeader />
    </div>
    <div class = "intro">
      <!--HeroSummary /-->
    </div>
      <section class = 'lister'>
        <Lister
          v-for="section in data.sections"
          v-bind:section='section'
          v-bind:key='section.title'
        ></Lister>
        <Lister v-bind:section = 'data.sections[0]'/>
      </section>
  </body>
</template>

<script>
  export default {
    async asyncData({ $content }) {
      const data = await $content('mock-data').fetch().catch(err => console.log(err));
      return { data };
    },
    layout: 'main',

    head() {
      return {
      }
    },

    data() {
      return {
      }
    },
    created() {
    }
  }
</script>

<style>

@font-face {
  font-family: "Swiss721";
  src: local("Swiss721"),
   url(../../public/fonts/Swiss721.ttf) format("truetype");
}

.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}


.header {
  padding: 30px;
  text-align: center;
  background: #5AA4CC;
  color: white;
  font-size: 30px;
}

* {
  font-family: Swiss721;
}
</style>
