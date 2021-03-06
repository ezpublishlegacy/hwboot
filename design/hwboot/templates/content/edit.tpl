<form class="well form-horizontal" name="editform" id="editform" enctype="multipart/form-data" method="post" action={concat( '/content/edit/', $object.id, '/', $edit_version, '/', $edit_language|not|choose( concat( $edit_language, '/' ), '/' ), $is_translating_content|not|choose( concat( $from_language, '/' ), '' ) )|ezurl}>

    {include uri='design:parts/website_toolbar_edit.tpl'}

    <div class="hero-unit">

    {* Current gui locale, to be used for class [attribute] name & description fields *}
    {def $content_language = ezini( 'RegionalSettings', 'Locale' )}

        <h2>{'Edit %object_name'|i18n( 'design/ezwebin/content/edit', , hash( '%object_name', $object.name, '%class_name', first_set( $class.nameList[$content_language], $class.name ) ) )|wash}</h2>

        {if $object.content_class.description}
        <p class="class-description pull-left">
            {first_set( $class.descriptionList[$content_language], $class.description )|wash}
        </p>
        {/if}

        <div class="alert alert-info fade in">
            {def $language_index = 0
                 $from_language_index = 0
                 $translation_list = $content_version.translation_list}

            {foreach $translation_list as $index => $translation}
               {if eq( $edit_language, $translation.language_code )}
                  {set $language_index = $index}
               {/if}
            {/foreach}

            {if $is_translating_content}

                {def $from_language_object = $object.languages[$from_language]}

                {'Translating content from %from_lang to %to_lang'|i18n( 'design/ezwebin/content/edit',, hash(
                    '%from_lang', concat( $from_language_object.name, '&nbsp;<img src="', $from_language_object.locale|flag_icon, '" style="vertical-align: middle;" alt="', $from_language_object.locale, '" />' ),
                    '%to_lang', concat( $translation_list[$language_index].locale.intl_language_name, '&nbsp;<img src="', $translation_list[$language_index].language_code|flag_icon, '" style="vertical-align: middle;" alt="', $translation_list[$language_index].language_code, '" />' ) ) )}

            {else}

                {'Content in %language'|i18n( 'design/ezwebin/content/edit',, hash( '%language', $translation_list[$language_index].locale.intl_language_name ))}&nbsp;<img src="{$translation_list[$language_index].language_code|flag_icon}" style="vertical-align: middle;" alt="{$translation_list[$language_index].language_code}" />

            {/if}
        </div>

        {include uri='design:content/edit_validation.tpl'}


        {include uri='design:content/edit_attribute.tpl' view_parameters=$view_parameters}

        <div class="form-actions">
            <input class="btn btn-primary" type="submit" name="PublishButton" value="{'Send for publishing'|i18n( 'design/ezwebin/content/edit' )}" title="{'Publish the contents of the draft that is being edited. The draft will become the published version of the object.'|i18n( 'design/ezwebin/content/edit' )}" />
            <input class="btn" type="submit" name="StoreButton" value="{'Store draft'|i18n( 'design/ezwebin/content/edit' )}" title="{'Store the contents of the draft that is being edited and continue editing. Use this button to periodically save your work while editing.'|i18n( 'design/ezwebin/content/edit' )}" />
            <input class="btn" type="submit" name="StoreExitButton" value="{'Store draft and exit'|i18n( 'design/ezwebin/content/edit' )}" title="{'Store the draft that is being edited and exit from edit mode. Use when you need to exit your work and return later to continue.'|i18n( 'design/ezwebin/content/edit' )}" />
            <input class="btn btn-danger" type="submit" name="DiscardButton" value="{'Discard draft'|i18n( 'design/ezwebin/content/edit' )}" title="{'Discard the draft that is being edited. This will also remove the translations that belong to the draft (if any).'|i18n( 'design/ezwebin/content/edit' ) }" />
            <input type="hidden" name="DiscardConfirm" value="0" />
            <input type="hidden" name="RedirectIfDiscarded" value="{if ezhttp_hasvariable( 'LastAccessesURI', 'session' )}{ezhttp( 'LastAccessesURI', 'session' )}{/if}" />
            <input type="hidden" name="RedirectURIAfterPublish" value="{if ezhttp_hasvariable( 'LastAccessesURI', 'session' )}{ezhttp( 'LastAccessesURI', 'session' )}{/if}" />
        </div>

    </div>

</form>
