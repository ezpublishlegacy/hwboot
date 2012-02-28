{**
 * HWBoot
 *
 * @category    design
 * @package     hwboot
 * @copyright   Copyright (c) 2012 Holzweg e-commerce solutions (http://www.holzweg.com)
 * @license     http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 *}

{* Real video - Full view *}


<div class="content">
    <div class="hero-unit">

    <div class="page-header">
    <h2>{$node.name|wash()}</h2>
    </div>
    
    <div class="attribute-short">
        {attribute_view_gui attribute=$node.data_map.description}
    </div>

    <div class="content-media">
    {def $attribute=$node.data_map.file}
        <object classid="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA"
                {section show=$attribute.content.width|gt( 0 )}width="{$attribute.content.width}"{/section} {section show=$attribute.content.height|gt( 0 )}height="{$attribute.content.height}"{/section}>
        <param name="src" value={concat("content/download/",$attribute.contentobject_id,"/",$attribute.content.contentobject_attribute_id,"/",$attribute.content.original_filename)|ezurl} />
        <param name="controls" value="{$attribute.content.controls}" />
        <param name="autostart" value="{section show=$attribute.content.is_autoplay}true{/section}" />
        <embed src={concat("content/download/",$attribute.contentobject_id,"/",$attribute.content.contentobject_attribute_id,"/",$attribute.content.original_filename)|ezurl}
               {*pluginspage="{$attribute.content.pluginspage}"*}
               pluginspage="http://real.com"
               type="audio/x-pn-realaudio-plugin"
               {section show=$attribute.content.width|gt( 0 )}width="{$attribute.content.width}"{/section} {section show=$attribute.content.height|gt( 0 )}height="{$attribute.content.height}"{/section} autostart="{section show=$attribute.content.is_autoplay}true{/section}"
               controls="{$attribute.content.controls}" >
        </embed>
        </object>
    </div>

    </div>
</div>
