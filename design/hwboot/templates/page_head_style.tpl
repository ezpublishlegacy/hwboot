{**
 * HWBoot
 *
 * @category    design
 * @package     hwboot
 * @copyright   Copyright (c) 2012 Holzweg e-commerce solutions (http://www.holzweg.com)
 * @license     http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 *}

{* eZ Less dependent implementation *}
{"bootstrap.less"|ezless_add()}
{ezless()}

{* @todo Implement a fallback to default CSS? *}
{ezcss_load( array( 
                  ezini( 'StylesheetSettings', 'CSSFileList', 'design.ini' ),
                  ezini( 'StylesheetSettings', 'FrontendCSSFileList', 'design.ini' ) ))}

{* Disabled fallback when $load_css_file_list is false, as it seems to come straight out of configuration hell. *}
{* {if is_unset( $load_css_file_list )}
    {def $load_css_file_list = true()}
{/if}

{if $load_css_file_list}
  {ezcss_load( array( 
                      ezini( 'StylesheetSettings', 'CSSFileList', 'design.ini' ),
                      ezini( 'StylesheetSettings', 'FrontendCSSFileList', 'design.ini' ) ))}
{else}
  {ezcss_load( array( 'bootstrap.min.css',
					  'hwboot.css' ))}
{/if} *}
