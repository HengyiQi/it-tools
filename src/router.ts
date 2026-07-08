import { createRouter, createWebHistory } from 'vue-router';
import { layouts } from './layouts/index';
import HomePage from './pages/Home.page.vue';
import NotFound from './pages/404.page.vue';
import { tools } from './tools';
import { config } from './config';
import { routes as demoRoutes } from './ui/demo/demo.routes';

const toolsRoutes = tools.map(({ path, name, component, ...toolConfig }) => ({
  path,
  name,
  component,
  meta: { isTool: true, layout: layouts.toolLayout, name, ...toolConfig },
}));

const toolsRedirectRoutes = tools
  .filter(({ redirectFrom }) => redirectFrom && redirectFrom.length > 0)
  .flatMap(
    ({ path, redirectFrom }) => redirectFrom?.map(redirectSource => ({ path: redirectSource, redirect: path })) ?? [],
  );

const router = createRouter({
  history: createWebHistory(config.app.baseUrl),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomePage,
    },
    {
      path: '/about',
      name: 'about',
      component: () => import('./views/About.vue'),
    },
    {
      path: '/privacy',
      name: 'privacy',
      component: () => import('./views/Privacy.vue'),
    },
    {
      path: '/cookie-policy',
      name: 'cookiePolicy',
      component: () => import('./views/CookiePolicy.vue'),
    },
    {
      path: '/disclaimer',
      name: 'disclaimer',
      component: () => import('./views/Disclaimer.vue'),
    },
    {
      path: '/contact',
      name: 'contact',
      component: () => import('./views/Contact.vue'),
    },
    ...toolsRoutes,
    ...toolsRedirectRoutes,
    ...(config.app.env === 'development' ? demoRoutes : []),
    { path: '/:pathMatch(.*)*', name: 'NotFound', component: NotFound },
  ],
});

export default router;
