<footer class="footer">
    <div class="container">
        <p class="pull-right"><a href="#">{'Back to top'|i18n('design/hwboot/footer')}</a></p>
        <p>
            {if $pagedesign.data_map.hide_powered_by.data_int|not}
                Powered by <a href="http://ez.no/ezpublish" title="eZ Publish&#8482; CMS Open Source Web Content Management">eZ Publish&#8482; CMS Open Source Web Content Management</a>.<br />
            {/if}
            {if $pagedesign.data_map.footer_text.has_content}
                {$pagedesign.data_map.footer_text.content}<br />
            {/if}
        </p>
    </div>
</footer>