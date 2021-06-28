<template>
  <header class='header'>
    <b-row align-h='center' class='v-div'>
      <b-col md='4' class='top-left'>
        <p> {{ title }} </p>
      </b-col>
      <b-col />
      <b-col align-v='end' class='top-right'>
        <p> {{ course }} </p>
      </b-col>
    </b-row>
    <p align='left' class='author'> {{ author }} </p>
  </header>
</template>

<script>
export default {
  props: {
    title: String,
    author: String,
    course: String,
  }
}
</script>


<style lang="scss">

#v-div {
  position: relative;
  padding-left:3em;
}

#v-div > * {
  position: absolute;
}

.top-right {
  border-left: 3px dashed grey;
  padding-top: 1em;
}

.vl {
  border-left: 3px solid grey;
  height: 500px;
}

v-div {
  height: 20px;
}

header {
  display:block;
}

img {
  height: 5%;
  width: 5%;
  display: center;
}

.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.author {
  font-size: 40px;
  margin-top: 1em;
}

</style>
