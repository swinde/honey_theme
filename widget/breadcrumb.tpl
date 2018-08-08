[{block name="dd_widget_breadcrumb"}]
    [{strip}]
    <div class="row">
        <nav class="col-12 w-100" aria-label="breadcrumb">
            [{block name="dd_widget_breadcrumb_list_inner"}]
            <ol id="breadcrumb" class="breadcrumb">
                [{block name="dd_widget_breadcrumb_list"}]
                <li class="text-muted mr-2">[{oxmultilang ident="YOU_ARE_HERE"}]:
                [{foreach from=$oView->getBreadCrumb() item="sCrum" name="breadcrumb"}]
                <li [{if !$smarty.foreach.breadcrumb.last}] class="breadcrumb-item"[{else}] class="breadcrumb-item active" aria-current="page"[{/if}]>
                    [{if $sCrum.link && !$smarty.foreach.breadcrumb.last}]
                    <a href="[{$sCrum.link}]" title="[{$sCrum.title|escape:'html'}]" itemprop="url">
                        <span itemprop="title">[{$sCrum.title}]</span>
                    </a>

                    [{else}]
                    <span itemprop="title">[{$sCrum.title}]</span>[{/if}]

                [{/foreach}]


                [{/block}]
            </ol>
            [{/block}]
        </nav>
    </div>
    [{/strip}]
[{/block}]
