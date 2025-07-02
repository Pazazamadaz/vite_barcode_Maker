<script setup lang="ts">
import { ref, watch, onMounted } from 'vue'

const text = ref('')
const svgRef = ref<SVGSVGElement | null>(null)

function renderBarcode() {
  if (svgRef.value && window && (window as any).JsBarcode && text.value) {
    ;(window as any).JsBarcode(svgRef.value, text.value, {
      displayValue: true
    })
  } else if (svgRef.value) {
    svgRef.value.innerHTML = ''
  }
}

watch(text, renderBarcode)
onMounted(renderBarcode)
</script>

<template>
  <div class="barcode-maker">
    <input v-model="text" placeholder="Enter value" />
    <svg ref="svgRef"></svg>
  </div>
</template>

<style scoped>
.barcode-maker {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
}

svg {
  margin-top: 1rem;
  width: 100%;
  height: 100px;
}
</style>
