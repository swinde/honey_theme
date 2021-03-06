<nav id="account_menu">
    <ul class="list-group">
        [{block name="account_menu"}]
            <li class="list-group-item[{if $active_link == "password"}] active[{/if}]">
                <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_password"}]" title="[{oxmultilang ident="CHANGE_PASSWORD"}]">[{oxmultilang ident="CHANGE_PASSWORD"}]</a>

            <li class="list-group-item[{if $active_link == "newsletter"}] active[{/if}]">
                <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_newsletter"}]" title="[{oxmultilang ident="NEWSLETTER_SETTINGS"}]">[{oxmultilang ident="NEWSLETTER_SETTINGS"}]</a>

            <li class="list-group-item[{if $active_link == "billship"}] active[{/if}]">
                <a href="[{oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_user"}]" title="[{oxmultilang ident="BILLING_SHIPPING_SETTINGS"}]">[{oxmultilang ident="BILLING_SHIPPING_SETTINGS"}]</a>

            <li class="list-group-item[{if $active_link == "orderhistory"}] active[{/if}]">
                <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_order"}]" title="[{oxmultilang ident="ORDER_HISTORY"}]">[{oxmultilang ident="ORDER_HISTORY"}]</a>

            [{if $oViewConf->getShowCompareList()}]
                <li class="list-group-item[{if $active_link == "compare"}] active[{/if}]">
                    <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=compare"}]" title="[{oxmultilang ident="MY_PRODUCT_COMPARISON"}]">[{oxmultilang ident="MY_PRODUCT_COMPARISON"}][{if $oView->getCompareItemCount() > 0}] <span class="badge badge-pill">[{$oView->getCompareItemCount()}]</span>[{/if}]</a>

            [{/if}]
            <li class="list-group-item[{if $active_link == "noticelist"}] active[{/if}]">
                <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_noticelist"}]" title="[{oxmultilang ident="MY_WISH_LIST"}]">[{oxmultilang ident="MY_WISH_LIST"}][{if $oxcmp_user && $oxcmp_user->getNoticeListArtCnt() > 0}] <span class="badge badge-pill">[{$oxcmp_user->getNoticeListArtCnt()}]</span>[{/if}]</a>

            [{if $oViewConf->getShowWishlist()}]
                <li class="list-group-item[{if $active_link == "wishlist"}] active[{/if}]">
                    <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_wishlist"}]" title="[{oxmultilang ident="MY_GIFT_REGISTRY"}]">[{oxmultilang ident="MY_GIFT_REGISTRY"}][{if $oxcmp_user && $oxcmp_user->getWishListArtCnt() > 0}] <span class="badge badge-pill">[{$oxcmp_user->getWishListArtCnt()}]</span>[{/if}]</a>

            [{/if}]
            [{if $oViewConf->getShowListmania()}]
                <li class="list-group-item[{if $active_link == "recommendationlist"}] active[{/if}]">
                    <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_recommlist"}]" title="[{oxmultilang ident="MY_LISTMANIA"}]">[{oxmultilang ident="MY_LISTMANIA"}]</a>

            [{/if}]
            [{if $oView->isEnabledDownloadableFiles()}]
                <li class="list-group-item[{if $active_link == "downloads"}] active[{/if}]">
                    <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_downloads"}]" title="[{oxmultilang ident="MY_DOWNLOADS"}]">[{oxmultilang ident="MY_DOWNLOADS"}]</a>

            [{/if}]
        [{/block}]
    </ul>
</nav>