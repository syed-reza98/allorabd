import { defineNuxtConfig } from "nuxt/config";
import { resolve} from "path";

// https://v3.nuxtjs.org/api/configuration/nuxt.config
export default defineNuxtConfig({
  modules: ["@nuxtjs/tailwindcss","@nuxt/image"],
  alias: {
    // "@": resolve(__dirname, "/"),
    assets: "/<rootDir>/assets",
  },
  runtimeConfig: {
    public: {
      backendUrl: "http://localhost:8000",
      frontendUrl: "http://localhost:3000",
    },
  },
  imports: {
    dirs: ["./utils"],
  },
  experimental: {
    asyncContext: true,
  },

  devtools: {
    timeline: {
      enabled: true
    }
  },

});