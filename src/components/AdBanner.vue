<script setup lang="ts">
interface Props {
  /** 广告位标识，用于区分不同位置的广告 */
  position?: 'home-top' | 'home-bottom' | 'tool-sidebar' | 'tool-bottom'
  /** 广告宽度模式 */
  width?: 'full' | 'responsive'
  /** 是否显示边框 */
  bordered?: boolean
  /** 自定义类名 */
  className?: string
}

const props = withDefaults(defineProps<Props>(), {
  position: 'home-top',
  width: 'responsive',
  bordered: true,
  className: '',
})

const emit = defineEmits<{
  click: []
  close: []
}>()

const isDismissed = computed(() => {
  return localStorage.getItem(`ad-dismissed-${props.position}`) === 'true'
})

function handleDismiss() {
  localStorage.setItem(`ad-dismissed-${props.position}`, 'true')
  emit('close')
}

function handleClick() {
  emit('click')
}

const widthClass = computed(() => {
  return props.width === 'full' ? 'w-full' : 'w-full max-w-4xl'
})
</script>

<template>
  <div
    v-if="!isDismissed"
    :class="[
      'ad-banner',
      widthClass,
      className,
      { 'ad-bordered': bordered },
    ]"
    role="complementary"
    aria-label="广告"
  >
    <button
      class="ad-close-btn"
      aria-label="关闭广告"
      @click="handleDismiss"
    >
      ×
    </button>
    <div class="ad-content">
      <slot>
        <div class="ad-placeholder">
          <span class="ad-label">广告</span>
          <p class="ad-text">广告位预留区域</p>
          <p class="ad-hint">在此处插入您的广告代码（如 Google AdSense、百度联盟等）</p>
        </div>
      </slot>
    </div>
  </div>
</template>

<style scoped lang="less">
.ad-banner {
  position: relative;
  margin: 16px auto;
  padding: 12px;
  text-align: center;
  border-radius: 8px;
  background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
  transition: all 0.3s ease;

  &:hover {
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
  }

  &.ad-bordered {
    border: 1px solid #e0e0e0;
  }
}

.ad-close-btn {
  position: absolute;
  top: 8px;
  right: 8px;
  width: 24px;
  height: 24px;
  border: none;
  background: rgba(0, 0, 0, 0.05);
  border-radius: 50%;
  cursor: pointer;
  font-size: 16px;
  line-height: 1;
  color: #999;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.2s ease;

  &:hover {
    background: rgba(0, 0, 0, 0.1);
    color: #666;
  }
}

.ad-content {
  min-height: 60px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.ad-placeholder {
  .ad-label {
    display: inline-block;
    padding: 2px 8px;
    background: #e0e0e0;
    border-radius: 4px;
    font-size: 10px;
    color: #999;
    margin-bottom: 8px;
    letter-spacing: 1px;
    text-transform: uppercase;
  }

  .ad-text {
    margin: 4px 0;
    font-size: 14px;
    color: #666;
  }

  .ad-hint {
    margin: 4px 0 0;
    font-size: 12px;
    color: #999;
  }
}

@media (prefers-color-scheme: dark) {
  .ad-banner {
    background: linear-gradient(135deg, #2d2d2d 0%, #383838 100%);

    &.ad-bordered {
      border-color: #444;
    }
  }

  .ad-close-btn {
    background: rgba(255, 255, 255, 0.1);
    color: #888;

    &:hover {
      background: rgba(255, 255, 255, 0.15);
      color: #aaa;
    }
  }

  .ad-placeholder {
    .ad-label {
      background: #444;
      color: #888;
    }

    .ad-text {
      color: #aaa;
    }

    .ad-hint {
      color: #777;
    }
  }
}
</style>
