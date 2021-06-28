<template>
  <div>
    <b-modal ref="my-modal" hide-footer title= "Unidad didáctica 1">
      <div class="d-block text-center">
        <h3>{{ this.text }}</h3>
      </div>
      <b-button class="mt-2" variant="outline-warning" block @click="toggleModal">{{ this.button.text }}</b-button>
    </b-modal>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        text: "This is where the data goes",
        button: {
          text: "Tornar"
        }
      }
    },
    methods: {
      showModal() {
        this.$refs['my-modal'].show()
      },
      hideModal() {
        this.$refs['my-modal'].hide()
      },
      toggleModal() {
        // We pass the ID of the button that we want to return focus to
        // when the modal has hidden
        this.$refs['my-modal'].toggle('#toggle-btn')
      }
    }
  }
</script>

<style>
.mt-2 {
  font-family: Arial,sans-serif;
  background-color: #CE4B16;
  color: #F7F8F9;
}
</style>
