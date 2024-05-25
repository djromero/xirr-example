# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.1.0"

group :main do
  gem "xirr", "= 0.7.1", git: "https://github.com/djromero/xirr.git"
  gem "activesupport", require: "active_support/all"
end

group :dev do
  gem "ruby-lsp"
end

group :test do
  gem "byebug"
  gem "minitest", require: "minitest/autorun"
end
