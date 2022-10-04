require 'yaml'

YAML.load(File.read('_data/writings.yml')).each do |group_slug, group|
  group['items'].each do |item_slug, item|
    File.open("writings-#{item_slug}.markdown", 'w') do |f|
      f.write <<-MD
---
layout: default
title: '#{item['title']}'
---

{% include document.html src='uploads/#{item_slug}.pdf' %}
      MD
    end
  end
end
