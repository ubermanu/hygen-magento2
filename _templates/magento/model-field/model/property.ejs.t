---
to: app/code/<%= moduleName.replace('_', '/') %>/Model/<%= className %>.php
inject: true
after: protected [^?/]*;|const [^?/]*;|class [^]*\n{
skip_if: protected \$<%= h.changeCase.camel(propertyName) %>;
---
    /**
     * @var <%= propertyType %>
     */
    protected $<%= h.changeCase.camel(propertyName) %>;