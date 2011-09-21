# Shared Database

This chef recipe will symlink the database.yml from one application to
another.

## Installation

To install this, you will need to add the following to
cookbooks/main/recipes/default.rb:

require_recipe "shared-db"
Make sure this and any customizations to the recipe are committed to
your own fork of this repository.
