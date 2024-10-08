// @ts-check
import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
	site: 'https://rising3.github.io',
	base: '/shellscript-cookbook',
	integrations: [
		starlight({
			title: 'Shellscript Cookbook',
			logo: {
				src: './src/assets/shell.webp',
			},
			defaultLocale: 'root',
			locales: {
				root: {
					label: '日本語',
					lang: 'ja',
			  	},
			  	'en': {
					label: 'English',
					lang: 'en',
			  	},
			},
			social: {
				github: 'https://github.com/rising3/shellscript-cookbook',
			},
			sidebar: [
				{
					label: 'はじめに',
					translations: {
						'en': 'Intoroduction',
					},
					link: '/introduction'
				},
				{
					label: 'Chapter 0 - 事始め',
					translations: {
						'en': 'Chapter 0 - the beginning',
					},
					autogenerate: { directory: 'chapter00' },
				},
				{
					label: 'Chapter 1 - 基本を学ぶ',
					translations: {
						'en': 'Chapter 1 - learn the basics',
					},
					autogenerate: { directory: 'chapter01' },
				},
				{
					label: 'Chapter 2 - もっと詳しく知る',
					translations: {
						'en': 'Chapter 2 - learn more',
					},
					autogenerate: { directory: 'chapter02' },
				},
				{
					label: 'Chapter 3 - シェル展開',
					translations: {
						'en': 'Chapter 3 - shell expansions',
					},
					autogenerate: { directory: 'chapter03' },
				},
				{
					label: 'Chapter 4 - リダイレクト',
					translations: {
						'en': 'Chapter 4 - redirections',
					},
					autogenerate: { directory: 'chapter04' },
				},
				{
					label: 'Chapter 5 - パイプライン',
					translations: {
						'en': 'Chapter 5 - pipelines',
					},
					autogenerate: { directory: 'chapter05' },
				},
				{
					label: '参考書籍',
					translations: {
						'en': 'Reference books',
					},
					link: '/reference-books'
				},
				{
					label: 'サンプルコード',
					translations: {
						'en': 'Sample codes',
					},
					link: 'https://https://github.com/rising3/shellscript-cookbook/samples'
				},
/*
				{
					label: 'Guides',
					items: [
						// Each item here is one entry in the navigation menu.
						{ label: 'Example Guide', slug: 'guides/example' },
					],
				},
				{
					label: 'Reference',
					autogenerate: { directory: 'reference' },
				},
*/
			],
		}),
	],
});
