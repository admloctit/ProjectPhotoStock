jQuery(document).ready(function($){$("#edd-wl-modal").on("keypress","#list-name",function(event){if("13"==event.keyCode)return!1}),$("a.edd-add-to-wish-list").addClass("edd-has-js"),$("body").on("click.eddAddToCartFromWishList",".edd-add-to-cart-from-wish-list",function(e){e.preventDefault();var $this=$(this),container=$this.closest("div"),$spinner=$(this).find(".edd-loading"),spinnerWidth=$spinner.width(),spinnerHeight=$spinner.height();$this.attr("data-edd-loading",""),$spinner.css({"margin-left":spinnerWidth/-2,"margin-top":spinnerHeight/-2});var download=$this.data("download-id"),variable_price=$this.data("variable-price"),price_option=$this.data("price-option"),item_price_ids=($this.data("price-mode"),[]);item_price_ids[0]="yes"==variable_price?price_option:download;var data={action:$this.data("action"),download_id:download,price_ids:item_price_ids,nonce:edd_wl_scripts.ajax_nonce,post_data:$this.closest(".edd_download_purchase_form").serialize()};return $.ajax({type:"POST",data:data,dataType:"json",url:edd_wl_scripts.ajaxurl,success:function(response){$(".cart_item.empty").length?($(response.cart_item).insertBefore(".cart_item.edd_subtotal"),$(".cart_item.edd_checkout, .cart_item.edd_subtotal").show(),$(".cart_item.empty").remove()):$(response.cart_item).insertBefore(".cart_item.edd_subtotal"),$(".cart_item.edd_subtotal span").html(response.subtotal),$("span.edd-cart-quantity").each(function(){var quantity=parseInt($(this).text(),10)+1;$(this).text(quantity)}),"none"==$(".edd-cart-number-of-items").css("display")&&$(".edd-cart-number-of-items").show("slow"),$("a.edd-add-to-cart-from-wish-list",container).toggle(),$(".edd-go-to-checkout-from-wish-list",container).css("display","inline-block"),"incart"!=response&&($(".edd-cart-added-alert",container).fadeIn(),setTimeout(function(){$(".edd-cart-added-alert",container).fadeOut()},3e3))}}).fail(function(response){console.log(response)}).done(function(response){}),!1}),$("body").on("click.eddRemoveFromWishList",".edd-remove-from-wish-list",function(e){e.preventDefault();var $this=$(this),item=$this.data("cart-item"),action=$this.data("action"),list_id=($this.data("download-id"),$this.data("list-id")),data={action:action,cart_item:item,list_id:list_id,nonce:edd_wl_scripts.ajax_nonce};return $.ajax({type:"POST",data:data,dataType:"json",url:edd_wl_scripts.ajaxurl,success:function(response){if(response.removed){if(parseInt(edd_scripts.position_in_cart,10)===parseInt(item,10))return window.location=window.location,!1;response.message&&($("ul.edd-wish-list").parent().prepend(response.message),$(".edd-wl-add-all-to-cart").parent().remove(),$(".edd-wl-sharing").remove());var toRemove=$(".edd-wish-list").find("[data-cart-item='"+item+"']").closest(".wl-row");toRemove?toRemove.remove():$(".edd-wish-list").find("[data-cart-item='"+item+"']").parent().parent().remove()}}}).fail(function(response){console.log(response)}).done(function(response){}),!1}),$("body").on("click.eddwlOpenModal",".edd-wl-open-modal",function(e){e.preventDefault();var $this=$(this),form=$this.closest("form"),$spinner=$(this).find(".edd-loading"),spinnerWidth=($(this).closest("div"),$spinner.width()),spinnerHeight=$spinner.height();$(this).attr("data-edd-loading",""),$spinner.css({"margin-left":spinnerWidth/-2,"margin-top":spinnerHeight/-2});var form=$this.closest(".edd_download_purchase_form"),download=$this.data("download-id"),variable_price=$this.data("variable-price"),price_option=($this.data("price-mode"),$this.data("price-option")),item_price_ids=[];if(price_option>=0)item_price_ids[0]=price_option;else if("yes"==variable_price){if(!$(".edd_price_option_"+download+":checked",form).length)return $(this).removeAttr("data-edd-loading"),void alert(edd_scripts.select_option);$(".edd_price_option_"+download+":checked",form).each(function(index){item_price_ids[index]=$(this).val()})}else item_price_ids[0]=download;var data={action:$(this).data("action"),post_id:$(this).data("download-id"),price_ids:item_price_ids,nonce:edd_wl_scripts.ajax_nonce};price_option>=0&&(data.price_option_single=!0),$.ajax({type:"POST",data:data,dataType:"json",url:edd_wl_scripts.ajaxurl,success:function(response){$("#edd-wl-modal .modal-content").html(response.lists),$(".edd-wl-open-modal").removeAttr("data-edd-loading"),$("a.edd-wl-open-modal").addClass("edd-has-js"),"new-list"===$("input:radio[name=list-options]:checked").val()||0===response.list_count?($("#list-name").show(),$("#list-status").show(),$("#user-lists").hide(),$("input:radio[name=list-options]").prop("checked",!0)):($("#list-name").hide(),$("#list-status").hide()),$("input:radio[name=list-options]").click(function(){"new-list"===$(this).attr("id")?($("#list-name").show().focus(),$("#list-status").show(),$("#user-lists").hide()):($("#list-name").hide(),$("#list-status").hide(),$("#user-lists").show())}),$("#edd-wl-modal").modal({backdrop:"static"})}}).fail(function(response){console.log(response)}).done(function(response){console.log(response)})}),$("body").on("click.eddAddToWishList",".edd-wl-save",function(e){e.preventDefault();var $spinner=$(this).find(".edd-loading"),spinnerWidth=$spinner.width(),spinnerHeight=$spinner.height();$(this).attr("data-edd-loading",""),$spinner.css({"margin-left":spinnerWidth/-2,"margin-top":spinnerHeight/-2});var $this=$(this),form=$this.closest("form"),form=jQuery(".edd_download_purchase_form"),download=$this.data("download-id"),variable_price=$this.data("variable-price"),price_mode=$this.data("price-mode"),item_price_ids=[];if("yes"==$("input[name=edd-wl-single-price-option]").val())item_price_ids[0]=$("input[name=edd-wish-lists-post-id]").val();else if("yes"==variable_price){if(!$(".edd_price_option_"+download+":checked",form).length)return $(this).removeAttr("data-edd-loading"),void alert(edd_scripts.select_option);$("input[name=edd-wish-lists-post-id]").each(function(index){item_price_ids[index]=$(this).val()})}else item_price_ids[0]=download;"existing-list"==jQuery("input:radio[name=list-options]:checked").val()&&(list_id=jQuery("#user-lists").val());var action=$this.data("action"),list_id=list_id,list_name=jQuery("input[name=list-name]").val(),list_status=jQuery("select[name=list-status]").val(),new_or_existing=jQuery("input:radio[name=list-options]:checked").val(),data={action:action,download_id:download,list_id:list_id,price_ids:item_price_ids,new_or_existing:new_or_existing,list_name:list_name,list_status:list_status,nonce:edd_wl_scripts.ajax_nonce};return $.ajax({type:"POST",data:data,dataType:"json",url:edd_wl_scripts.ajaxurl,success:function(response){$(".edd-wl-save").hide(),$(".edd-wl-success").show(),$(".modal-body").html(response.success),1==response.list_created&&$("#list-name").val(""),"1"==edd_wl_scripts.redirect_to_wish_list?window.location=edd_wl_scripts.wish_list_page:"multi"==price_mode&&$this.removeAttr("data-edd-loading")}}).fail(function(response){console.log(response)}).done(function(response){}),!1})});