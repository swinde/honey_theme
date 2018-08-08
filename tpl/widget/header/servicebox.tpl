<div class="topPopList">
    [{block name="widget_header_servicebox_flyoutbox"}]
        <span class="lead">[{oxmultilang ident="ACCOUNT"}]</span>
             <nav id="services" class="nav flex-column list-unstyled">
                [{block name="widget_header_servicebox_items"}]
                    <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account"}]">[{oxmultilang ident="MY_ACCOUNT"}]</a>
                    [{if $oViewConf->getShowCompareList()}]
                        <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=compare"}]">[{oxmultilang ident="MY_PRODUCT_COMPARISON"}]</a> [{if $oView->getCompareItemsCnt()}]<span class="badge badge-pill">[{$oView->getCompareItemsCnt()}]</span>[{/if}]
                 [{/if}]

                        <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_noticelist"}]"><span>[{oxmultilang ident="MY_WISH_LIST"}]</span></a>
                        [{if $oxcmp_user && $oxcmp_user->getNoticeListArtCnt()}] <span class="badge badge-pill">[{$oxcmp_user->getNoticeListArtCnt()}]</span>[{/if}]

                    [{if $oViewConf->getShowWishlist()}]

                            <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_wishlist"}]"><span>[{oxmultilang ident="MY_GIFT_REGISTRY"}]</span></a>
                            [{if $oxcmp_user && $oxcmp_user->getWishListArtCnt()}] <span class="badge badge-pill">[{$oxcmp_user->getWishListArtCnt()}]</span>[{/if}]

                    [{/if}]
                    [{if $oViewConf->getShowListmania()}]

                            <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_recommlist"}]"><span>[{oxmultilang ident="MY_LISTMANIA"}]</span></a>
                            [{if $oxcmp_user && $oxcmp_user->getRecommListsCount()}] <span class="badge badge-pill">[{$oxcmp_user->getRecommListsCount()}]</span>[{/if}]

                    [{/if}]
                    [{if $oViewConf->isFunctionalityEnabled( "blEnableDownloads" )}]

                            <a class="nav-link" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_downloads"}]"><span>[{oxmultilang ident="MY_DOWNLOADS"}]</span></a>

                    [{/if}]
                [{/block}]
            </nav>

    [{/block}]
</div>