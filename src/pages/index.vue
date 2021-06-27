<template>
  <body id="mainPage">
    <div class = "header">
      <AppHeader />
    </div>
    <div class = "intro">
      <!--HeroSummary /-->
    </div>
    <Heading>
      {{ unit.title }}
    </Heading>
    <hr class = "hr" />
    <div class = "card-container">
      <Card />
    </div>
  </body>
</template>

<script>
  export default {
    layout: 'main',

    head() {
      return {
        title: "Defensa Laura"
      }
    },

    data() {
      return {
        unit: {
          title: "PRIMERA AVALUACIÓ"
        }
      }
    },
    created() {
      // Get the data from JSON file
      fetch('../assets/mocks/mock-data.json').then(response => {
        this.data = response.data;
      }, error =>{
       console.log(error)
      })
      console.log(data);
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

.card-container {
  margin-top: 10px;
  margin-bottom: 10px;
  margin-right: 50px;
  margin-left: 50px;
}

.header {
  padding: 30px;
  text-align: center;
  background: #5AA4CC;
  color: white;
  font-size: 30px;
}

hr {
  margin-top: 2px;
  margin-bottom: 2rem;
  border: 0;
  border-top: 1px dashed gray;
}

* {
  font-family: Swiss721;
}
</style>
