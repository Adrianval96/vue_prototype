<template>
  <div>
    <Heading>
      {{ section.title }}
    </Heading>
    <hr class="hr" />
    <div class="row">
      <Card
        v-for="card in section.cards"
        v-bind:card="card"
        v-bind:key="card.description"
      ></Card>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    section: Object,
  },
};
</script>

<style lang="scss">
* {
  box-sizing: border-box;
}

/* Remove extra left and right margins, due to padding in columns */
.row {
  margin: 0 10px;
  justify-content: flex-start;
}

.row #col {
  // width: 33%;
  margin-right: 2rem;
  margin-bottom: 2rem;
  /* TO-DO: EN MOBILE, el width es 100% y la card no debería tener min-width */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
  height: 100%;
}

/* Responsive columns - one column layout (vertical) on small screens */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}
hr {
  margin-top: 2px;
  margin-bottom: 2rem;
  border: 0;
  border-top: 1px dashed gray;
}
</style>
