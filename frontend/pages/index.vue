<script setup lang='ts'>
// import type { Ref } from 'vue';
// import { ref } from 'vue'

// export interface ProductModel {
//   id: number;
//   name: string;
//   image_url: string;
// 	description?: string;
// 	price: number;
// }

// const { isLoggedIn } = useAuth();
// const { data: products } = await useLarafetch<Product[]>("/api/products");
// const { data: products, pending } = await useFetch(`http://localhost:8000/api/products`);
// , {pick: ['id', 'name', 'image_url', 'description', 'price']}
// id: product.id,
//         name: product.name,
//         image_url: product.image_url,
//         description: product.description,
//         price: product.price,
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
  }
);

const offers = [
  { name: 'Download the app', description: 'Get an exclusive $5 off code', href: '#' },
  { name: "Return when you're ready", description: '60 days of free returns', href: '#' },
  { name: 'Sign up for our newsletter', description: '15% off your first order', href: '#' },
]
const trendingProducts = [
  {
    id: 1,
    name: 'Machined Pen',
    color: 'Black',
    price: '$35',
    href: '#',
    imageSrc: 'https://tailwindui.com/img/ecommerce-images/home-page-02-product-01.jpg',
    imageAlt: 'Black machined steel pen with hexagonal grip and small white logo at top.',
    availableColors: [
      { name: 'Black', colorBg: '#111827' },
      { name: 'Brass', colorBg: '#FDE68A' },
      { name: 'Chrome', colorBg: '#E5E7EB' },
    ],
  },
  // More products...
]
const collections = [
  {
    name: 'Desk and Office',
    description: 'Work from home accessories',
    imageSrc: 'https://tailwindui.com/img/ecommerce-images/home-page-02-edition-01.jpg',
    imageAlt: 'Desk with leather desk pad, walnut desk organizer, wireless keyboard and mouse, and porcelain mug.',
    href: '#',
  },
  {
    name: 'Self-Improvement',
    description: 'Journals and note-taking',
    imageSrc: 'https://tailwindui.com/img/ecommerce-images/home-page-02-edition-02.jpg',
    imageAlt: 'Wood table with porcelain mug, leather journal, brass pen, leather key ring, and a houseplant.',
    href: '#',
  },
  {
    name: 'Travel',
    description: 'Daily commute essentials',
    imageSrc: 'https://tailwindui.com/img/ecommerce-images/home-page-02-edition-03.jpg',
    imageAlt: 'Collection of four insulated travel bottles on wooden shelf.',
    href: '#',
  },
]
const testimonials = [
  {
    id: 1,
    quote:
      'My order arrived super quickly. The product is even better than I hoped it would be. Very happy customer over here!',
    attribution: 'Sarah Peters, New Orleans',
  },
  {
    id: 2,
    quote:
      'I had to return a purchase that didn’t fit. The whole process was so simple that I ended up ordering two new items!',
    attribution: 'Kelly McPherson, Chicago',
  },
  {
    id: 3,
    quote:
      'Now that I’m on holiday for the summer, I’ll probably order a few more shirts. It’s just so convenient, and I know the quality will always be there.',
    attribution: 'Chris Paul, Phoenix',
  },
]



</script>


<template>
  <NuxtLayout name="main-layout">
      <!-- Hero -->
      <!-- <pre>{{ products }}</pre> -->
      <div class="flex flex-col border-b border-gray-200 lg:border-0">
        <nav aria-label="Offers" class="order-last lg:order-first">
          <div class="mx-auto max-w-7xl lg:px-8">
            <ul role="list" class="grid grid-cols-1 divide-y divide-gray-200 lg:grid-cols-3 lg:divide-x lg:divide-y-0">
              <li v-for="offer in offers" :key="offer.name" class="flex flex-col">
                <a :href="offer.href" class="relative flex flex-col justify-center flex-1 px-4 py-6 text-center bg-white focus:z-10">
                  <p class="text-sm text-gray-500">{{ offer.name }}</p>
                  <p class="font-semibold text-gray-900">{{ offer.description }}</p>
                </a>
              </li>
            </ul>
          </div>
        </nav>

        <div class="relative">
          <div aria-hidden="true" class="absolute hidden w-1/2 h-full bg-gray-100 lg:block" />
          <div class="relative bg-gray-100 lg:bg-transparent">
            <div class="px-4 mx-auto max-w-7xl sm:px-6 lg:grid lg:grid-cols-2 lg:px-8">
              <div class="max-w-2xl py-24 mx-auto lg:max-w-none lg:py-64">
                <div class="lg:pr-16">
                  <h1 class="text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl xl:text-6xl">Focus on what matters</h1>
                  <p class="mt-4 text-xl text-gray-600">All the charts, datepickers, and notifications in the world can't beat checking off some items on a paper card.</p>
                  <div class="mt-6">
                    <a href="#" class="inline-block px-8 py-3 font-medium text-white bg-indigo-600 border border-transparent rounded-md hover:bg-indigo-700">Shop Productivity</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="w-full h-48 sm:h-64 lg:absolute lg:right-0 lg:top-0 lg:h-full lg:w-1/2">
            <img src="https://tailwindui.com/img/ecommerce-images/home-page-02-hero-half-width.jpg" alt="" class="object-cover object-center w-full h-full" />
          </div>
        </div>
      </div>

      <!-- Trending products -->
      <section aria-labelledby="trending-heading" class="bg-white">
        <div class="py-16 sm:py-24 lg:mx-auto lg:max-w-7xl lg:px-8 lg:py-32">
          <div class="flex items-center justify-between px-4 sm:px-6 lg:px-0">
            <h2 id="trending-heading" class="text-2xl font-bold tracking-tight text-gray-900">Trending products</h2>
            <a href="#" class="hidden text-sm font-semibold text-indigo-600 hover:text-indigo-500 sm:block">
              See everything
              <span aria-hidden="true"> &rarr;</span>
            </a>
          </div>

          <div class="relative mt-8">
            <div v-if="pending" class="relative w-full overflow-x-auto">
              <h2 id="trending-heading" class="text-2xl font-bold tracking-tight text-gray-900">Loading...</h2>
            </div>
            <div v-else class="relative w-full overflow-x-auto">
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

          <div class="px-4 mt-12 sm:hidden">
            <a href="#" class="text-sm font-semibold text-indigo-600 hover:text-indigo-500">
              See everything
              <span aria-hidden="true"> &rarr;</span>
            </a>
          </div>
        </div>
      </section>

      <!-- Collections -->
      <section aria-labelledby="collections-heading" class="bg-gray-100">
        <div class="px-4 mx-auto max-w-7xl sm:px-6 lg:px-8">
          <div class="max-w-2xl py-16 mx-auto sm:py-24 lg:max-w-none lg:py-32">
            <h2 id="collections-heading" class="text-2xl font-bold text-gray-900">Collections</h2>

            <div class="mt-6 space-y-12 lg:grid lg:grid-cols-3 lg:gap-x-6 lg:space-y-0">
              <div v-for="collection in collections" :key="collection.name" class="relative group">
                <div class="relative w-full overflow-hidden bg-white rounded-lg h-80 sm:aspect-h-1 sm:aspect-w-2 lg:aspect-h-1 lg:aspect-w-1 group-hover:opacity-75 sm:h-64">
                  <img :src="collection.imageSrc" :alt="collection.imageAlt" class="object-cover object-center w-full h-full" />
                </div>
                <h3 class="mt-6 text-sm text-gray-500">
                  <a :href="collection.href">
                    <span class="absolute inset-0" />
                    {{ collection.name }}
                  </a>
                </h3>
                <p class="text-base font-semibold text-gray-900">{{ collection.description }}</p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Sale and testimonials -->
      <div class="relative overflow-hidden">
        <!-- Decorative background image and gradient -->
        <div aria-hidden="true" class="absolute inset-0">
          <div class="absolute inset-0 mx-auto overflow-hidden max-w-7xl xl:px-8">
            <img src="https://tailwindui.com/img/ecommerce-images/home-page-02-sale-full-width.jpg" alt="" class="object-cover object-center w-full h-full" />
          </div>
          <div class="absolute inset-0 bg-white bg-opacity-75" />
          <div class="absolute inset-0 bg-gradient-to-t from-white via-white" />
        </div>

        <!-- Sale -->
        <section aria-labelledby="sale-heading" class="relative flex flex-col items-center px-4 pt-32 mx-auto text-center max-w-7xl sm:px-6 lg:px-8">
          <div class="max-w-2xl mx-auto lg:max-w-none">
            <h2 id="sale-heading" class="text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl lg:text-6xl">Get 25% off during our one-time sale</h2>
            <p class="max-w-xl mx-auto mt-4 text-xl text-gray-600">Most of our products are limited releases that won't come back. Get your favorite items while they're in stock.</p>
            <a href="#" class="inline-block w-full px-8 py-3 mt-6 font-medium text-white bg-gray-900 border border-transparent rounded-md hover:bg-gray-800 sm:w-auto">Get access to our one-time sale</a>
          </div>
        </section>

        <!-- Testimonials -->
        <section aria-labelledby="testimonial-heading" class="relative px-4 py-24 mx-auto max-w-7xl sm:px-6 lg:px-8 lg:py-32">
          <div class="max-w-2xl mx-auto lg:max-w-none">
            <h2 id="testimonial-heading" class="text-2xl font-bold tracking-tight text-gray-900">What are people saying?</h2>

            <div class="mt-16 space-y-16 lg:grid lg:grid-cols-3 lg:gap-x-8 lg:space-y-0">
              <blockquote v-for="testimonial in testimonials" :key="testimonial.id" class="sm:flex lg:block">
                <svg width="24" height="18" viewBox="0 0 24 18" aria-hidden="true" class="flex-shrink-0 text-gray-300">
                  <path d="M0 18h8.7v-5.555c-.024-3.906 1.113-6.841 2.892-9.68L6.452 0C3.188 2.644-.026 7.86 0 12.469V18zm12.408 0h8.7v-5.555C21.083 8.539 22.22 5.604 24 2.765L18.859 0c-3.263 2.644-6.476 7.86-6.451 12.469V18z" fill="currentColor" />
                </svg>
                <div class="mt-8 sm:ml-6 sm:mt-0 lg:ml-0 lg:mt-10">
                  <p class="text-lg text-gray-600">{{ testimonial.quote }}</p>
                  <cite class="block mt-4 not-italic font-semibold text-gray-900">{{ testimonial.attribution }}</cite>
                </div>
              </blockquote>
            </div>
          </div>
        </section>
      </div>
    </NuxtLayout>
</template>





