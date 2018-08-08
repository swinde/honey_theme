[{assign var="_additionalParams" value=$oView->getAdditionalParams()}]
[{assign var="listType" value=$oView->getListDisplayType()}]

<div class="btn-group">
    <button type="button" class="btn btn-outline-dark btn-sm dropdown-toggle" data-toggle="dropdown">
        <strong>[{oxmultilang ident="PRODUCTS_PER_PAGE"}]</strong>
        [{if $oViewConf->getArtPerPageCount()}]
            [{$oViewConf->getArtPerPageCount()}]
        [{else}]
            [{oxmultilang ident="CHOOSE"}]
        [{/if}]

    </button>
    <div class="dropdown-menu" role="menu">
        [{foreach from=$oViewConf->getNrOfCatArticles() item=iItemsPerPage}]
             <a href="[{$oView->getLink()|oxaddparams:"ldtype=$listType&amp;_artperpage=$iItemsPerPage&amp;pgNr=0&amp;$_additionalParams"}]" class="dropdown-item[{if $oViewConf->getArtPerPageCount() == $iItemsPerPage}] active[{/if}]">[{$iItemsPerPage}]</a>
        [{/foreach}]
    </div>
</div>