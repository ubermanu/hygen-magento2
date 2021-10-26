---
to: app/code/<%= moduleName.replace('_', '/') %>/Controller/<%= sectionName %>/<%= actionName %>.php
---
<?php

namespace <%= moduleName.replace('_', '\\') %>\Controller\<%= sectionName %>;

class <%= actionName %> extends \Magento\Framework\App\Action\Action
{
    /**
     * @var \Magento\Framework\View\Result\PageFactory
     */
    protected $resultPageFactory;

    /**
     * @param \Magento\Framework\App\Action\Context $context
     * @param \Magento\Framework\View\Result\PageFactory $resultPageFactory
     */
    public function __construct(
        \Magento\Framework\App\Action\Context $context,
        \Magento\Framework\View\Result\PageFactory $resultPageFactory
    ) {
        $this->resultPageFactory = $resultPageFactory;
        parent::__construct($context);
    }

    /**
     * {@inheritdoc}
     */
    public function execute()
    {
        return $this->resultPageFactory->create();
    }
}
