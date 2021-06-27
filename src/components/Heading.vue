<template>
  <div class="heading">
    <img src = "../assets/images/flowers-0.png" />
    <p class="heading-title">
      <b><slot>{{ this.unit.title }}</slot></b>
    </p>
  </div>
</template>

<script>
  export default {

  }
</script>

<style>
.heading {
  display: flex;
  justify-content: left;
  padding-top: 10px;
}

.heading-title {
  font-size: 30px;
  margin-top: 10px;
  margin-left: 20px;
}
</style>
