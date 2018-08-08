<div class="btn-group minibasket-menu">
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" data-href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=basket"}]">
        [{block name="dd_layout_page_header_icon_menu_minibasket_button"}]
            <i class="fas fa-shopping-cart" aria-hidden="true"></i>
            [{if $oxcmp_basket->getItemsCount() > 0}][{ $oxcmp_basket->getItemsCount() }][{/if}]
        [{/block}]
    </button>
    <div class="dropdown-menu" role="menu">
        [{block name="dd_layout_page_header_icon_menu_minibasket_list"}]
        <div class="row">
            <div class="col-12 float-sm-right">
                <div class="minibasket-menu-box">
                    [{oxid_include_dynamic file="widget/minibasket/minibasket.tpl"}]
                </div>
            </div>
        </div>
        [{/block}]
    </div>
</div>