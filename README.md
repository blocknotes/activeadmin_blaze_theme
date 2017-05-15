# Active Admin Blaze Theme [![Gem Version](https://badge.fury.io/rb/activeadmin_blaze_theme.svg)](https://badge.fury.io/rb/activeadmin_blaze_theme)

A theme for Active Admin using [Blaze CSS](http://blazecss.com/)

Features:

- clean UI
- compact edit form
- Blaze CSS widgets

## Install

- Add to your Gemfile:

`gem 'activeadmin_blaze_theme'`

- Execute bundle

- Add at the end of your ActiveAdmin styles (_app/assets/stylesheets/active_admin.scss_):

`@import "activeadmin_blaze_theme/theme";`

## Customize

- To change colors add before your ActiveAdmin styles (_app/assets/stylesheets/active_admin.scss_):

```css
/* blaze colors */
$color-brand: #2C3E50;
$color-info: #4dabf5;
$color-warning: #ff9800;
$color-success: #4caf50;
$color-error: #f44336;
/* main variables */
$bg-form1: #f4f4f4;
$bg-form2: darken($bg-form1, 3%);
$bg-form3: darken($bg-form1, 6%);
$bg-form4: darken($bg-form1, 9%);
$bg-header: $color-brand;
$bg-inputs: #fff;
$fg-box-title: #fff;
$fg-link2: #eee;
$fg-table-borders: #e4e4e4;
```

## Screenshots

Index:

![index](screenshot1.jpg)

Edit:

![edit](screenshot2.jpg)

## Contributors

- [Mattia Roccoberton](http://blocknot.es) - creator, maintainer

## License

[MIT](LICENSE)
