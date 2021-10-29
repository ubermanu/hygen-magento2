---
to: app/code/<%= module.replace('_', '/') %>/Plugin/<%= name.split('\\').join('/') %>.php
inject: true
after: class [^]*    }|class [^]*\n{
skip_if: public function <%= prefix %><%= h.changeCase.ucFirst(method) %>\(.*
---
<%= '' %><% if (prefix == 'before') { %>
    /**
     * @param \<%= name %> $subject
     * @return mixed
     */
    public function before<%= h.changeCase.ucFirst(method) %>(\<%= name %> $subject)
    {
        // TODO: Your logic here
    }<% } else if (prefix == 'after') { %>
    /**
     * @param \<%= name %> $subject
     * @param mixed $result
     * @return mixed
     */
    public function after<%= h.changeCase.ucFirst(method) %>(\<%= name %> $subject, $result)
    {
        // TODO: Your logic here
        return $result;
    }<% } else if (prefix == 'around') { %>
    /**
     * @param \<%= name %> $subject
     * @param callable $proceed
     * @param ...$args
     * @return mixed
     */
    public function around<%= h.changeCase.ucFirst(method) %>(\<%= name %> $subject, callable $proceed, ...$args)
    {
        // TODO: Your logic here
        return $proceed(...$args);
    }<% } %>