---
to: app/code/<%= module.replace('_', '/') %>/Api/Data/<%= name %>Interface.php
---
<?php

namespace <%= module.replace('_', '\\') %>\Api\Data;

interface <%= name %>Interface
{
    /**#@+
     * Constants defined for keys of data array
     */
    const KEY_ID = 'id';
    /**#@-*/

    /**
     * @return int|null
     */
    public function getId();

    /**
     * @param int $id
     * @return $this
     */
    public function setId($id);
}
