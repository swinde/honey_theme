[{block name="dd_widget_promoslider"}]
    [{assign var="oBanners" value=$oView->getBanners()}]
    [{assign var="currency" value=$oView->getActCurrency()}]

    [{*if $oBanners|@count*}]
        [{*oxscript include="js/libs/jquery.flexslider.min.js" priority=2*}]
        [{*oxstyle include="css/libs/jquery.flexslider.min.css"*}]
    <!-- Indicators -->
        <ul class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ul>

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                [{block name="dd_widget_promoslider_list"}]
                    [{foreach from=$oBanners key="iPicNr" item="oBanner" name="promoslider"}]
                        [{assign var="oArticle" value=$oBanner->getBannerArticle()}]
                        [{assign var="sBannerPictureUrl" value=$oBanner->getBannerPictureUrl()}]
                        [{if $sBannerPictureUrl}]
                            <div class="carousel-item">
                                [{assign var="sBannerLink" value=$oBanner->getBannerLink()}]
                                [{if $sBannerLink}]
                                    <a href="[{$sBannerLink}]" title="[{$oBanner->oxactions__oxtitle->value}]">
                                [{/if}]

                                <img class="d-block w-100" src="[{$sBannerPictureUrl}]" alt="[{$oBanner->oxactions__oxtitle->value}]" title="[{$oBanner->oxactions__oxtitle->value}]">

                                [{if $sBannerLink}]
                                    </a>
                                [{/if}]
                                [{if $oViewConf->getViewThemeParam('blSliderShowImageCaption') && $oArticle}]
                                    <div class="carousel-caption d-none d-md-block">
                                        [{if $sBannerLink}]
                                            <a href="[{$sBannerLink}]" title="[{$oBanner->oxactions__oxtitle->value}]">
                                        [{/if}]
                                        <h5 class="title">[{$oArticle->oxarticles__oxtitle->value}]</h5>[{if $oArticle->oxarticles__oxshortdesc->value|trim}]<br/><p class="shortdesc">[{$oArticle->oxarticles__oxshortdesc->value|trim}]</p>[{/if}]
                                        [{if $sBannerLink}]
                                            </a>
                                        [{/if}]
                                    </div>
                                [{/if}]
                            </div>
                        [{/if}]
                    [{/foreach}]
                [{/block}]
            </div>
            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    [{*/if*}]
[{/block}]
