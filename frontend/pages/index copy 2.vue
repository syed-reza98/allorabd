<script setup lang="ts">
import type { Ref } from 'vue';
import { ref } from 'vue'
interface Product {
  id: number;
  category_id: number;
  sku: string;
  name: string;
  slug: string;
  image_url: string;
  is_visible: number;
  description: string;
  price: number;
  created_at: string;
  updated_at: string;
}
// const { isLoggedIn } = useAuth();
// const { data: products } = await useLarafetch<Product[]>("/api/products");
const { data: products } = await useFetch(`http://localhost:8000/api/products`);

// style="background-image: url(https://daisyui.com/images/stock/photo-1507358522600-9f71e620c44e.jpg);">

// const trendingProducts = [
//   {
//     id: 1,
//     name: 'Leather Long Wallet',
//     color: 'Natural',
//     price: '$75',
//     href: '#',
//     imageSrc: 'https://tailwindui.com/img/ecommerce-images/home-page-04-trending-product-02.jpg',
//     imageAlt: 'Hand stitched, orange leather long wallet.',
//   },
//   {
//     id: 1,
//     name: 'Leather Long Wallet',
//     color: 'Natural',
//     price: '$75',
//     href: '#',
//     imageSrc: 'https://tailwindui.com/img/ecommerce-images/home-page-04-trending-product-02.jpg',
//     imageAlt: 'Hand stitched, orange leather long wallet.',
//   },
//   {
//     id: 1,
//     name: 'Leather Long Wallet',
//     color: 'Natural',
//     price: '$75',
//     href: '#',
//     imageSrc: 'https://tailwindui.com/img/ecommerce-images/home-page-04-trending-product-02.jpg',
//     imageAlt: 'Hand stitched, orange leather long wallet.',
//   },
//   {
//     id: 1,
//     name: 'Leather Long Wallet',
//     color: 'Natural',
//     price: '$75',
//     href: '#',
//     imageSrc: 'https://tailwindui.com/img/ecommerce-images/home-page-04-trending-product-02.jpg',
//     imageAlt: 'Hand stitched, orange leather long wallet.',
//   },
//   // More products...
// ]
const perks = [
  {
    name: 'Free returns',
    imageUrl: 'https://tailwindui.com/img/ecommerce/icons/icon-returns-light.svg',
    description: 'Not what you expected? Place it back in the parcel and attach the pre-paid postage stamp.',
  },
  {
    name: 'Same day delivery',
    imageUrl: 'https://tailwindui.com/img/ecommerce/icons/icon-calendar-light.svg',
    description:
      'We offer a delivery service that has never been done before. Checkout today and receive your products within hours.',
  },
  {
    name: 'All year discount',
    imageUrl: 'https://tailwindui.com/img/ecommerce/icons/icon-gift-card-light.svg',
    description: 'Looking for a deal? You can use the code "ALLYEAR" at checkout and get money off all year round.',
  },
  {
    name: 'For the planet',
    imageUrl: 'https://tailwindui.com/img/ecommerce/icons/icon-planet-light.svg',
    description: 'We’ve pledged 1% of sales to the preservation and restoration of the natural environment.',
  },
]
const footerNavigation = {
  products: [
    { name: 'Bags', href: '#' },
    { name: 'Tees', href: '#' },
    { name: 'Objects', href: '#' },
    { name: 'Home Goods', href: '#' },
    { name: 'Accessories', href: '#' },
  ],
  company: [
    { name: 'Who we are', href: '#' },
    { name: 'Sustainability', href: '#' },
    { name: 'Press', href: '#' },
    { name: 'Careers', href: '#' },
    { name: 'Terms & Conditions', href: '#' },
    { name: 'Privacy', href: '#' },
  ],
  customerService: [
    { name: 'Contact', href: '#' },
    { name: 'Shipping', href: '#' },
    { name: 'Returns', href: '#' },
    { name: 'Warranty', href: '#' },
    { name: 'Secure Payments', href: '#' },
    { name: 'FAQ', href: '#' },
    { name: 'Find a store', href: '#' },
  ],
}

const open = ref(false)
</script>


<template>
  <NuxtLayout name="main-layout">
              <!-- CTA section -->
      <section aria-labelledby="sale-heading">
        <div class="overflow-hidden pt-32 sm:pt-14">
          <div class="bg-gray-800">
            <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
              <div class="relative pb-16 pt-48 sm:pb-24">
                <div>
                  <h2 id="sale-heading" class="text-4xl font-bold tracking-tight text-white md:text-5xl">
                    Final Stock.
                    <br />
                    Up to 50% off.
                  </h2>
                  <div class="mt-6 text-base">
                    <a href="#" class="font-semibold text-white">
                      Shop the sale
                      <span aria-hidden="true"> &rarr;</span>
                    </a>
                  </div>
                </div>

                <div class="absolute -top-32 left-1/2 -translate-x-1/2 transform sm:top-6 sm:translate-x-0">
                  <div class="ml-24 flex min-w-max space-x-6 sm:ml-3 lg:space-x-8">
                    <div class="flex space-x-6 sm:flex-col sm:space-x-0 sm:space-y-6 lg:space-y-8">
                      <div class="flex-shrink-0">
                        <img class="h-64 w-64 rounded-lg object-cover md:h-72 md:w-72" src="https://tailwindui.com/img/ecommerce-images/home-page-03-category-01.jpg" alt="" />
                      </div>

                      <div class="mt-6 flex-shrink-0 sm:mt-0">
                        <img class="h-64 w-64 rounded-lg object-cover md:h-72 md:w-72" src="https://tailwindui.com/img/ecommerce-images/home-page-03-category-02.jpg" alt="" />
                      </div>
                    </div>
                    <div class="flex space-x-6 sm:-mt-20 sm:flex-col sm:space-x-0 sm:space-y-6 lg:space-y-8">
                      <div class="flex-shrink-0">
                        <img class="h-64 w-64 rounded-lg object-cover md:h-72 md:w-72" src="https://tailwindui.com/img/ecommerce-images/home-page-03-favorite-01.jpg" alt="" />
                      </div>

                      <div class="mt-6 flex-shrink-0 sm:mt-0">
                        <img class="h-64 w-64 rounded-lg object-cover md:h-72 md:w-72" src="https://tailwindui.com/img/ecommerce-images/home-page-03-favorite-02.jpg" alt="" />
                      </div>
                    </div>
                    <div class="flex space-x-6 sm:flex-col sm:space-x-0 sm:space-y-6 lg:space-y-8">
                      <div class="flex-shrink-0">
                        <img class="h-64 w-64 rounded-lg object-cover md:h-72 md:w-72" src="https://tailwindui.com/img/ecommerce-images/home-page-03-category-01.jpg" alt="" />
                      </div>

                      <div class="mt-6 flex-shrink-0 sm:mt-0">
                        <img class="h-64 w-64 rounded-lg object-cover md:h-72 md:w-72" src="https://tailwindui.com/img/ecommerce-images/home-page-03-category-02.jpg" alt="" />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
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
            <div class="relative w-full overflow-x-auto">
              <ul role="list" class="mx-4 inline-flex space-x-8 sm:mx-6 lg:mx-0 lg:grid lg:grid-cols-4 lg:gap-x-8 lg:space-x-0">
                <li v-if="products && products.data" v-for="product in products.data" :key="product.id" class="inline-flex w-64 flex-col text-center lg:w-auto">
                  <div class="group relative">
                    <div class="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200">
                      <img :src="product.image_url" :alt="product.image_url" class="h-full w-full object-cover object-center group-hover:opacity-75" />
                    </div>
                    <div class="mt-6">
                      <p class="text-sm text-gray-500">{{ product.color }}</p>
                      <h3 class="mt-1 font-semibold text-gray-900">
                        <!-- <a :href="product.href">
                          <span class="absolute inset-0" />
                          {{ product.name }}
                        </a> -->
                        <NuxtLink :to="'/products/' + product.id">
                          <span class="absolute inset-0" />
                          {{ product.name }}
                        </NuxtLink>
                      </h3>
                      <p class="mt-1 text-gray-900">{{ product.price }}</p>
                    </div>
                  </div>

                  <!-- <h4 class="sr-only">Available colors</h4>
                  <ul role="list" class="mt-auto flex items-center justify-center space-x-3 pt-6">
                    <li v-for="color in product.availableColors" :key="color.name" class="h-4 w-4 rounded-full border border-black border-opacity-10" :style="{ backgroundColor: color.colorBg }">
                      <span class="sr-only">{{ color.name }}</span>
                    </li>
                  </ul> -->
                </li>
              </ul>
            </div>
          </div>

          <div class="mt-12 px-4 sm:hidden">
            <a href="#" class="text-sm font-semibold text-indigo-600 hover:text-indigo-500">
              See everything
              <span aria-hidden="true"> &rarr;</span>
            </a>
          </div>
        </div>
      </section>

      <section aria-labelledby="perks-heading" class="border-t border-gray-200 bg-gray-50">
        <h2 id="perks-heading" class="sr-only">Our perks</h2>

        <div class="mx-auto max-w-7xl px-4 py-24 sm:px-6 sm:py-32 lg:px-8">
          <div class="grid grid-cols-1 gap-y-12 sm:grid-cols-2 sm:gap-x-6 lg:grid-cols-4 lg:gap-x-8 lg:gap-y-0">
            <div v-for="perk in perks" :key="perk.name" class="text-center md:flex md:items-start md:text-left lg:block lg:text-center">
              <div class="md:flex-shrink-0">
                <div class="flow-root">
                  <img class="-my-1 mx-auto h-24 w-auto" :src="perk.imageUrl" alt="" />
                </div>
              </div>
              <div class="mt-6 md:ml-4 md:mt-0 lg:ml-0 lg:mt-6">
                <h3 class="text-base font-medium text-gray-900">{{ perk.name }}</h3>
                <p class="mt-3 text-sm text-gray-500">{{ perk.description }}</p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <footer aria-labelledby="footer-heading" class="bg-gray-50">
        <h2 id="footer-heading" class="sr-only">Footer</h2>
        <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
          <div class="border-t border-gray-200 py-20">
            <div class="grid grid-cols-1 md:grid-flow-col md:auto-rows-min md:grid-cols-12 md:gap-x-8 md:gap-y-16">
              <!-- Image section -->
              <div class="col-span-1 md:col-span-2 lg:col-start-1 lg:row-start-1">
                <img src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600" alt="" class="h-8 w-auto" />
              </div>

              <!-- Sitemap sections -->
              <div class="col-span-6 mt-10 grid grid-cols-2 gap-8 sm:grid-cols-3 md:col-span-8 md:col-start-3 md:row-start-1 md:mt-0 lg:col-span-6 lg:col-start-2">
                <div class="grid grid-cols-1 gap-y-12 sm:col-span-2 sm:grid-cols-2 sm:gap-x-8">
                  <div>
                    <h3 class="text-sm font-medium text-gray-900">Products</h3>
                    <ul role="list" class="mt-6 space-y-6">
                      <li v-for="item in footerNavigation.products" :key="item.name" class="text-sm">
                        <a :href="item.href" class="text-gray-500 hover:text-gray-600">{{ item.name }}</a>
                      </li>
                    </ul>
                  </div>
                  <div>
                    <h3 class="text-sm font-medium text-gray-900">Company</h3>
                    <ul role="list" class="mt-6 space-y-6">
                      <li v-for="item in footerNavigation.company" :key="item.name" class="text-sm">
                        <a :href="item.href" class="text-gray-500 hover:text-gray-600">{{ item.name }}</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <div>
                  <h3 class="text-sm font-medium text-gray-900">Customer Service</h3>
                  <ul role="list" class="mt-6 space-y-6">
                    <li v-for="item in footerNavigation.customerService" :key="item.name" class="text-sm">
                      <a :href="item.href" class="text-gray-500 hover:text-gray-600">{{ item.name }}</a>
                    </li>
                  </ul>
                </div>
              </div>

              <!-- Newsletter section -->
              <div class="mt-12 md:col-span-8 md:col-start-3 md:row-start-2 md:mt-0 lg:col-span-4 lg:col-start-9 lg:row-start-1">
                <h3 class="text-sm font-medium text-gray-900">Sign up for our newsletter</h3>
                <p class="mt-6 text-sm text-gray-500">The latest deals and savings, sent to your inbox weekly.</p>
                <form class="mt-2 flex sm:max-w-md">
                  <label for="email-address" class="sr-only">Email address</label>
                  <input id="email-address" type="text" autocomplete="email" required="" class="w-full min-w-0 appearance-none rounded-md border border-gray-300 bg-white px-4 py-2 text-base text-gray-900 placeholder-gray-500 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-1 focus:ring-indigo-500" />
                  <div class="ml-4 flex-shrink-0">
                    <button type="submit" class="flex w-full items-center justify-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 text-base font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">Sign up</button>
                  </div>
                </form>
              </div>
            </div>
          </div>

          <div class="border-t border-gray-100 py-10 text-center">
            <p class="text-sm text-gray-500">&copy; 2021 Your Company, Inc. All rights reserved.</p>
          </div>
        </div>
      </footer>
    
    <section
      class="w-fit mx-auto grid grid-cols-1 lg:grid-cols-3 md:grid-cols-2 justify-items-center justify-center gap-y-20 gap-x-14 mt-10 mb-5">

      <!--   ✅ Product card 1 - Starts Here 👇 -->
      <div v-if="products && products.data" v-for="product in products.data" :key="product.id">
        <div class="w-72 bg-white shadow-md rounded-xl duration-500 hover:scale-105 hover:shadow-xl">
          <NuxtLink class="text-purple-600 font-bold" :to="'/products/' + product.id">
            <img :src="product.image_url" alt="Product" class="h-80 w-72 object-cover rounded-t-xl" />
            <div class="px-4 py-3 w-72">
              <span class="text-gray-400 mr-3 uppercase text-xs">Brand</span>
              <p class="text-lg font-bold text-black truncate block capitalize">{{ product.name }}</p>
              <div class="flex items-center">
                <p class="text-lg font-semibold text-black cursor-auto my-3">{{ product.price }}</p>
                <del>
                  <!-- <p class="text-sm text-gray-600 cursor-auto ml-2">{{ product.price }}</p> -->
                </del>
                <div class="ml-auto"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                    class="bi bi-bag-plus" viewBox="0 0 16 16">
                    <path fill-rule="evenodd"
                      d="M8 7.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0v-1.5H6a.5.5 0 0 1 0-1h1.5V8a.5.5 0 0 1 .5-.5z" />
                    <path
                      d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z" />
                  </svg></div>
              </div>
            </div>
          </NuxtLink>
        </div>
      </div>
      <!--   🛑 Product card 1 - Ends Here  -->
    </section>
  </NuxtLayout>
</template>




