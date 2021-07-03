<template>
  <div id="mainPage">
    <div class = "header">
      <AppHeader
        :title = 'data.title'
        :author = 'data.author'
        :course = 'data.course'>
      </AppHeader>
    </div>
    <div class = "intro">
      <!--HeroSummary /-->
    </div>
      <section class = 'lister'>
        <Lister
          v-for="section in data.sections"
          :section='section'
          :key='section.title'
        ></Lister>
        <!-- <Lister :section = 'data.sections[0]'/> -->
      </section>
  </div>
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
        title: 'Defensa - Laura Esplugues',
        meta: [
          // hid is used as unique identifier. Do not use `vmid` for it as it will not work
          {
            hid: 'description',
            name: 'description',
            content: 'My custom description'
          }
        ]
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
  padding: 15px;
  text-align: center;
  background: #5AA4CC;
  color: white;
  font-size: 30px;
}

.intro {
  margin-top: 2em;
}

* {
  font-family: Swiss721-light;
}
</style>
