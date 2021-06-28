<template>
  <body>
    <Heading>
      {{section.title}}
    </Heading>
    <hr class = "hr" />
    <div class = "card-container">
      <Card />
    </div>
  </body>
</template>

<script>
export default {
  props: {
    section: Object
  }
}
</script>

<style>
.card-container {
  margin-top: 10px;
  margin-bottom: 10px;
  margin-right: 50px;
  margin-left: 50px;
}

hr {
  margin-top: 2px;
  margin-bottom: 2rem;
  border: 0;
  border-top: 1px dashed gray;
}
</style>
