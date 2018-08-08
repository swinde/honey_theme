[{assign var="vendors" value=$oView->getVendorlist()}]
[{if $vendors->count()}]
    [{block name="footer_vendors"}]
        <ul class="nav flex-column vendors list-unstyled">
          [{foreach from=$vendors item=_vnd}]
          <a class="nav-link" href="[{$_vnd->getLink()}]" [{if $_vnd->expanded}]class="exp"[{/if}]>[{$_vnd->oxvendor__oxtitle->value}]</a>
          [{/foreach}]
        </ul>
    [{/block}]
[{/if}]