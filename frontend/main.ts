import { createApp } from 'nuxt';

async function startApp() {
    const app = await createApp({
        // Nuxt configuration options
        // ...
    });

    // Start the Nuxt app
    app.listen(3000, () => {
        console.log('Nuxt app is running on port 3000');
    });
}

startApp();
