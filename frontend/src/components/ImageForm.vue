<template>
  <form @submit.prevent="submitImage">
    <input type="file" @change="onFileChange" />
    <textarea v-model="description" placeholder="Enter description"></textarea>
    <button type="submit">Upload</button>
  </form>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      description: '',
      image: null,
    };
  },
  methods: {
    onFileChange(e) {
      this.image = e.target.files[0];
    },
    async submitImage() {
      const formData = new FormData();
      formData.append('image', this.image);
      formData.append('description', this.description);

      try {
        await axios.post('http://127.0.0.1:8000/api/images/', formData, {
          headers: { 'Content-Type': 'multipart/form-data' },
        });
        alert('Image uploaded!');
        this.$emit('refresh');
      } catch (error) {
        console.error(error);
      }
    },
  },
};
</script>
