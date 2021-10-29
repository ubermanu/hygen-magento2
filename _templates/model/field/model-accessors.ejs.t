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
        return $this->getData(self::KEY_<%= h.changeCase.snake(name).toUpperCase() %>);
    }

    /**
     * {@inheritdoc}
     */
    public function set<%= h.changeCase.pascal(name) %>($<%= h.changeCase.camel(name) %>)
    {
        return $this->setData(self::KEY_<%= h.changeCase.snake(name).toUpperCase() %>, $<%= h.changeCase.camel(name) %>);
    }