[{assign var="iManufacturerLimit" value="20"}]
[{assign var="manufacturers" value=$oView->getManufacturerlist()}]
[{if $manufacturers|count}]
    [{block name="footer_manufacturers"}]
        <ul class="nav flex-column manufacturers list-unstyled">
            [{assign var="rootManufacturer" value=$oView->getRootManufacturer()}]
            <a class="nav-link" href="[{$rootManufacturer->getLink()}]">[{oxmultilang ident="ALL_BRANDS"}]</a>
            [{foreach from=$manufacturers item=_mnf name=manufacturers}]
                [{if $smarty.foreach.manufacturers.index < $iManufacturerLimit}]
                    <a class="nav-link" href="[{$_mnf->getLink()}]" [{if $_mnf->expanded}]class="exp"[{/if}]>[{$_mnf->oxmanufacturers__oxtitle->value}]</a>
                [{elseif $smarty.foreach.manufacturers.index == $iManufacturerLimit}]
                    <a class="nav-link" href="[{$rootManufacturer->getLink()}]">[{oxmultilang ident="MORE"}]</a>
                [{/if}]
            [{/foreach}]
        </ul>
    [{/block}]
[{/if}]
