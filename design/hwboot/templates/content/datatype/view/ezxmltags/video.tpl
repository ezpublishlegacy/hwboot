{**
 * HWBoot
 *
 * @category    design
 * @package     hwboot
 * @copyright   Copyright (c) 2012 Holzweg e-commerce solutions (http://www.holzweg.com)
 * @license     http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 *}

<object width="{$width}" height="{$height}"><param name="movie" value="{$source}"></param><param name="allowFullScreen" value="{if and( is_set( $allow_full_screen ), eq( $allow_full_screen, '1' ) )}true{else}false{/if}"></param><param name="allowScriptAccess" value="{$allow_script_access}"></param><embed src="{$source}" type="application/x-shockwave-flash" allowscriptaccess="{$allow_script_access}" allowfullscreen="{if and( is_set( $allow_full_screen ), eq( $allow_full_screen, '1' ) )}true{else}false{/if}" width="{$width}" height="{$height}"></embed></object>
