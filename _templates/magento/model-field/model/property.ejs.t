---
to: app/code/<%= moduleName.replace('_', '/') %>/Model/<%= className %>.php
inject: true
after: "{"
# skip_if: protected $<%= h.changeCase.camel(propertyName) %>;
---

    const <%= h.changeCase.upper(h.changeCase.snake(propertyName)) %> = '<%= h.changeCase.snake(propertyName) %>';

    /**
     * @var <%= propertyType %>
     */
    protected $<%= h.changeCase.camel(propertyName) %>;
