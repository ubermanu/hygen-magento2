---
to: app/code/<%= module.replace('_', '/') %>/Api/Data/<%= model %>Interface.php
inject: true
before: \}
skip_if: public function .*<%= h.changeCase.pascal(name) %>\(\)
---

    /**
     * @return string|null
     */
    public function get<%= h.changeCase.pascal(name) %>();

    /**
     * @param string|null $<%= h.changeCase.camel(name) %>
     * @return $this
     */
    public function set<%= h.changeCase.pascal(name) %>($<%= h.changeCase.camel(name) %>);