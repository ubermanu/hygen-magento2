---
to: app/code/<%= module.replace('_', '/') %>/Model/<%= model %>.php
inject: true
after: const [^?/]*;|class [^]*\n{
skip_if: const <%= h.changeCase.upper(h.changeCase.snake(name)) %>
---
    const <%= h.changeCase.upper(h.changeCase.snake(name)) %> = '<%= h.changeCase.snake(name) %>';