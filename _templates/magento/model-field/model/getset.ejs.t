---
to: app/code/<%= module.replace('_', '/') %>/Model/<%= className %>.php
inject: true
after: class [^]*    }
skip_if: protected \$<%= h.changeCase.camel(propertyName) %>
---

    /**
     * @return <%= propertyType %>
     */
    public function get<%= h.changeCase.pascal(propertyName) %>()
    {
        return $this->getData(self::<%= h.changeCase.upper(h.changeCase.snake(propertyName)) %>);
    }

    /**
     * @param <%= propertyType %> $<%= h.changeCase.camel(propertyName) %>
     * @return $this
     */
    public function set<%= h.changeCase.pascal(propertyName) %>($<%= h.changeCase.camel(propertyName) %>)
    {
        return $this->setData(self::<%= h.changeCase.upper(h.changeCase.snake(propertyName)) %>, $<%= h.changeCase.camel(propertyName) %>);
    }