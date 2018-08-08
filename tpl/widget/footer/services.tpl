[{block name="footer_services"}]
    <ul class="nav flex-column services list-unstyled">
        [{block name="footer_services_items"}]
        <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=contact"}]">[{oxmultilang ident="CONTACT"}]</a>
        [{if $oViewConf->getViewThemeParam('blFooterShowHelp')}]
        <a class="nav-link" href="[{$oViewConf->getHelpPageLink()}]">[{oxmultilang ident="HELP"}]</a>
        [{/if}]
        [{if $oViewConf->getViewThemeParam('blFooterShowLinks')}]
        <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=links"}]">[{oxmultilang ident="LINKS"}]</a>
        [{/if}]
        [{if $oView->isActive('Invitations')}]
        <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=invite"}]">[{oxmultilang ident="INVITE_YOUR_FRIENDS"}]</a>
        [{/if}]
        [{oxhasrights ident="TOBASKET"}]

            <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getBasketLink()}]">
                [{oxmultilang ident="CART"}]
            </a>
            [{if $oxcmp_basket && $oxcmp_basket->getItemsCount() > 0}] <span class="badge badge-pill">[{$oxcmp_basket->getItemsCount()}]</span>[{/if}]

        [{/oxhasrights}]
        <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account"}]">[{oxmultilang ident="ACCOUNT"}]</a>

            <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_noticelist"}]">
                [{oxmultilang ident="WISH_LIST"}]
            </a>
            [{if $oxcmp_user && $oxcmp_user->getNoticeListArtCnt()}] <span class="badge badge-pill">[{$oxcmp_user->getNoticeListArtCnt()}]</span>[{/if}]

        [{if $oViewConf->getShowWishlist()}]

            <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_wishlist"}]">
                [{oxmultilang ident="MY_GIFT_REGISTRY"}]
            </a>
            [{if $oxcmp_user && $oxcmp_user->getWishListArtCnt()}] <span class="badge badge-pill">[{$oxcmp_user->getWishListArtCnt()}]</span>[{/if}]


            <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=wishlist" params="wishid="|cat:$oView->getWishlistUserId()}]">
                [{oxmultilang ident="PUBLIC_GIFT_REGISTRIES"}]
            </a>

        [{/if}]
        [{if $oView->isEnabledDownloadableFiles()}]
        <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_downloads"}]">[{oxmultilang ident="MY_DOWNLOADS"}]</a>
        [{/if}]
        [{/block}]
    </ul>
    [{/block}]