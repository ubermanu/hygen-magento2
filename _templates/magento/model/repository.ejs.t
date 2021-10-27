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
    protected $<%= h.changeCase.camel(className) %>Resource;

    /**
     * @var <%= className %>Factory
     */
    protected $<%= h.changeCase.camel(className) %>Factory;

    /**
     * @var CollectionFactory
     */
    protected $collectionFactory;

    /**
     * @var <%= className %>[]
     */
    protected $cache = [];

    public function __construct(
        <%= className %>Resource $<%= h.changeCase.camel(className) %>Resource,
        <%= className %>Factory $<%= h.changeCase.camel(className) %>Factory,
        CollectionFactory $collectionFactory
    ) {
        $this-><%= h.changeCase.camel(className) %>Resource = $<%= h.changeCase.camel(className) %>Resource;
        $this-><%= h.changeCase.camel(className) %>Factory = $<%= h.changeCase.camel(className) %>Factory;
        $this->collectionFactory = $collectionFactory;
    }

    /**
     * @param <%= className %> $<%= h.changeCase.camel(className) %>
     * @return <%= className %>
     * @throws CouldNotSaveException
     */
    public function save(<%= className %> $<%= h.changeCase.camel(className) %>)
    {
        try {
            $this-><%= h.changeCase.camel(className) %>Resource->save($<%= h.changeCase.camel(className) %>);
            unset($this->cache[$<%= h.changeCase.camel(className) %>->getId()]);
        } catch (\Exception $e) {
            if ($<%= h.changeCase.camel(className) %>->getId()) {
                throw new CouldNotSaveException(
                    __(
                        'Unable to save <%= h.changeCase.kebab(className).replace('-', ' ') %> with ID %1. Error: %2',
                        [$<%= h.changeCase.camel(className) %>->getId(), $e->getMessage()]
                    )
                );
            }
            throw new CouldNotSaveException(__('Unable to save <%= h.changeCase.kebab(className).replace('-', ' ') %>. Error: %1', $e->getMessage()));
        }

        return $<%= h.changeCase.camel(className) %>;
    }

    /**
     * @param int $id
     * @return <%= className %>
     * @throws NoSuchEntityException
     */
    public function getById(int $id)
    {
        if (!array_key_exists($id, $this->cache)) {
            $<%= h.changeCase.camel(className) %> = $this-><%= h.changeCase.camel(className) %>Factory->create();
            $this-><%= h.changeCase.camel(className) %>Resource->load($<%= h.changeCase.camel(className) %>, $id);
            if (!$<%= h.changeCase.camel(className) %>->getId()) {
                throw new NoSuchEntityException(__('<%= h.changeCase.ucFirst(h.changeCase.kebab(className).replace('-', ' ')) %> with specified ID "%1" not found.', $id));
            }

            $this->cache[$id] = $<%= h.changeCase.camel(className) %>;
        }

        return $this->cache[$id];
    }

    /**
     * @param <%= className %> $<%= h.changeCase.camel(className) %>
     * @return bool
     * @throws CouldNotDeleteException
     */
    public function delete(<%= className %> $<%= h.changeCase.camel(className) %>)
    {
        try {
            unset($this->cache[$<%= h.changeCase.camel(className) %>->getId()]);
            $this-><%= h.changeCase.camel(className) %>Resource->delete($<%= h.changeCase.camel(className) %>);
        } catch (\Exception $e) {
            if ($<%= h.changeCase.camel(className) %>->getId()) {
                throw new CouldNotDeleteException(
                    __(
                        'Unable to remove <%= h.changeCase.kebab(className).replace('-', ' ') %> with ID %1. Error: %2',
                        [$<%= h.changeCase.camel(className) %>->getEntityId(), $e->getMessage()]
                    )
                );
            }
            throw new CouldNotDeleteException(__('Unable to remove <%= h.changeCase.kebab(className).replace('-', ' ') %>. Error: %1', $e->getMessage()));
        }

        return true;
    }

    /**
     * @return bool
     * @throws CouldNotDeleteException
     */
    public function deleteById(int $id)
    {
        return $this->delete($this->getById($id));
    }
}
