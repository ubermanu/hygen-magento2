---
to: app/code/<%= module.replace('_', '/') %>/Model/<%= model %>.php
inject: true
after: class [^]*    }
skip_if: public function .*<%= h.changeCase.pascal(name) %>\(\)
---
<%= '' %>
    /**
     * {@inheritdoc}
     */
    public function get<%= h.changeCase.pascal(name) %>()
    {
        return $this->getData(self::<%= h.changeCase.upper(h.changeCase.snake(name)) %>);
    }

    /**
     * {@inheritdoc}
     */
    public function set<%= h.changeCase.pascal(name) %>($<%= h.changeCase.camel(name) %>)
    {
        return $this->setData(self::<%= h.changeCase.upper(h.changeCase.snake(name)) %>, $<%= h.changeCase.camel(name) %>);
    }