<template>
  <div class="heading">
    <img class='bp'
      :src="require(`../assets/${img_src}`)" />
    <p class="heading-title">
      <b><slot>{{ this.unit.title }}</slot></b>
    </p>
  </div>
</template>

<script>
  export default {
    props: {
      img_src: String
    }

  }
</script>

<style>
.heading {
  display: flex;
  justify-content: left;
  padding-top: 10px;
  height: 60px;
  margin-bottom: 3em;
}

.heading-title {
  font-size: 30px;
  margin-top: 10px;
  margin-left: 20px;
}
</style>
