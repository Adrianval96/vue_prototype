<template>
  <div id = "col">
    <b-card
      v-if="card"
      :img-src="require(`../assets/${card['image_url']}`)"
      img-alt='Image'
      tag="article"
      style="max-width: 20rem;"
      class="mb-2"
      @click="openModal()"
    >
      <b-card-text>
        <h3>{{ card.description }}</h3>
      </b-card-text>
      <Modal class = 'modal'
        ref="modal"
        :lines= 'card.lines'
        :title= 'card.title'
      > </Modal>
    </b-card>
  </div>
</template>

<script>
export default {
  props: {
    card: Object
  },
  methods: {
    openModal() {
      this.$refs['modal'].showModal();
    },
    closeModal() {
      this.$refs['modal'].hideModal();
    }
  }
}
</script>

<style>
.list-container {
  /* Add shadows to create the "card" effect */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  border-radius: 5px; /* 5px rounded corners */
  margin-top: 10px;
}

/* On mouse-over, add a deeper shadow */
.list-container:hover {
  box-shadow: 0 16px 32px 0 rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */
.container {
  padding: 2px 16px;
}

.modal {
  padding-top: 50px;
  padding-right: 15px;
  padding-bottom: 50px;
  padding-left: 15px;
}

/* Float four columns side by side */
.col {
  float: left;
  width: 33%;
  padding: 0 50px;
  flex: 1;
}

.mb-2 {
  width: 100%;
  height: 100%;
}
</style>
