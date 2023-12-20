<script setup lang="ts">
const { isLoggedIn } = useAuth();
</script>
<template>
    <div>
      <Head>
        <Title>Laravel</Title>
      </Head>
      <!-- <NavigationNavbar /> -->
      
      <NavigationNavbar />
      <div class="bg-white">
      <main>
      <!-- Page Content -->
        <slot />
      </main>

      </div>

    </div>
</template>
  