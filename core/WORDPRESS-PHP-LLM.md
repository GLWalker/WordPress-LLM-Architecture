# WORDPRESS-PHP-LLM.md

## 1. Purpose

This document represents the server-side architectural layer of WordPress Core. It defines the foundational lifecycle, data persistence, and extension mechanisms (Plugin API) that govern platform behavior. It is the primary intelligence source for logic, bootstrapping, and API orchestration within the WordPress global environment.

---

## 2. Scope

- **Included**: Global functions, classes, methods, hooks, and variables that follow WordPress architectural conventions. This includes symbols defined within `wp-admin`, `wp-includes`, and root core directories.
- **Excluded**: Plugin-specific logic, theme-specific templates, third-party libraries not modified by Core, and client-side JavaScript execution context.

---

## 3. Core Constructs

- **Symbols**: Global identifiers including functions (e.g., `wp_insert_post`), classes (e.g., `WP_Query`), and class methods (e.g., `wpdb::prepare`).
- **Events**: Execution points for extensibility via Action hooks and Filter hooks.
- **Registrations**: System-level declarations including REST routes, Custom Post Types, Taxonomies, Metadata fields, and AJAX handlers.
- **Context**: Runtime state indicators including Global variables (e.g., `$wpdb`, `$wp_query`) and system constants (e.g., `ABSPATH`, `WPINC`).
- **Patterns**: Fundamental implementation structures including the WordPress Loop, template resolution, authentication flows, and request handling.

---

## 4. Structural Identifiers

### Identifier Conventions

- Functions commonly follow `wp_*` naming.
- Classes commonly follow `WP_*` naming.
- Methods follow standard PHP OOP conventions within WP classes.
- Definitions occur within PHPDoc using `@since`, `@param`, `@return`.

---

### Hook Execution and Binding

- Execution:
    - `do_action( $tag, ...$args )`
    - `apply_filters( $tag, $value, ...$args )`

- Binding:
    - `add_action( $tag, $callback, $priority, $accepted_args )`
    - `add_filter( $tag, $callback, $priority, $accepted_args )`

---

### High-Frequency Action Hooks

init
wp_loaded
plugins_loaded
after_setup_theme
wp_enqueue_scripts
admin_enqueue_scripts
save_post
wp_insert_post
template_redirect
rest_api_init

Dynamic:
wp*ajax*{action}
wp*ajax_nopriv*{action}

---

### High-Frequency Filter Hooks

the_content
the_title
wp_insert_post_data
rest_pre_dispatch
rest_post_dispatch
script_loader_tag
style_loader_tag

---

### API Registration Surfaces

register_post_type
register_taxonomy
register_rest_route
register_block_type
add_shortcode
register_widget
register_sidebar
add_meta_box

---

## 5. Intelligence Record Definitions

### Symbol Record

- `type`
- `name`
- `category`
- `description`
- `signature`
- `since`
- `extraction_confidence`
- `usage_confidence`

---

### Event Record

- `type`
- `name`
- `category`
- `trigger`
- `description`
- `extraction_confidence`
- `usage_confidence`

---

### Registration Record

- `type`
- `category`
- `identifier`
- `arguments`
- `callback`
- `extraction_confidence`
- `usage_confidence`

---

### Pattern Record

- `type`
- `name`
- `description`
- `required_components`
- `extraction_confidence`
- `usage_confidence`

---

## 6. Dual Confidence Model

### Extraction Confidence

- **1.0**: Full PHPDoc definition
- **0.7**: Inferred from structure
- **0.3**: Dynamic or partial

---

### Usage Confidence

- **1.0**: Public Core API
- **0.5**: Internal / restricted
- **0.1**: Deprecated

---

## 7. Standard Patterns

### Core Bootstrapping & Lifecycle

- Files:
    - `wp-load.php`
    - `wp-settings.php`
    - `template-loader.php`

- Order:
    1. Constants
    2. Globals
    3. Plugin load
    4. Theme load
    5. Template resolution

---

### Plugin API (Hooks)

- Actions: side effects
- Filters: value transformation (must return)

---

### Database & Meta

Core functions:

add_metadata
get_metadata
update_metadata
delete_metadata

Post meta wrappers:

add_post_meta
get_post_meta
update_post_meta
delete_post_meta

Database:

$wpdb
$wpdb->prepare

---

### Authentication & Capabilities

wp_signon
wp_get_current_user
current_user_can

---

### Options & Settings

get_option
update_option
add_option
delete_option

---

### REST API Patterns

register_rest_route

Hook:

rest_api_init

Route structure:

namespace/version/route

Required:

permission_callback

---

### AJAX Patterns

Hooks:

wp*ajax*{action}
wp*ajax_nopriv*{action}

Binding:

add_action('wp_ajax_my_action', 'handler')
add_action('wp_ajax_nopriv_my_action', 'handler')

---

### Theme & Template Engine

get_query_template
locate_template

Globals:

$wp_query
$post

---

### Filesystem & I/O

WP_Filesystem
wp_remote_get
wp_remote_post

---

### Global Context Variables

$wpdb
$wp_query
$post
$wp
$wp_filter

---

### Security & Nonce Patterns

wp_create_nonce
wp_verify_nonce
check_ajax_referer

---

## 8. Weak / Non-Standard Patterns

### Structural Weaknesses

- Direct SQL without `$wpdb->prepare`
- Direct mutation of globals
- Missing `permission_callback` in REST

---

### Ambiguous Constructs

- Dynamic hook names
- Variable extraction from arrays in hooks

---

## 9. Output Shape

### Symbol Record Structure

```json
{
	"type": "symbol",
	"name": "string",
	"category": "string",
	"description": "string",
	"signature": "string",
	"since": "string",
	"extraction_confidence": 0.0,
	"usage_confidence": 0.0
}
```

### Event Record Structure

```json
{
	"type": "event",
	"name": "string",
	"category": "string",
	"trigger": "string",
	"description": "string",
	"extraction_confidence": 0.0,
	"usage_confidence": 0.0
}
```

### Registration Record Structure

```json
{
	"type": "registration",
	"category": "string",
	"identifier": "string",
	"arguments": {},
	"callback": "string",
	"extraction_confidence": 0.0,
	"usage_confidence": 0.0
}
```

### Pattern Record Structure

```json
{
	"type": "pattern",
	"name": "string",
	"description": "string",
	"required_components": ["string"],
	"extraction_confidence": 0.0,
	"usage_confidence": 0.0
}
```
