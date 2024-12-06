<template>
  <div id="app">
    <h1>Парсинг изображений</h1>
    <image-form @refresh="refreshImages" />
    <image-list ref="imageList" />
  </div>
</template>

<script>
import ImageList from './components/ImageList.vue';
import ImageForm from './components/ImageForm.vue';

export default {
  name: 'App',
  components: {
    ImageList,
    ImageForm,
  },
  methods: {
    refreshImages() {
      this.$refs.imageList.fetchImages();
    },
  },
};
</script>
