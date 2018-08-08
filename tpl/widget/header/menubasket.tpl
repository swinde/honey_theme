
    <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=basket"}]" rel="nofollow">
        <i class="fas fa-shopping-cart"></i>
        [{if isset($oxcmp_basket) && $oxcmp_basket->getItemsCount() > 0}]
            [{ $oxcmp_basket->getItemsCount() }]
        [{/if}]
    </a>

