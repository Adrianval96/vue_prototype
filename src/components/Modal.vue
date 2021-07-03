<template>
  <div>
    <b-modal ref="my-modal" hide-footer
      :title= 'title'
    >
      <div class="d-block text-center">
        <ul>
          <li
            v-for="line in lines"
            v-bind:line="line"
            v-bind:key="line.title"
          >
            <p align='left'>
              <b>{{line.title }}</b>:
              <ul class = 'inner-ul'>
                <li
                  v-for="document in line.docs"
                  v-bind:document="document"
                  v-bind:key="document.url"
                >
                  <a :href='getS3Url(document.url)' target="_blank">
                    {{ docName= getDocName(document.url) }}
                  </a>

                </li>
              </ul>
            </p>
          </li>
        </ul>
      </div>
      <b-button class="mt-2" variant="outline-warning" block @click="toggleModal">{{ this.button.text }}</b-button>
    </b-modal>
  </div>
</template>

<script>
  export default {
    data() {
      return {
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
      },
      getDocName(doc) {
        return doc.split('/').pop();
      },
      getS3Url(path) {
        return 'http://lp-defensa.s3.amazonaws.com/' + path;
      }
    },
    props: {
      lines: Array,
      title: String
    }
  }
</script>

<style>
.mt-2 {
  font-family: Arial,sans-serif;
  background-color: #CE4B16;
  color: #F7F8F9;
}

.inner-ul {
  list-style: square;
}
</style>
