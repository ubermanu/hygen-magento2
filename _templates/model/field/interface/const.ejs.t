---
to: app/code/<%= module.replace('_', '/') %>/Api/Data/<%= model %>Interface.php
inject: true
after: const [^?/]*;|interface [^]*\n{
skip_if: const KEY_<%= h.changeCase.upper(h.changeCase.snake(name)) %>
---
    const KEY_<%= h.changeCase.upper(h.changeCase.snake(name)) %> = '<%= h.changeCase.snake(name) %>';