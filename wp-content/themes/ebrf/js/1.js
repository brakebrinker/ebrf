//закрытие выпадающей мишуры по клику вне элемента
jQuery(document).ready(function($) {
var elem;
$(document).mouseup(function(e){
	if (elem != undefined && !elem.is(e.target) && elem.has(e.target).length === 0) {
			//функции закрытия всякой херни
			if(elem.hasClass('select')){
				elem.removeClass('open').children('.select-list').hide();
			}
			if(elem.is('.dropdown')){
				elem.removeClass('open');
				$('' + elem.attr('href') + '').slideUp();
				$('' + elem.attr('data-target') + '').slideUp();
			}
		}
	elem = undefined;
});
//раскрытие блоков
$('.dropdown').click(function(e){
	e.preventDefault();
	var target = $(this).attr('href');
	var parent = $(this).attr('data-parent');
	if(target == undefined){
		target = $(this).attr('data-target')
	}
	if($(this).hasClass('open') && $('' + target + '').length){
		$('' + target + '').slideUp();
		$(this).removeClass('open');
		elem = undefined;
	}else if($('' + target + '').length){
		if(parent != undefined){
			$('' + parent + '').find('.collapsed.in').slideUp().removeClass('in');
			$('' + parent + '').find('.dropdown.open').removeClass('open');
		}
		$(this).addClass('open')
		$('' + target + '').slideDown().addClass('in');
		/* elem = $('' + target + ''); */
		elem = $(this);
	}
})
//кастомные радиокнопки и чекбоксы
$('input.custom-input').each(function(){
	var attrClass = $(this).attr('class');
	$(this).removeAttr('class');	
	$(this).wrap('<span />');
	$(this).parent('span').addClass(attrClass);
	$(this).after('<span class="input__item" />');
})
//Таки обрезание(текста)
var truncate = function(el) {
	var text = el.text(),
		height = el.height(),
		clone = el.clone();

  clone.css({
		position: 'absolute',
		visibility: 'hidden',
		height: 'auto'
	});
	el.after(clone);

	var l = text.length - 1;
	for (; l >= 0 && clone.height() > height; --l) {
		clone.text(text.substring(0, l) + '...');
	}

	el.text(clone.text());
	clone.remove();
};

$.fn.truncateText = function() {
	return this.each(function () {
		truncate($(this));
	});
};

$('.post-loop__text').truncateText();

//перемещение контента в мобильной версии
function relocate(){
	if($(window).width() < 992){
		$('.header__topline #top-menu').insertBefore('#main-menu');
		$('.catalog #filter').appendTo('header');
		$('aside .post-nav').insertBefore('.blog');
		$('aside .clauses').insertBefore('#after-clauses');
	}else{
		$('.header__bottomline #top-menu').insertAfter('header .logo').css('display','');
		$('header #filter').prependTo('.catalog').css('display','');
		$('#mobile-menu').css('display','')
		$('.menu-btn.open,.filter-btn.open').removeClass('open');
		$('.page-content .post-nav').prependTo('aside');
		$('.page-content .clauses').prependTo('aside');
	}
}
relocate();
$(window).resize(relocate);
//Кнопки в мобильной версии
if(!$('#filter').length){//убираю кнопку фильтр при отсутствии таковых
	$('.filter-btn').remove()
}
$('.menu-btn,.filter-btn').click(function(e){
	e.preventDefault();
	var trg = $('' + $(this).attr('href') + '');
	if(!$(this).is('.open')){
		$(this).addClass('open');
		trg.slideDown();
		if($(this).is('.menu-btn')){
			$('.filter-btn').removeClass('open');
			$('#filter').hide();
		}else{
			$('.menu-btn').removeClass('open');
			$('.header__bottomline').hide();
		}
	}else{
		$(this).removeClass('open');
		trg.slideUp();
	}	
})

//установка рейтинга компании
var fastar = $('.review-form__rating .fa-star');
var clickFlag = false;

fastar.mouseenter( function() {
	setStarsRate($(this).index());
});

fastar.mouseleave( function() {
	if (!clickFlag) {
		nullStarsRate();
	}
});

fastar.on('click', function() {
	var rate = $(this).index() + 1;

	setStarsRate($(this).index());
	$('#review-rate').val(rate);
	$('.review-form__rating .rating-number').text('(' + rate + ')');
	clickFlag = true;
});

function setStarsRate(index) {
	nullStarsRate();
	for (var i = 0; i <= index; i++) {
		fastar.eq(i).addClass('hov');
	}
}

function nullStarsRate() {
	fastar.each(function() {
		$(this).removeClass('hov');
	});
}

//скрыть сообщение
$('.msg-time-hide').delay(10000).fadeOut('slow');

});