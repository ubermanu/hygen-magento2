---
to: app/code/<%= module.replace('_', '/') %>/Api/<%= name %>RepositoryInterface.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Api;

use Magento\Framework\Exception\CouldNotDeleteException;
use Magento\Framework\Exception\CouldNotSaveException;
use Magento\Framework\Exception\NoSuchEntityException;

interface <%= name %>RepositoryInterface
{
    /**
     * @param Data\<%= name %>Interface $<%= h.changeCase.camel(name) %>
     * @return Data\<%= name %>Interface
     * @throws CouldNotSaveException
     */
    public function save(Data\<%= name %>Interface $<%= h.changeCase.camel(name) %>);

    /**
     * @param int $id
     * @return Data\<%= name %>Interface
     * @throws NoSuchEntityException
     */
    public function getById(int $id);

    /**
     * @param Data\<%= name %>Interface $<%= h.changeCase.camel(name) %>
     * @return bool
     * @throws CouldNotDeleteException
     */
    public function delete(Data\<%= name %>Interface $<%= h.changeCase.camel(name) %>);

    /**
     * @return bool
     * @throws CouldNotDeleteException
     */
    public function deleteById(int $id);
}
