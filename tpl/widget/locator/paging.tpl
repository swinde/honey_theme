[{block name="widget_locator_paging"}]
    [{if $pages->changePage}]
<nav aria-label="Page navigation example">
        <ul class="pagination pagination-sm[{if $place eq "bottom"}] lineBox[{/if}]" id="itemsPager[{$place}]">
            <li class="page-item prev[{if !$pages->previousPage}] disabled[{/if}]">
                [{if $pages->previousPage}]
                    <a class="page-link" href="[{$pages->previousPage}]">
                        <i class="fas fa-long-arrow-left" aria-hidden="true"></i>
                        [{oxmultilang ident="PREVIOUS"}]</a>
                [{else}]
                    <strong class="page-link">
                        <i class="fas fa-long-arrow-left" aria-hidden="true"></i>
                        [{oxmultilang ident="PREVIOUS"}]
                    </strong>
                [{/if}]


            [{assign var="i" value=1}]
            [{foreach key=iPage from=$pages->changePage item=page}]
                [{if $iPage == $i}]
                    <li class="page-item[{if $iPage == $pages->actPage}] active[{/if}]">
                        <a class="page-link" href="[{$page->url}]">[{$iPage}]</a>

                   [{assign var="i" value=$i+1}]
                [{elseif $iPage > $i}]
                    <li class="page-item disabled">
                        <strong class="page-link">...</strong>

                    <li class="page-item[{if $iPage == $pages->actPage}] active[{/if}]">
                        <a class="page-link" href="[{$page->url}]">[{$iPage}]</a>

                    [{assign var="i" value=$iPage+1}]
                [{elseif $iPage < $i}]
                    <li class="page-item[{if $iPage == $pages->actPage}] active[{/if}]">
                        <a class="page-link" href="[{$page->url}]">[{$iPage}]</a>

                    <li class="page-item disabled">
                        <strong class="page-link">...</strong>

                   [{assign var="i" value=$iPage+1}]
                [{/if}]
            [{/foreach}]

            <li class="page-item next[{if !$pages->nextPage}] disabled[{/if}]">
                [{if $pages->nextPage}]
                    <a class="page-link" href="[{$pages->nextPage}]">[{oxmultilang ident="NEXT"}]
                        <i class="fas fa-long-arrow-right" aria-hidden="true"></i>
                    </a>
                [{else}]
                    <strong class="page-link">[{oxmultilang ident="NEXT"}]
                        <i class="fas fa-long-arrow-right" aria-hidden="true"></i>
                    </strong>
                [{/if}]

         </ul>
</nav>
    [{/if}]
[{/block}]