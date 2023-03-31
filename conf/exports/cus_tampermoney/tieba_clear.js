// ==UserScript==
// @name         贴吧精简
// @namespace    url
// @version      0.0.1
// @description  贴吧精简
// @author       v
// @include      *://tieba.baidu.com/*
// @include      *://dq.tieba.com/*
// @include      *://jump2.bdimg.com/*
// @include      *://jump.bdimg.com/*
// @exclude      *://tieba.baidu.com/f/fdir*
// @run-at       document-body
// @require      https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js
// @license      MIT
// @grant        unsafeWindow
// @grant        GM_setValue
// @grant        GM_getValue
// @grant        GM_deleteValue
// @grant        GM_listValues
// @grant        GM_info
// ==/UserScript==


(function () {
    'use strict';
    $(document).ready(function () {
        function rm_gran_by(gran_seler, seler) {
            $(seler).each(function(idx, element) {
                $(element).parents(gran_seler).remove();
            });
        }

        rm_gran_by('.l_post', '.ec-tuiguang');
    });
})();