{**
 * HWBoot
 *
 * @category    design
 * @package     hwboot
 * @copyright   Copyright (c) 2012 Holzweg e-commerce solutions (http://www.holzweg.com)
 * @license     http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 *}

{* Article - Horizontally Listed Subitems view view *}
<h2>
	<a href={$node.url_alias|ezurl}>{$node.name|wash()}</a>
</h2>
<div class="attribute-byline">
    <p>
    {if $node.object.data_map.category.has_content}
        <span class="ezagenda_keyword">
        {"Category"|i18n("design/ezwebin/full/event")}:
        {attribute_view_gui attribute=$node.object.data_map.category}
        </span>
    {/if}
    
    <span class="ezagenda_date">
    {$node.object.data_map.from_time.content.timestamp|datetime(custom,"%j %M %H:%i")}
    {if $node.object.data_map.to_time.has_content}
          - {$node.object.data_map.to_time.content.timestamp|datetime(custom,"%j %M %H:%i")}
    {/if}
    </span>
    </p>
</div>
