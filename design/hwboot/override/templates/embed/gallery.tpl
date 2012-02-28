{**
 * HWBoot
 *
 * @category    design
 * @package     hwboot
 * @copyright   Copyright (c) 2012 Holzweg e-commerce solutions (http://www.holzweg.com)
 * @license     http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 *}

{* Gallery - Embed view *}
<div class="content-view-embed">
    <div class="class-gallery">
        <a href={$object.main_node.url_alias|ezurl}><h2>{$object.name|wash}</h2></a>

    {def $children=fetch_alias( children, hash( parent_node_id, $object.main_node_id, limit, 5 ) ) }
    <div class="content-view-children">
    {foreach $children as $child}
         {node_view_gui view=listitem content_node=$child}
    {/foreach}
    </div>

    </div>
</div>

