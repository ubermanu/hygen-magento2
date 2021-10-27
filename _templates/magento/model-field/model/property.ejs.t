---
to: app/code/<%= module.replace('_', '/') %>/Model/<%= name %>.php
inject: true
after: protected [^?/]*;|const [^?/]*;|class [^]*\n{
skip_if: protected \$<%= h.changeCase.camel(propertyName) %>;
---
    /**
     * @var <%= propertyType %>
     */
    protected $<%= h.changeCase.camel(propertyName) %>;