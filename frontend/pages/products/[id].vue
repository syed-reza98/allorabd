<script setup lang="ts">
import type { Ref } from 'vue';
import { ref } from 'vue'
const route = useRoute()

const { data: product } = await useFetch(`http://localhost:8000/api/products/`+ route.params.id);
const { data: products, pending } = await useAsyncData(
  "products",
  () => $fetch('http://localhost:8000/api/products'),
  {
    transform: (products) =>
      products.data.map((product) => ({
        id: product.id,
        name: product.name,
        image_url: product.image_url,
        description: product.description,
        price: product.price,
      })),
      lazy: true,
  }
);
console.log(product);
import {
  Disclosure,
  DisclosureButton,
  DisclosurePanel,
  RadioGroup,
  RadioGroupLabel,
  RadioGroupOption,
  Tab,
  TabGroup,
  TabList,
  TabPanel,
  TabPanels,
} from '@headlessui/vue'
import { StarIcon } from '@heroicons/vue/20/solid'
import { HeartIcon, MinusIcon, PlusIcon } from '@heroicons/vue/24/outline'

</script>
<template>
    <NuxtLayout name="main-layout">
      <div class="max-w-2xl px-4 py-16 mx-auto sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
      <div class="lg:grid lg:grid-cols-2 lg:items-start lg:gap-x-8">
        <!-- Image gallery -->
        <TabGroup as="div" class="flex flex-col-reverse">
          <!-- Image selector -->
          <div class="hidden w-full max-w-2xl mx-auto mt-6 sm:block lg:max-w-none">
            <TabList class="grid grid-cols-4 gap-6">
              <Tab v-if="product" class="relative flex items-center justify-center h-24 text-sm font-medium text-gray-900 uppercase bg-white rounded-md cursor-pointer hover:bg-gray-50 focus:outline-none focus:ring focus:ring-opacity-50 focus:ring-offset-4" v-slot="{ selected }">
                <span class="sr-only">{{ product.data.image_url }}</span>
                <span class="absolute inset-0 overflow-hidden rounded-md">
                  <NuxtImg :src="product.data.image_url" alt="Product Image" fit="inside" format="webp" quality="80" sizes="100vw sm:50vw md:400px" class="object-cover object-center w-full h-full" />
                  <!-- <img :src="product.data.image_url" alt="" class="object-cover object-center w-full h-full" /> -->
                </span>
                <span :class="[selected ? 'ring-indigo-500' : 'ring-transparent', 'pointer-events-none absolute inset-0 rounded-md ring-2 ring-offset-2']" aria-hidden="true" />
              </Tab>
            </TabList>
          </div>

          <TabPanels class="w-full aspect-h-1 aspect-w-1">
            <TabPanel v-if="product">
              <NuxtImg :src="product.data.image_url" alt="Product Image" fit="inside" format="webp" quality="50" class="object-cover object-center w-full h-full sm:rounded-lg" />
              <!-- <img :src="product.data.image_url" :alt="product.data.image_url" class="object-cover object-center w-full h-full sm:rounded-lg" /> -->
            </TabPanel>
          </TabPanels>
        </TabGroup>

        <!-- Product info -->
        <div v-if="product" class="px-4 mt-10 sm:mt-16 sm:px-0 lg:mt-0">
          <h1 class="text-3xl font-bold tracking-tight text-gray-900">{{ product.data.name }}</h1>

          <div class="mt-3">
            <h2 class="sr-only">Product information</h2>
            <p class="text-3xl tracking-tight text-gray-900">{{ product.data.price }}</p>
          </div>

          <!-- Reviews -->
          <!-- <div class="mt-3">
            <h3 class="sr-only">Reviews</h3>
            <div class="flex items-center">
              <div class="flex items-center">
                <StarIcon v-for="rating in [0, 1, 2, 3, 4]" :key="rating" :class="[product.rating > rating ? 'text-indigo-500' : 'text-gray-300', 'h-5 w-5 flex-shrink-0']" aria-hidden="true" />
              </div>
              <p class="sr-only">{{ product.rating }} out of 5 stars</p>
            </div>
          </div> -->

          <div class="mt-6">
            <h3 class="sr-only">Description</h3>

            <div class="space-y-6 text-base text-gray-700" v-html="product.data.description" />
          </div>

          <form class="mt-6">
            <!-- Colors -->
            <div>
              <h3 class="text-sm text-gray-600">Color</h3>

              <!-- <RadioGroup v-model="selectedColor" class="mt-2">
                <RadioGroupLabel class="sr-only">Choose a color</RadioGroupLabel>
                <span class="flex items-center space-x-3">
                  <RadioGroupOption as="template" v-for="color in product.colors" :key="color.name" :value="color" v-slot="{ active, checked }">
                    <div :class="[color.selectedColor, active && checked ? 'ring ring-offset-1' : '', !active && checked ? 'ring-2' : '', 'relative -m-0.5 flex cursor-pointer items-center justify-center rounded-full p-0.5 focus:outline-none']">
                      <RadioGroupLabel as="span" class="sr-only">{{ color.name }}</RadioGroupLabel>
                      <span aria-hidden="true" :class="[color.bgColor, 'h-8 w-8 rounded-full border border-black border-opacity-10']" />
                    </div>
                  </RadioGroupOption>
                </span>
              </RadioGroup> -->
            </div>

            <div class="flex mt-10 sm:flex-col1">
              <button type="submit" class="flex items-center justify-center flex-1 max-w-xs px-8 py-3 text-base font-medium text-white bg-indigo-600 border border-transparent rounded-md hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 focus:ring-offset-gray-50 sm:w-full">Add to bag</button>

              <button type="button" class="flex items-center justify-center px-3 py-3 ml-4 text-gray-400 rounded-md hover:bg-gray-100 hover:text-gray-500">
                <HeartIcon class="flex-shrink-0 w-6 h-6" aria-hidden="true" />
                <span class="sr-only">Add to favorites</span>
              </button>
            </div>
          </form>

          <section aria-labelledby="details-heading" class="mt-12">
            <h2 id="details-heading" class="sr-only">Additional details</h2>

            <!-- <div class="border-t divide-y divide-gray-200">
              <Disclosure as="div" v-for="detail in product.details" :key="detail.name" v-slot="{ open }">
                <h3>
                  <DisclosureButton class="relative flex items-center justify-between w-full py-6 text-left group">
                    <span :class="[open ? 'text-indigo-600' : 'text-gray-900', 'text-sm font-medium']">{{ detail.name }}</span>
                    <span class="flex items-center ml-6">
                      <PlusIcon v-if="!open" class="block w-6 h-6 text-gray-400 group-hover:text-gray-500" aria-hidden="true" />
                      <MinusIcon v-else class="block w-6 h-6 text-indigo-400 group-hover:text-indigo-500" aria-hidden="true" />
                    </span>
                  </DisclosureButton>
                </h3>
                <DisclosurePanel as="div" class="pb-6 prose-sm prose">
                  <ul role="list">
                    <li v-for="item in detail.items" :key="item">{{ item }}</li>
                  </ul>
                </DisclosurePanel>
              </Disclosure>
            </div> -->
          </section>
        </div>
      </div>
      <div class="relative mt-8">
            <div class="relative w-full overflow-x-auto">
              <ul role="list" class="inline-flex mx-4 space-x-8 sm:mx-6 lg:mx-0 lg:grid lg:grid-cols-4 lg:gap-x-8 lg:space-x-0">
                <li v-for="product in products" :key="product.id" class="inline-flex flex-col w-64 text-center lg:w-auto">
                  <div class="relative group">
                    <div class="w-full overflow-hidden bg-gray-200 rounded-md aspect-h-1 aspect-w-1">
                      <!-- <img :src="product.image_url" :alt="product.imageAlt" class="object-cover object-center w-full h-full group-hover:opacity-75" /> -->
                      <NuxtImg :src="product.image_url" alt="Product Image" loading="lazy" fit="inside" format="webp" quality="50" class="object-cover object-center w-full h-full group-hover:opacity-75"/>
                    </div>
                    <div class="mt-6">
                      <p class="text-sm text-gray-500">{{ product.color }}</p>
                      <h3 class="mt-1 font-semibold text-gray-900">
                        <NuxtLink :to="'/products/' + product.id">
                          <span class="absolute inset-0" />
                          {{ product.name }}
                        </NuxtLink>
                      </h3>
                      <p class="mt-1 text-gray-900">{{ product.price }}</p>
                    </div>
                  </div>

                  <!-- <h4 class="sr-only">Available colors</h4>
                  <ul role="list" class="flex items-center justify-center pt-6 mt-auto space-x-3">
                    <li v-for="color in product.availableColors" :key="color.name" class="w-4 h-4 border border-black rounded-full border-opacity-10" :style="{ backgroundColor: color.colorBg }">
                      <span class="sr-only">{{ color.name }}</span>
                    </li>
                  </ul> -->
                </li>
              </ul>
            </div>
          </div>
    </div>
    </NuxtLayout>
</template>
