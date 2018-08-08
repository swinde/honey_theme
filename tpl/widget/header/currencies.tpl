[{if $oView->loadCurrency()}]
    [{assign var="currency" value=$oView->getActCurrency()}]
    <div class="btn-group currencies-menu" role="group">
        <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
            [{block name="dd_layout_page_header_icon_menu_currencies_button"}]
            [{$currency->name}]
            [{/block}]
        </button>
        <div class="dropdown-menu dropdown-menu-right" role="menu">
            [{block name="dd_layout_page_header_icon_menu_currencies_list"}]
            [{foreach from=$oxcmp_cur item=_cur}]
            [{if $_cur->selected}]
            [{assign var="selectedCurrency" value=$_cur->name}]
            [{capture name="currencySelected"}]
            <a class="dropdown-item" href="[{$_cur->link|oxaddparams:$oView->getDynUrlParams()}]" title="[{$_cur->name}]"><span>[{$_cur->name}]</span></a>
            [{/capture}]
            [{/if}]
            <a class="dropdown-item[{if $_cur->selected}] active[{/if}]" href="[{$_cur->link|oxaddparams:$oView->getDynUrlParams()}]" title="[{$_cur->name}]">[{$_cur->name}]</a>
            [{/foreach}]
            [{/block}]
        </div>
    </div>
    [{/if}]