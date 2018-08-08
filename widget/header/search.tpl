[{block name="widget_header_search_form"}]
    [{if $oView->showSearch()}]
        <form class="form search" role="form" action="[{$oViewConf->getSelfActionLink()}]" method="get" name="search">
            [{$oViewConf->getHiddenSid()}]
            <input type="hidden" name="cl" value="search">
            [{block name="dd_widget_header_search_form_inner"}]
                <div class="input-group mb-3">
                    [{block name="header_search_field"}]
                        <input class="form-control" type="text" id="searchParam" name="searchparam" value="[{$oView->getSearchParamForHtml()}]" placeholder="[{oxmultilang ident="SEARCH"}]">
                    [{/block}]
                    <div class="input-group-append">
                       <button type="submit" class="btn btn-primary" title="[{oxmultilang ident="SEARCH_SUBMIT"}]">
                        <i class="fas fa-search"></i>
                        </button>

                    </div>
                </div>
            [{/block}]
        </form>
    [{/if}]
[{/block}]