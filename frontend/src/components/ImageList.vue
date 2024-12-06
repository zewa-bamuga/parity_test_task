<template>
  <div>
    <h2>Список картинок</h2>
    <div v-if="images.length > 0">
      <ul>
        <li v-for="(image, index) in images" :key="image.id">
          <img :src="image.image" alt="image" width="200" />
          <p>{{ image.description }}</p>
          <button @click="deleteImage(image.id)">Удалить</button>
        </li>
      </ul>
    </div>
    <div v-else>
      <p>Нет картинок для отображения.</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      images: [],
    };
  },
  methods: {
    async fetchImages() {
      try {
        const response = await this.$axios.get('/api/images/');
        this.images = response.data;
      } catch (error) {
        console.error("Ошибка при получении списка картинок:", error);
      }
    },
    async deleteImage(imageId) {
      try {
        await this.$axios.delete(`/api/images/${imageId}/`);
        this.fetchImages();
      } catch (error) {
        console.error("Ошибка при удалении картинки:", error);
      }
    },
  },
  mounted() {
    this.fetchImages();
  },
};
</script>
