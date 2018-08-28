<?php

class __Mustache_46acfa30b971689cdea1ff6e863efee4 extends Mustache_Template
{
    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $buffer = '';
        $blocksContext = array();

        if ($partial = $this->mustache->loadPartial('core_form/element-selectgroups')) {
            $buffer .= $partial->renderInternal($context);
        }

        return $buffer;
    }
}
