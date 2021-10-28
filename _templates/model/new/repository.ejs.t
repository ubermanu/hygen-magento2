---
to: app/code/<%= module.replace('_', '/') %>/Model/Repository/<%= name %>Repository.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Model\Repository;

use <%= module.replace('_', '\\') %>\Api\Data\<%= name %>Interface;
use <%= module.replace('_', '\\') %>\Model\<%= name %>;
use <%= module.replace('_', '\\') %>\Model\<%= name %>Factory;
use <%= module.replace('_', '\\') %>\Model\ResourceModel\<%= name %> as <%= name %>Resource;
use <%= module.replace('_', '\\') %>\Model\ResourceModel\<%= name %>\Collection;
use <%= module.replace('_', '\\') %>\Model\ResourceModel\<%= name %>\CollectionFactory;
use Magento\Framework\Exception\CouldNotDeleteException;
use Magento\Framework\Exception\CouldNotSaveException;
use Magento\Framework\Exception\NoSuchEntityException;

class <%= name %>Repository implements \<%= module.replace('_', '\\') %>\Api\<%= name %>RepositoryInterface
{
    /**
     * @var <%= name %>Resource
     */
    protected $<%= h.changeCase.camel(name) %>Resource;

    /**
     * @var <%= name %>Factory
     */
    protected $<%= h.changeCase.camel(name) %>Factory;

    /**
     * @var CollectionFactory
     */
    protected $collectionFactory;

    /**
     * @var <%= name %>[]
     */
    protected $cache = [];

    /**
     * @param <%= name %>Resource $<%= h.changeCase.camel(name) %>Resource
     * @param <%= name %>Factory $<%= h.changeCase.camel(name) %>Factory
     * @param CollectionFactory $collectionFactory
     */
    public function __construct(
        <%= name %>Resource $<%= h.changeCase.camel(name) %>Resource,
        <%= name %>Factory $<%= h.changeCase.camel(name) %>Factory,
        CollectionFactory $collectionFactory
    ) {
        $this-><%= h.changeCase.camel(name) %>Resource = $<%= h.changeCase.camel(name) %>Resource;
        $this-><%= h.changeCase.camel(name) %>Factory = $<%= h.changeCase.camel(name) %>Factory;
        $this->collectionFactory = $collectionFactory;
    }

    /**
     * {@inheritdoc}
     */
    public function save(<%= name %>Interface $<%= h.changeCase.camel(name) %>)
    {
        try {
            $this-><%= h.changeCase.camel(name) %>Resource->save($<%= h.changeCase.camel(name) %>);
            unset($this->cache[$<%= h.changeCase.camel(name) %>->getId()]);
        } catch (\Exception $e) {
            if ($<%= h.changeCase.camel(name) %>->getId()) {
                throw new CouldNotSaveException(
                    __(
                        'Unable to save <%= h.changeCase.kebab(name).replace('-', ' ') %> with ID %1. Error: %2',
                        [$<%= h.changeCase.camel(name) %>->getId(), $e->getMessage()]
                    )
                );
            }
            throw new CouldNotSaveException(__('Unable to save <%= h.changeCase.kebab(name).replace('-', ' ') %>. Error: %1', $e->getMessage()));
        }

        return $<%= h.changeCase.camel(name) %>;
    }

    /**
     * {@inheritdoc}
     */
    public function getById(int $id)
    {
        if (!array_key_exists($id, $this->cache)) {
            $<%= h.changeCase.camel(name) %> = $this-><%= h.changeCase.camel(name) %>Factory->create();
            $this-><%= h.changeCase.camel(name) %>Resource->load($<%= h.changeCase.camel(name) %>, $id);
            if (!$<%= h.changeCase.camel(name) %>->getId()) {
                throw new NoSuchEntityException(__('<%= h.changeCase.ucFirst(h.changeCase.kebab(name).replace('-', ' ')) %> with specified ID "%1" not found.', $id));
            }

            $this->cache[$id] = $<%= h.changeCase.camel(name) %>;
        }

        return $this->cache[$id];
    }

    /**
     * {@inheritdoc}
     */
    public function delete(<%= name %>Interface $<%= h.changeCase.camel(name) %>)
    {
        try {
            unset($this->cache[$<%= h.changeCase.camel(name) %>->getId()]);
            $this-><%= h.changeCase.camel(name) %>Resource->delete($<%= h.changeCase.camel(name) %>);
        } catch (\Exception $e) {
            if ($<%= h.changeCase.camel(name) %>->getId()) {
                throw new CouldNotDeleteException(
                    __(
                        'Unable to remove <%= h.changeCase.kebab(name).replace('-', ' ') %> with ID %1. Error: %2',
                        [$<%= h.changeCase.camel(name) %>->getEntityId(), $e->getMessage()]
                    )
                );
            }
            throw new CouldNotDeleteException(__('Unable to remove <%= h.changeCase.kebab(name).replace('-', ' ') %>. Error: %1', $e->getMessage()));
        }

        return true;
    }

    /**
     * {@inheritdoc}
     */
    public function deleteById(int $id)
    {
        return $this->delete($this->getById($id));
    }
}
