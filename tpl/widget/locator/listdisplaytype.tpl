[{assign var="listType" value=$oView->getListDisplayType()}]
[{assign var="_additionalParams" value=$oView->getAdditionalParams()}]
[{assign var="_artPerPage" value=$oViewConf->getArtPerPageCount()}]

[{if $oView->canSelectDisplayType()}]
    <div class="btn-group">
        <button type="button" class="btn btn-outline-dark btn-sm dropdown-toggle" data-toggle="dropdown">
            <strong>[{oxmultilang ident="LIST_DISPLAY_TYPE"}]</strong> [{oxmultilang ident=$listType}]
        </button>
        <ul class="dropdown-menu" role="menu">
            <a href="[{$oView->getLink()|oxaddparams:"ldtype=infogrid&amp;_artperpage=$_artPerPage&amp;pgNr=0&amp;$_additionalParams"}]" class="dropdown-item[{if $listType eq 'infogrid'}] active[{/if}]">[{oxmultilang ident="infogrid"}]</a>
            <a href="[{$oView->getLink()|oxaddparams:"ldtype=grid&amp;_artperpage=$_artPerPage&amp;pgNr=0&amp;$_additionalParams"}]" class="dropdown-item[{if $listType eq 'grid'}] active[{/if}]">[{oxmultilang ident="grid"}]</a>
            <a href="[{$oView->getLink()|oxaddparams:"ldtype=line&amp;_artperpage=$_artPerPage&amp;pgNr=0&amp;$_additionalParams"}]" class="dropdown-item[{if $listType eq 'line'}] active[{/if}]">[{oxmultilang ident="line"}]</a>
        </ul>
    </div>
[{/if}]