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
( function( $ ) {

    oxRating = {
        options: {
            reviewButton         : "writeNewReview",
            articleRatingValue   : "productRating",
            listManiaRatingValue : "recommListRating",
            currentRating        : "reviewCurrentRating",
            reviewForm           : "writeReview",
            reviewDiv            : "review",
            hideReviewButton     : true,
            openReviewForm       : true,
            ratingElement        : "a.ox-write-review"
        },

        _create: function() {

            var self     = this;
            var options = self.options;
            var el      = self.element;

            $( options.ratingElement, el ).each( function(i){

                $(this).click(function(){

                    self.setRatingValue( $('#' + options.articleRatingValue), i + 1 );

                    self.setRatingValue( $('#' + options.listManiaRatingValue), i + 1 );

                    self.setCurrentRating( $('#' + options.currentRating), ( ( i + 1 ) * 20) + '%' );

                    if ( options.openReviewForm ){
                        self.openReviewForm( $("#" + options.reviewForm) );
                    }

                    if ( options.hideReviewButton ){
                        self.hideReviewButton( $('#' + options.reviewButton) );
                    }
                    return false;
                });
            });
        },

        /**
         * set rating value on form element
         *
         * @return {Object}
         */
        setRatingValue: function( oElement, value )
        {
            oElement.val(value);
            return oElement;
        },

        /**
         * set rating value on stars
         *
         * @return {Object}
         */
        setCurrentRating: function( oElement, value )
        {
            oElement.width( value );
            return oElement;
        },


        /**
         * hide review button
         *
         * @return {Object}
         */
        hideReviewButton: function( oButton )
        {
            oButton.hide();
            return oButton;
        },

        /**
         * open review form
         *
         * @return {Object}
         */
        openReviewForm: function( oForm )
        {
            $( "html,body" ).animate( {
                scrollTop: $( "#" + this.options.reviewDiv ).offset().top
            }, 1000, function(){
                oForm.slideDown();
            } );

            return oForm;
        }

    };

    /**
     * Rating widget
     */
    $.widget("ui.oxRating", oxRating );


} )( jQuery );
