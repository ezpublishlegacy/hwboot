{**
 * HWBoot
 *
 * @category    design
 * @package     hwboot
 * @copyright   Copyright (c) 2012 Holzweg e-commerce solutions (http://www.holzweg.com)
 * @license     http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 *}

{def $size = "billboard"
     $alternative_text = $node.object.data_map.name.content}

{if is_set( $node.object.data_map.image.content[$size].alternative_text )}
    {set $alternative_text=$node.object.data_map.image.content[$size].alternative_text}
{/if}

<div class="content-view-line">
<div class="class-banner">
{if eq( $node.object.data_map.image_map.content, true() )}
    <img usemap="#banner_map" src={$node.object.data_map.image.content[$size].full_path|ezroot} alt="{$alternative_text}" width="{$node.object.data_map.image.content[$size].width}" height="{$node.object.data_map.image.content[$size].height}" />
    {$node.object.data_map.image_map.content}
{else}
    {if $node.object.data_map.url.content}
        <a href={$node.object.data_map.url.content|ezurl}>
            <img src={$node.object.data_map.image.content[$size].full_path|ezroot} alt="{$alternative_text}" width="{$node.object.data_map.image.content[$size].width}" height="{$node.object.data_map.image.content[$size].height}" />
        </a>
    {else}
        <img src={$node.object.data_map.image.content[$size].full_path|ezroot} alt="{$alternative_text}" width="{$node.object.data_map.image.content[$size].width}" height="{$node.object.data_map.image.content[$size].height}" />
    {/if}
{/if}
</div>
</div>
