<template>
    <div data-theme="fantasy">
      <Head>
        <Title>Laravel</Title>
        <link href="https://cdn.jsdelivr.net/npm/daisyui@4.4.20/dist/full.min.css" rel="stylesheet" type="text/css" />
        <!-- Vue Link Component -->
        <!-- <script src="https://cdn.tailwindcss.com"></script> -->
      </Head>
      <div class="navbar bg-base-100">
        <div class="navbar-start">
            <div class="dropdown">
            <div tabindex="0" role="button" class="btn btn-ghost lg:invisible">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h8m-8 6h16" /></svg>
            </div>
            <ul tabindex="0" class="menu menu-sm dropdown-content mt-3 z-[1] p-2 shadow bg-base-100 rounded-box w-52">
                <li><a>Item 1</a></li>
                <li>
                <a>Parent</a>
                <ul class="p-2">
                    <li><a>Submenu 1</a></li>
                    <li><a>Submenu 2</a></li>
                </ul>
                </li>
                <li><a>Item 3</a></li>
            </ul>
            </div>
            <!-- <a class="btn btn-ghost text-xl">daisyUI</a> -->
            <NuxtLink href="/" class="btn btn-ghost text-xl">
                daisyUI
            </NuxtLink>
        </div>
        <div class="navbar-center hidden lg:flex">
            <ul class="menu menu-horizontal px-1">
            <li>
            <NuxtLink href="/about" class="underline text-sm text-gray-600 hover:text-gray-900">
                    About
            </NuxtLink>
            </li>
            <li>
                <details>
                <summary>Parent</summary>
                <ul class="p-2">
                    <li><a>Submenu 1</a></li>
                    <li><a>Submenu 2</a></li>
                </ul>
                </details>
            </li>
            <li><a>Item 3</a></li>
            </ul>
        </div>
        <div class="navbar-end">
            <a class="btn">Button</a>
        </div>
      </div>

      <main>
      <!-- Page Content -->
      <slot />
    </main>
    </div>
</template>
