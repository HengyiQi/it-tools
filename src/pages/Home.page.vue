<script setup lang="ts">
import { IconDragDrop, IconHeart } from '@tabler/icons-vue';
import { useHead } from '@vueuse/head';
import { computed, ref } from 'vue';
import Draggable from 'vuedraggable';
import ColoredCard from '../components/ColoredCard.vue';
import ToolCard from '../components/ToolCard.vue';
import AdBanner from '../components/AdBanner.vue';
import { useToolStore } from '@/tools/tools.store';
import { config } from '@/config';
import { useTracker } from '@/modules/tracker/tracker.services';

const toolStore = useToolStore();
const { tracker } = useTracker();

useHead({
  title: '恒仪IT工具箱 - 免费在线开发者工具集合',
  meta: [
    { name: 'description', content: '恒仪IT工具箱提供80+免费在线开发者工具，包括JSON格式化、Base64编解码、Hash计算、正则表达式测试等。所有运算在浏览器本地完成，保护数据安全。' },
    { name: 'keywords', content: 'IT工具,开发者工具,JSON格式化,Base64,Hash计算,正则表达式,日期转换,在线工具,免费工具' },
  ],
});
const { t } = useI18n();

const favoriteTools = computed(() => toolStore.favoriteTools);
const showHomeAd = ref(true);

function onUpdateFavoriteTools() {
  toolStore.updateFavoriteTools(favoriteTools.value);
}

function handleAdClick() {
  tracker.trackEvent({ eventName: 'Home Top Ad Clicked' });
}
</script>

<template>
  <AdBanner
    v-if="showHomeAd"
    position="home-top"
    @close="showHomeAd = false"
    @click="handleAdClick"
  />

  <div class="container">
    <div class="pt-50px">
      <div class="grid-wrapper">
        <div class="grid grid-cols-1 gap-12px lg:grid-cols-3 md:grid-cols-3 sm:grid-cols-2 xl:grid-cols-4">
          <ColoredCard v-if="config.showBanner" :title="$t('home.follow.title')" :icon="IconHeart">
            {{ $t('home.follow.p1') }}
            <a
              href="https://github.com/HengyiQi/it-tools"
              rel="noopener"
              target="_blank"
              :aria-label="$t('home.follow.githubRepository')"
            >GitHub</a>
            {{ $t('home.follow.p2') }}
            <a
              href="https://x.com/ittoolsdottech"
              rel="noopener"
              target="_blank"
              :aria-label="$t('home.follow.twitterXAccount')"
            >X</a>.
            {{ $t('home.follow.thankYou') }}
            <n-icon :component="IconHeart" />
          </ColoredCard>
        </div>

        <transition name="height">
          <div v-if="toolStore.favoriteTools.length > 0">
            <h3 class="mb-5px mt-25px text-neutral-400 font-500">
              {{ $t('home.categories.favoriteTools') }}
              <c-tooltip :tooltip="$t('home.categories.favoritesDndToolTip')">
                <n-icon :component="IconDragDrop" size="18" />
              </c-tooltip>
            </h3>
            <Draggable
              :list="favoriteTools"
              class="grid grid-cols-1 gap-12px lg:grid-cols-3 md:grid-cols-3 sm:grid-cols-2 xl:grid-cols-4"
              ghost-class="ghost-favorites-draggable"
              item-key="name"
              @end="onUpdateFavoriteTools"
            >
              <template #item="{ element: tool }">
                <ToolCard :tool="tool" />
              </template>
            </Draggable>
          </div>
        </transition>

        <div v-if="toolStore.newTools.length > 0">
          <h3 class="mb-5px mt-25px text-neutral-400 font-500">
            {{ t('home.categories.newestTools') }}
          </h3>
          <div class="grid grid-cols-1 gap-12px lg:grid-cols-3 md:grid-cols-3 sm:grid-cols-2 xl:grid-cols-4">
            <ToolCard v-for="tool in toolStore.newTools" :key="tool.name" :tool="tool" />
          </div>
        </div>

        <h3 class="mb-5px mt-25px text-neutral-400 font-500">
          {{ $t('home.categories.allTools') }}
        </h3>
        <div class="grid grid-cols-1 gap-12px lg:grid-cols-3 md:grid-cols-3 sm:grid-cols-2 xl:grid-cols-4">
          <ToolCard v-for="tool in toolStore.tools" :key="tool.name" :tool="tool" />
        </div>
      </div>
    </div>
  </div>

  <AdBanner position="home-bottom" class="mt-20px mb-40px" />
</template>

<style scoped lang="less">
.height-enter-active,
.height-leave-active {
  transition: all 0.5s ease-in-out;
  overflow: hidden;
  max-height: 500px;
}

.height-enter-from,
.height-leave-to {
  max-height: 42px;
  overflow: hidden;
  opacity: 0;
  margin-bottom: 0;
}

.ghost-favorites-draggable {
  opacity: 0.4;
  background-color: #ccc;
  border: 2px dashed #666;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  transform: scale(1.1);
  animation: ghost-favorites-draggable-animation 0.2s ease-out;
}

@keyframes ghost-favorites-draggable-animation {
  0% {
    opacity: 0;
    transform: scale(0.9);
  }
  100% {
    opacity: 0.4;
    transform: scale(1.0);
  }
}
</style>
