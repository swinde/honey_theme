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
     * Cookie note handler
     */
    oxCookieNote = {
        options: {
            closeButton : ".dismiss"
        },
        /**
         * Enable cookie note dismiss
         *
         * @return false
         */
        _create: function() {
            var self = this;
            if( !$.cookie("displayedCookiesNotification") ) {
                $.cookie("displayedCookiesNotification", 1, { path: '/', expires: 30 });
            } else {
                self.element.remove();
                return false;
            }
            $(self.options.closeButton, self.element).click(
                function(){
                    self.element.fadeOut('slow').remove();
                    return false;
                }
            );
        }
    };

    /**
     * CookieNote widget
     */
    $.widget("ui.oxCookieNote", oxCookieNote );

})( jQuery );