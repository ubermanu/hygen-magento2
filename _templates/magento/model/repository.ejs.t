---
to: app/code/<%= moduleName.replace('_', '/') %>/Model/Repository/<%= className %>Repository.php
---
<?php

namespace <%= moduleName.replace('_', '\\') %>\Model\Repository;

use <%= moduleName.replace('_', '\\') %>\Model\<%= className %>;
use <%= moduleName.replace('_', '\\') %>\Model\<%= className %>Factory;
use <%= moduleName.replace('_', '\\') %>\Model\ResourceModel\<%= className %> as <%= className %>Resource;
use <%= moduleName.replace('_', '\\') %>\Model\ResourceModel\<%= className %>\Collection;
use <%= moduleName.replace('_', '\\') %>\Model\ResourceModel\<%= className %>\CollectionFactory;
use Magento\Framework\Exception\CouldNotDeleteException;
use Magento\Framework\Exception\CouldNotSaveException;
use Magento\Framework\Exception\NoSuchEntityException;

class <%= className %>Repository
{
    /**
     * @var <%= className %>Resource
     */
    private $<%= h.toCamelCase(className) %>Resource;

    /**
     * @var <%= className %>Factory
     */
    private $<%= h.toCamelCase(className) %>Factory;

    /**
     * @var CollectionFactory
     */
    private $collectionFactory;

    /**
     * @var array
     */
    private $cache = [];

    public function __construct(
        <%= className %>Resource $<%= h.toCamelCase(className) %>Resource,
        <%= className %>Factory $<%= h.toCamelCase(className) %>Factory,
        CollectionFactory $collectionFactory
    ) {
        $this-><%= h.toCamelCase(className) %>Resource = $<%= h.toCamelCase(className) %>Resource;
        $this-><%= h.toCamelCase(className) %>Factory = $<%= h.toCamelCase(className) %>Factory;
        $this->collectionFactory = $collectionFactory;
    }

    /**
     * @param <%= className %> $<%= h.toCamelCase(className) %>
     * @return <%= className %>
     * @throws CouldNotSaveException
     */
    public function save(<%= className %> $<%= h.toCamelCase(className) %>)
    {
        try {
            $this-><%= h.toCamelCase(className) %>Resource->save($<%= h.toCamelCase(className) %>);
            unset($this->cache[$<%= h.toCamelCase(className) %>->getId()]);
        } catch (\Exception $e) {
            if ($<%= h.toCamelCase(className) %>->getId()) {
                throw new CouldNotSaveException(__('Unable to save <%= h.toCamelCase(className) %> with ID %1. Error: %2', [$<%= h.toCamelCase(className) %>->getId(), $e->getMessage()]));
            }
            throw new CouldNotSaveException(__('Unable to save <%= h.toCamelCase(className) %>. Error: %1', $e->getMessage()));
        }

        return $<%= h.toCamelCase(className) %>;
    }

    /**
     * @param int $id
     * @return <%= className %>
     * @throws NoSuchEntityException
     */
    public function getById(int $id)
    {
        if (!array_key_exists($id, $this->cache)) {
            $<%= h.toCamelCase(className) %> = $this-><%= h.toCamelCase(className) %>Factory->create();
            $this-><%= h.toCamelCase(className) %>Resource->load($<%= h.toCamelCase(className) %>, $id);
            if (!$<%= h.toCamelCase(className) %>->getId()) {
                throw new NoSuchEntityException(__('<%= h.toCamelCase(className) %> with specified ID "%1" not found.', $id));
            }

            $this->cache[$id] = $<%= h.toCamelCase(className) %>;
        }

        return $this->cache[$id];
    }

    /**
     * @param <%= className %> $<%= h.toCamelCase(className) %>
     * @return bool
     * @throws CouldNotDeleteException
     */
    public function delete(<%= className %> $<%= h.toCamelCase(className) %>)
    {
        try {
            unset($this->cache[$<%= h.toCamelCase(className) %>->getId()]);
            $this-><%= h.toCamelCase(className) %>Resource->delete($<%= h.toCamelCase(className) %>);
        } catch (\Exception $e) {
            if ($<%= h.toCamelCase(className) %>->getId()) {
                throw new CouldNotDeleteException(__('Unable to remove <%= h.toCamelCase(className) %> with ID %1. Error: %2', [$<%= h.toCamelCase(className) %>->getEntityId(), $e->getMessage()]));
            }
            throw new CouldNotDeleteException(__('Unable to remove <%= h.toCamelCase(className) %>. Error: %1', $e->getMessage()));
        }

        return true;
    }

    /**
     * @return bool
     * @throws CouldNotDeleteException
     */
    public function deleteById(int $id)
    {
        $<%= h.toCamelCase(className) %> = $this->getById($id);
        $this->delete($<%= h.toCamelCase(className) %>);
    }
}
