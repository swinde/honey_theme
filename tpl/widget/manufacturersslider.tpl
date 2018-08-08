[{oxscript include="js/libs/jquery.flexslider.min.js" priority=2}]
[{oxstyle include="css/libs/jquery.flexslider.min.css"}]

<div class="">
    <div id="manufacturerSlider" class="boxwrapper">
        <div class="jumbotron text-center page-header">
            <h2>[{oxmultilang ident="OUR_BRANDS"}]</h2>
            <small class="subhead">[{oxmultilang ident="MANUFACTURERSLIDER_SUBHEAD"}]</small>
        </div>

        <div class="flexslider">
            <ul class="slides">
                [{foreach from=$oView->getManufacturerForSlider() item=oManufacturer}]
                    [{if $oManufacturer->oxmanufacturers__oxicon->value}]
                <li>
                            <a href="[{$oManufacturer->getLink()}]" title="[{oxmultilang ident="VIEW_ALL_PRODUCTS"}]">
                                <img class="img-fluid" src="[{$oViewConf->getImageUrl('spinner.gif')}]" data-src="[{$oManufacturer->getIconUrl()}]" alt="[{$oManufacturer->oxmanufacturers__oxtitle->value}]">
                            </a>
                </li>
                    [{/if}]
                [{/foreach}]
            </ul>
        </div>
    </div>
</div>

[{*class row entfernt, h3 to h2*}]