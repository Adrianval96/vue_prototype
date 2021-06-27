<template>
  <div id = "list-container">
    <b-card
      title= "Card title"
      img-src= "../assets/images/logo.jpeg"
      img-alt="Image"
      img-top
      tag="article"
      style="max-width: 20rem;"
      class="mb-2"
      @click="openModal()"
    >
      <b-card-text>
        Some quick example text to build on the card title and make up the bulk of the card's content.
      </b-card-text>
      <Modal ref="modal" />
    </b-card>
  </div>
</template>

<script>
export default {
  methods: {
    openModal() {
      this.$refs['modal'].showModal();
    },
    closeModal() {
      this.$refs['modal'].hideModal();
    }
  },
  data () {
    return {
      title: "Card title"
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
</style>
