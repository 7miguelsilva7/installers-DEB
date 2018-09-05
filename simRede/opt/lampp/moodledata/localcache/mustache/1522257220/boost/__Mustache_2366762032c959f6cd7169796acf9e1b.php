<?php

class __Mustache_2366762032c959f6cd7169796acf9e1b extends Mustache_Template
{
    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $buffer = '';
        $blocksContext = array();

        if ($partial = $this->mustache->loadPartial('core_form/element-selectgroups-inline')) {
            $buffer .= $partial->renderInternal($context);
        }

        return $buffer;
    }
}
