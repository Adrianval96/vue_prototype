<template>
  <header class='header'>
    <b-row align-h='center' class='v-div'>
      <b-col align-v='end' class='top-right'>
        <p class='course'> {{ course }} </p>
      </b-col>
      <b-col md='4' class='top-left'>
        <p class = 'p-title'> {{ title }} </p>
        <p class = 'author'> {{ author }} </p>
      </b-col>
      <b-col />
    </b-row>
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


<style lang="scss" scoped>

.top-right {
  border-right: 3px dashed grey;
  padding-top: 1em;
}

v-div {
  height: 20px;
}

header {
  display:block;
  font-family: Swiss721-light;
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
  font-size: 25px;
  margin-top: 1em;
}

.p-title {
  font-size: 30px
}

.course {
  font-size: 45px
}

@media screen and (max-width: 767px) {
  .course {
    font-size: 45px;
  }

  .top-right {
    border-right: 3px dashed grey;
  }
}

</style>
