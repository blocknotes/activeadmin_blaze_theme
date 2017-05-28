# Active Admin Blaze Theme [![Gem Version](https://badge.fury.io/rb/activeadmin_blaze_theme.svg)](https://badge.fury.io/rb/activeadmin_blaze_theme)

A theme for Active Admin using [Blaze CSS](http://blazecss.com/)

Features:

- clean UI
- compact nested forms
- [customizable](#customize): colors, sidebar position, compact title bar, scroll on cells
- custom boolean input: [toggle](#toggle)
- Blaze CSS [widgets](#blaze-widgets)

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
$bg-form1: #f4f4f4;                // bg 1st level forms
$bg-form2: darken($bg-form1, 3%);  // bg 2nd level forms (nested)
$bg-form3: darken($bg-form1, 6%);  // bg 3rd level forms (nested)
$bg-form4: darken($bg-form1, 9%);  // bg 4th level forms (nested)
$bg-form-sub-headings: #d4d4d4;    // bg nested forms title
$bg-header: $color-brand;          // bg header bar
$bg-inputs: #fff;                  // bg forms inputs
$bg-menu-active: #7b929e;          // bg menu item current / hover
$fg-box-title: #fff;
$fg-button-link: #fff;
$fg-menu-items: #f8f8f8;
$fg-table-borders: #e4e4e4;
$fg-table-link: #eee;
/* other variables */
$form-padding: 10px;
$inputs-spacing: 10px;
$height-inputs: 28px;
$text-shadow: #000;
```

- To move sidebar on the left add to your ActiveAdmin styles (after blaze theme import):

```css
#active_admin_content.with_sidebar {
  @extend .sidebar_left;
}
```

- More options:

```css
// compact title bar
#title_bar {
  @extend .compact_titlebar;
}

// scrollable table cells
.index_content table {
  @extend .scoll_cells;
}
```

## Custom fields

### Toggle

In *form* \ *inputs* block:

`f.input :boolean, as: :blaze_toggle`

To change toggle color:

`f.input :boolean, as: :blaze_toggle, input_html: { toggle_class: 'c-toggle--brand' }`

Available: `c-toggle--brand, c-toggle--info, c-toggle--warning, c-toggle--success, c-toggle--error`

## Blaze widgets

See components avaible in Blaze CSS [docs](http://blazecss.com/components/buttons/).

Badge example:

```ruby
f.input :price, label: raw( 'Price <span class="c-badge c-badge--warning" style="position: relative; top: -5px">in $</span>' )
```

Button example:

```ruby
a 'clear form', href: '#', class: 'c-button c-button--error', onclick: 'event.preventDefault();document.forms[0].reset();'
```

Progress bar example:

```ruby
div class: 'c-progress' do
  div class: 'c-progress__bar c-progress__bar--success', style: "width: #{f.object.a_field}%;"
end
```

## Screenshots

Index:

![index](screenshot1.jpg)

Edit (with `$form-padding: 2px;`):

![edit](screenshot2.jpg)

## Contributors

- [Mattia Roccoberton](http://blocknot.es) - creator, maintainer

## License

[MIT](LICENSE)
