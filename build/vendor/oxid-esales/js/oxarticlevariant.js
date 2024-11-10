/**
 * This file is part of O3-Shop.
 *
 * O3-Shop is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3.
 *
 * O3-Shop is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 * You should have received a copy of the GNU General Public License
 * along with O3-Shop.  If not, see <http://www.gnu.org/licenses/>.
 *
 * @copyright  Copyright (c) 2022 OXID eSales AG (https://www.oxid-esales.com)
 * @copyright  Copyright (c) 2022 O3-Shop (https://www.o3-shop.com)
 * @license    https://www.gnu.org/licenses/gpl-3.0  GNU General Public License 3 (GPLv3)
 */
( function ( $ ) {

    var oxArticleVariant = {

        /**
         * Initiating article variants selector
         * @private
         */
        _create: function() {
            $("ul.vardrop a").click( variantSelectActionHandler );
            $('div.variantReset a').click( variantResetActionHandler );

            $("form.js-oxWidgetReload").submit( formSubmit );
            $("form.js-oxProductForm").submit( formSubmit );
        },

        /**
         * Reloads block
         *
         * @param activator
         * @param highlightTargets
         * @param contentTarget
         * @param aOptions
         * @returns {boolean}
         */
        reload: function(activator, highlightTargets, contentTarget, aOptions) {
            preAjaxCaller();
            oxAjax.ajax(
                activator, {//targetEl, onSuccess, onError, additionalData
                    'targetEl'  : highlightTargets,
                    'iconPosEl' : $("#variants .dropDown"),
                    'additionalData' : aOptions,
                    'onSuccess' : function(r) {
                        $( contentTarget ).parent().html( r );
                        if ( typeof WidgetsHandler !== 'undefined') {
                            WidgetsHandler.reloadWidget('oxwarticledetails');
                            WidgetsHandler.reloadWidget('oxwrating');
                            WidgetsHandler.reloadWidget('oxwreview');
                        }
                    }
                }
            );
            return false;
        },

        /**
         * Resets all variant selections
         */
        resetVariantSelections: function() {
            resetVariantSelections();
        }
    }

    /**
     * Handles variant selection action
     * @returns {boolean}
     */
    function variantSelectActionHandler( e ) {
        var obj = $( this );
        // resetting
        if ( obj.parents().hasClass("js-disabled") ) {
            resetVariantSelections();
        } else {
            $( "form.js-oxProductForm input[name=anid]" ).attr( "value", $( "form.js-oxProductForm input[name=parentid]" ).attr( "value" ) );
        }

        // setting new selection
        if ( obj.parents('.js-fnSubmit').length > 0 ) {
            $('input:hidden', obj.parents('div.dropDown')).val( obj.data("selection-id") );

            var form = $("form.js-oxWidgetReload");
            $('input[name=fnc]', form).val("");
            form.submit();
        }
        return false;
    }

    /**
     * Handles variant reset action
     * @returns {boolean}
     */
    function variantResetActionHandler( e ) {
        resetVariantSelections();
        var form = $("form.js-oxWidgetReload");
        $('input[name=fnc]', form).val("");
        form.submit();
        return false;
    }

    /**
     * Resets variant selections
     */
    function resetVariantSelections() {
        var aVarSelections = $( "form.js-oxProductForm input[name^=varselid], form.js-oxWidgetReload input[name^=varselid]" );
        for (var i = 0; i < aVarSelections.length; i++) {
            $( aVarSelections[i] ).attr( "value", "" );
        }
        $( "form.js-oxProductForm input[name=anid]" ).attr( "value", $( "form.js-oxProductForm input[name=parentid]" ).attr( "value" ) );
    }

    /**
     * Handles form submit
     *
     * @returns {*}
     */
    function  formSubmit() {
        var aOptions = {}, target = $(this);
        if (!$("input[name='fnc']", this).val()) {
            if (($( "input[name=aid]", this ).val() == $( "input[name=parentid]", this ).val() )) {
                var aSelectionInputs = $("input[name^=varselid]", $("form.js-oxProductForm"));
                if (aSelectionInputs.length) {
                    var sHash = '';
                    aSelectionInputs.each(function(i) {
                        sHash = sHash+i+':'+$(this).val()+"|";
                        aOptions[$(this).attr( "name" )] = $(this).val();
                    });
                    if ( jQuery.inArray( sHash, oxVariantSelections ) === -1 ) {
                        return oxArticleVariant.reload( $(target), $("#details_container"), $("#details_container")[0], aOptions);
                    }
                }
            }
            return oxArticleVariant.reload( $(target),$("#details_container"),$("#details_container")[0], aOptions);
        }
    }

    /**
     * Runs defined scripts inside the method, before ajax is called
     */
    function preAjaxCaller() {
        $('#zoomModal').remove();
    }

    $.widget("ui.oxArticleVariant", oxArticleVariant );

})( jQuery );