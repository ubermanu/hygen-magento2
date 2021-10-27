---
to: app/code/<%= module.replace('_', '/') %>/Model/<%= className %>.php
inject: true
after: const [^?/]*;|class [^]*\n{
skip_if: const <%= h.changeCase.upper(h.changeCase.snake(propertyName)) %>
---
    const <%= h.changeCase.upper(h.changeCase.snake(propertyName)) %> = '<%= h.changeCase.snake(propertyName) %>';