[{if $oView->isLanguageLoaded()}]
    <div class="btn-group languages-menu">
        <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
            [{assign var="sLangImg" value="lang/"|cat:$oViewConf->getActLanguageAbbr()|cat:".png"}]
            [{block name="dd_layout_page_header_icon_menu_languages_button"}]
        <img src="[{$oViewConf->getImageUrl($sLangImg)}]" alt=""/>
            [{/block}]
        </button>
        <div class="dropdown-menu" role="menu">
            [{block name="dd_layout_page_header_icon_menu_languages_list"}]
            [{foreach from=$oxcmp_lang item=_lng}]
            [{assign var="sLangImg" value="lang/"|cat:$_lng->abbr|cat:".png"}]
            [{if $_lng->selected}]
            [{capture name="languageSelected"}]
            <a class="dropdown-item flag[{$_lng->abbr}] active" title="[{$_lng->name}]" href="[{$_lng->link|oxaddparams:$oView->getDynUrlParams()}]" hreflang="[{$_lng->abbr}]"><span style="background-image:url('[{$oViewConf->getImageUrl($sLangImg)}]')" >[{$_lng->name}]</span></a>
            [{/capture}]
            [{/if}]

            <a class="dropdown-item flag [{$_lng->abbr}]" title="[{$_lng->name}]" href="[{$_lng->link|oxaddparams:$oView->getDynUrlParams()}]" hreflang="[{$_lng->abbr}]">
                <img src="[{$oViewConf->getImageUrl($sLangImg)}]" alt=""/> [{$_lng->name}]
            </a>

            [{/foreach}]
            [{/block}]
        </div>
    </div>
    [{/if}]