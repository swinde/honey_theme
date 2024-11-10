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

    /**
     * Equalize columns
     */
    oxEqualizer = {

        /**
         * Gets tallest element value
         *
         * @return integer
         */
        equalHeight: function(group, target)
        {
            var self    = this,
                newh    = 0,
                tallest = 0,
                elementh = 0;

            if ( target ) {
                if (group.height() < target.height()){
                    tallest = target.height() - (group.innerHeight() - group.height());
                }
            } else {
                tallest = self.getTallest( group );
            }

            if( tallest ) {
                group.each(function(){
                    if($(this).hasClass('oxEqualized')) {
                        $(this).css('height','');
                        $(this).removeClass('oxEqualized');
                    }
                    elementh = $(this).outerHeight();
                    if (elementh < tallest) {
                        newh = tallest - (elementh - $(this).height());
                        $(this).height(newh).addClass('oxEqualized');
                    }
                });
            }
        },

        /**
         * Gets tallest element value
         *
         * @return integer
         */
        getTallest: function(el)
        {
            var tallest = 0;
            el.each(function(){
                var thisHeight = $(this).outerHeight();
                if (!$(this).hasClass('oxEqualized') && thisHeight > tallest) {
                    tallest = thisHeight;
                }
            });
            return tallest;
        }
    };

    /**
     * Equalizer widget
     */
    $.widget("ui.oxEqualizer", oxEqualizer );

})( jQuery );
