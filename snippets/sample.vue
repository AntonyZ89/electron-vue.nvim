<template>
  <div>
    <div class="text-center">{{ name }}</div>

    <FakeComponent>
      <template #item="{ item }">
        <div>{{ item.name }}</div>
      </template>
    </FakeComponent>

    <FakeComponent />

    <div>
      <input v-model.lazy="name" class="w-full" :class="{ error }" type="text" />
      <span>Invalid name</span>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, computed } from "vue";

interface Props {
  modelValue: string
}

const props = defineProps<Props>();

const name = ref<string>(props.modelValue);
const error = computed<boolean>(() => !name.value);
</script>

<style lang="scss">
:root {
  --v-color: black;
  --v-error: red;
}
.text-center {
  text-align: center;
}

.w-full {
  width: 100%;
}

input {
  color: var(--v-color);
  background-color: white;
  border: 1px solid black;
  border-radius: 5px;
  padding: 5px;
  width: 100%;

  &.error {
    border-color: var(--v-error);
  }

  &.error + span {
    color: var(--v-error);
  }
}
</style>

