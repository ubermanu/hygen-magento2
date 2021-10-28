---
to: app/code/<%= module.replace('_', '/') %>/Api/Data/<%= model %>Interface.php
inject: true
after: const [^?/]*;|interface [^]*\n{
skip_if: const <%= h.changeCase.upper(h.changeCase.snake(name)) %>
---
    const <%= h.changeCase.upper(h.changeCase.snake(name)) %> = '<%= h.changeCase.snake(name) %>';