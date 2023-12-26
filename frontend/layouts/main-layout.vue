<script setup lang="ts">
const { isLoggedIn } = useAuth();
const footerNavigation = {
  products: [
    { name: 'Bags', href: '#' },
    { name: 'Tees', href: '#' },
    { name: 'Objects', href: '#' },
    { name: 'Home Goods', href: '#' },
    { name: 'Accessories', href: '#' },
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
  company: [
    { name: 'Who we are', href: '#' },
    { name: 'Sustainability', href: '#' },
    { name: 'Press', href: '#' },
    { name: 'Careers', href: '#' },
    { name: 'Terms & Conditions', href: '#' },
    { name: 'Privacy', href: '#' },
  ],
  legal: [
    { name: 'Terms of Service', href: '#' },
    { name: 'Return Policy', href: '#' },
    { name: 'Privacy Policy', href: '#' },
    { name: 'Shipping Policy', href: '#' },
  ],
  bottomLinks: [
    { name: 'Accessibility', href: '#' },
    { name: 'Privacy', href: '#' },
    { name: 'Terms', href: '#' },
  ],
}
</script>
<template>
    <div>
      <Head>
        <Title>Allora</Title>
      </Head>
      <div class="bg-white">
        <NuxtLoadingIndicator />
        <NavigationNavbar />
        <main>
          <slot />
        </main>

        <footer aria-labelledby="footer-heading" class="bg-white">
          <h2 id="footer-heading" class="sr-only">Footer</h2>
          <div class="px-4 mx-auto max-w-7xl sm:px-6 lg:px-8">
            <div class="border-t border-gray-200">
              <div class="pt-16 pb-20">
                <div class="md:flex md:justify-center">
                  <img src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600" alt="" class="w-auto h-8" />
                </div>
                <div class="max-w-5xl mx-auto mt-16 xl:grid xl:grid-cols-2 xl:gap-8">
                  <div class="grid grid-cols-2 gap-8 xl:col-span-2">
                    <div class="space-y-12 md:grid md:grid-cols-2 md:gap-8 md:space-y-0">
                      <div>
                        <h3 class="text-sm font-medium text-gray-900">Products</h3>
                        <ul role="list" class="mt-6 space-y-6">
                          <li v-for="item in footerNavigation.products" :key="item.name" class="text-sm">
                            <a :href="item.href" class="text-gray-500 hover:text-gray-600">{{ item.name }}</a>
                          </li>
                        </ul>
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
                    <div class="space-y-12 md:grid md:grid-cols-2 md:gap-8 md:space-y-0">
                      <div>
                        <h3 class="text-sm font-medium text-gray-900">Company</h3>
                        <ul role="list" class="mt-6 space-y-6">
                          <li v-for="item in footerNavigation.company" :key="item.name" class="text-sm">
                            <a :href="item.href" class="text-gray-500 hover:text-gray-600">{{ item.name }}</a>
                          </li>
                        </ul>
                      </div>
                      <div>
                        <h3 class="text-sm font-medium text-gray-900">Legal</h3>
                        <ul role="list" class="mt-6 space-y-6">
                          <li v-for="item in footerNavigation.legal" :key="item.name" class="text-sm">
                            <a :href="item.href" class="text-gray-500 hover:text-gray-600">{{ item.name }}</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="lg:grid lg:grid-cols-2 lg:gap-x-6 xl:gap-x-8">
                <div class="flex items-center p-6 bg-gray-100 rounded-lg sm:p-10">
                  <div class="max-w-sm mx-auto">
                    <h3 class="font-semibold text-gray-900">Sign up for our newsletter</h3>
                    <p class="mt-2 text-sm text-gray-500">The latest news, articles, and resources, sent to your inbox weekly.</p>
                    <form class="mt-4 sm:mt-6 sm:flex">
                      <label for="email-address" class="sr-only">Email address</label>
                      <input id="email-address" type="text" autocomplete="email" required="" class="w-full min-w-0 px-4 py-2 text-base text-gray-900 placeholder-gray-500 bg-white border border-gray-300 rounded-md shadow-sm appearance-none focus:border-indigo-500 focus:outline-none focus:ring-1 focus:ring-indigo-500" />
                      <div class="mt-3 sm:ml-4 sm:mt-0 sm:flex-shrink-0">
                        <button type="submit" class="flex items-center justify-center w-full px-4 py-2 text-base font-medium text-white bg-indigo-600 border border-transparent rounded-md shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 focus:ring-offset-white">Sign up</button>
                      </div>
                    </form>
                  </div>
                </div>

                <div class="relative flex items-center px-6 py-12 mt-6 sm:px-10 sm:py-16 lg:mt-0">
                  <div class="absolute inset-0 overflow-hidden rounded-lg">
                    <img src="https://tailwindui.com/img/ecommerce-images/footer-02-exclusive-sale.jpg" alt="" class="object-cover object-center w-full h-full saturate-0 filter" />
                    <div class="absolute inset-0 bg-indigo-600 bg-opacity-90" />
                  </div>
                  <div class="relative max-w-sm mx-auto text-center">
                    <h3 class="text-2xl font-bold tracking-tight text-white">Get early access</h3>
                    <p class="mt-2 text-gray-200">
                      Did you sign up to the newsletter? If so, use the keyword we sent you to get access. <a href="#" class="font-bold text-white whitespace-nowrap hover:text-gray-200">Go now<span aria-hidden="true"> &rarr;</span></a>
                    </p>
                  </div>
                </div>
              </div>
            </div>

            <div class="py-10 md:flex md:items-center md:justify-between">
              <div class="text-center md:text-left">
                <p class="text-sm text-gray-500">&copy; 2021 All Rights Reserved</p>
              </div>

              <div class="flex items-center justify-center mt-4 md:mt-0">
                <div class="flex space-x-8">
                  <a v-for="item in footerNavigation.bottomLinks" :key="item.name" :href="item.href" class="text-sm text-gray-500 hover:text-gray-600">{{ item.name }}</a>
                </div>

                <div class="pl-6 ml-6 border-l border-gray-200">
                  <a href="#" class="flex items-center text-gray-500 hover:text-gray-600">
                    <img src="https://tailwindui.com/img/flags/flag-canada.svg" alt="" class="flex-shrink-0 w-5 h-auto" />
                    <span class="ml-3 text-sm">Change</span>
                    <span class="sr-only">location and currency</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </footer>
        </div>

    </div>
</template>
  