{**
 * HWBoot
 *
 * @category    design
 * @package     hwboot
 * @copyright   Copyright (c) 2012 Holzweg e-commerce solutions (http://www.holzweg.com)
 * @license     http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 *}

{def $settings=$handler.settings}

<label class="checkbox"><input type="checkbox" name="ReceiveDigest_{$handler.id_string}" {$settings.receive_digest|choose( '', checked)} /> {'Receive all messages combined in one digest'|i18n( 'design/ezwebin/notification/handler/ezgeneraldigest/settings/edit' )}</label>

<fieldset>
<legend>{'Receive digests'|i18n( 'design/ezwebin/notification/handler/ezgeneraldigest/settings/edit' )}</legend>
<table class="table table-striped table-bordered">
<tr>
<td>
<input type="radio" name="DigestType_{$handler.id_string}" value="3" {eq($settings.digest_type,3)|choose('',checked)} />
</td>
<td>
{'Daily, at'|i18n( 'design/ezwebin/notification/handler/ezgeneraldigest/settings/edit' )}
</td>
<td>
<select name="Time_{$handler.id_string}">
{foreach $handler.available_hours as $time}
<option value="{$time}" {if eq( $time, $settings.time )}selected="selected"{/if}>{$time}</option>
{/foreach}
</select>
</td>
</tr>
<tr>
<td>
<input type="radio" name="DigestType_{$handler.id_string}" value="1" {eq( $settings.digest_type, 1 )|choose( '', checked )} />
</td>
<td>
{'Once per week, on '|i18n( 'design/ezwebin/notification/handler/ezgeneraldigest/settings/edit' )}
</td>
<td>
<select name="Weekday_{$handler.id_string}">
{foreach $handler.all_week_days as $week_day}
<option value="{$week_day}" {if eq( $week_day, $settings.day )}selected="selected"{/if}>{$week_day}</option>
{/foreach}
</select>
</td>
</tr>
<tr>
<td>
<input type="radio" name="DigestType_{$handler.id_string}" value="2" {eq( $settings.digest_type, 2)|choose( '', checked )} />
</td>
<td>
{'Once per month, on day number'|i18n( 'design/ezwebin/notification/handler/ezgeneraldigest/settings/edit' )}
</td>
<td>
<select name="Monthday_{$handler.id_string}">
{foreach $handler.all_month_days as $month_day}
<option value="{$month_day}" {if eq( $month_day, $settings.day )}selected="selected"{/if}>{$month_day}</option>
{/foreach}
</select>
</td>
</tr>
</table>

{'If day number is larger than the number of days within the current month, the last day of the current month will be used.'|i18n( 'design/ezwebin/notification/handler/ezgeneraldigest/settings/edit' )}
</fieldset>
