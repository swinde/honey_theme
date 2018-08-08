[{assign var="oSelections" value=$oSelectionList->getSelections()}]
[{if $oSelections}]
    <div class="selectbox dropDown">
        [{if !$blHideLabel}]
        <p class="variant-label"><strong>[{$oSelectionList->getLabel()}][{oxmultilang ident="COLON"}]</strong></p>
        [{/if}]
        <div class="dropdown">
            <button type="button" class="btn btn-outline-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                [{assign var="oActiveSelection" value=$oSelectionList->getActiveSelection()}]
                [{if $oActiveSelection}]
                <span>[{$oActiveSelection->getName()}]</span>
                [{elseif !$blHideDefault}]
                <span>
                        [{if $sFieldName == "sel"}]
                            [{oxmultilang ident="PLEASE_CHOOSE"}]
                        [{else}]
                            [{$oSelectionList->getLabel()}] [{oxmultilang ident="CHOOSE_VARIANT"}]
                        [{/if}]
                </span>
                [{/if}]
            </button>
            [{if $editable !== false}]
        <input type="hidden" name="[{$sFieldName|default:"varselid"}][[{$iKey}]]" value="[{if $oActiveSelection}][{$oActiveSelection->getValue()}][{/if}]">
            <div class="dropdown-menu [{$sJsAction}][{if $sFieldName != "sel"}] vardrop[{/if}]" role="menu">
                [{if $oActiveSelection && !$blHideDefault}]

                <a href="#" rel="">
                    [{if $sFieldName == "sel"}]
                    [{oxmultilang ident="PLEASE_CHOOSE"}]
                    [{else}]
                    [{oxmultilang ident="CHOOSE_VARIANT"}]
                    [{/if}]
                </a>

                [{/if}]
                [{foreach from=$oSelections item=oSelection}]
                <li class="">
                    <a href="[{$oSelection->getLink()}]" data-selection-id="[{$oSelection->getValue()}]" class="dropdown-item[{if $oSelection->isActive()}] active[{/if}][{if $oSelection->isDisabled()}]disabled js-disabled[{/if}]">[{$oSelection->getName()}]</a>
                </li>
                    [{/foreach}]
            </div>
            [{/if}]
        </div>
    </div>
    [{/if}]