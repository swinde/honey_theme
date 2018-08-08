[{if $oxcmp_categories}]
    [{assign var="categories" value=$oxcmp_categories}]
    [{block name="footer_categories"}]
        <ul class="nav flex-column categories list-unstyled">
            [{foreach from=$categories item=_cat}]
                [{if $_cat->getIsVisible()}]
                    [{if $_cat->getContentCats()}]
                        [{foreach from=$_cat->getContentCats() item=_oCont}]
                        <a class="nav-link" href="[{$_oCont->getLink()}]"><i></i>[{$_oCont->oxcontents__oxtitle->value}]</a>
                        [{/foreach}]
                    [{/if}]
                    <a href="[{$_cat->getLink()}]" class="nav-link[{if $_cat->expanded}] exp[{/if}]">[{$_cat->oxcategories__oxtitle->value}] [{if $oView->showCategoryArticlesCount() && ( $_cat->getNrOfArticles() > 0 )}] ([{$_cat->getNrOfArticles()}])[{/if}]</a>
                [{/if}]
            [{/foreach}]
        </ul>
    [{/block}]
[{/if}]

