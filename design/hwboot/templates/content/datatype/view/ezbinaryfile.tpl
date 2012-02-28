{**
 * HWBoot
 *
 * @category    design
 * @package     hwboot
 * @copyright   Copyright (c) 2012 Holzweg e-commerce solutions (http://www.holzweg.com)
 * @license     http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 *}

{def $icon_size='normal'
     $icon_title=$attribute.content.mime_type
     $icon='no'}
{if $attribute.has_content}
{if $attribute.content}
{switch match=$icon}
    {case match='no'}
        <a href={concat("content/download/",$attribute.contentobject_id,"/",$attribute.id,"/file/",$attribute.content.original_filename)|ezurl}>{$attribute.content.original_filename|wash( xhtml )}</a> {$attribute.content.filesize|si( byte )}
    {/case}
    {case}
        <a href={concat("content/download/",$attribute.contentobject_id,"/",$attribute.id,"/file/",$attribute.content.original_filename)|ezurl}>{$attribute.content.mime_type|mimetype_icon( $icon_size, $icon_title )} {$attribute.content.original_filename|wash( xhtml )}</a> {$attribute.content.filesize|si( byte )}
    {/case}
{/switch}
{else}
    <div class="alert alert-error"><h2>{'The file could not be found.'|i18n( 'design/ezwebin/view/ezbinaryfile' )}</h2></div>
{/if}
{/if}
