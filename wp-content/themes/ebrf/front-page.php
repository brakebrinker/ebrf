<?php get_header(); ?>
<main>
	<div class="wrapper">
		<div class="schema">
			<div class="schema__item">
				<i class="schema__icon icon-give"></i>
				<p class="schema__text">1. Получение предложений</p>
			</div>
			<span class="icon-arrow-right schema__arrow"></span>
			<div class="schema__item">
				<i class="schema__icon icon-choise"></i>
				<p class="schema__text">2. Выбор предложения</p>
			</div>
			<span class="icon-arrow-right schema__arrow central"></span>
			<div class="schema__item">
				<i class="schema__icon icon-transition"></i>
				<p class="schema__text">3. Переход на официальном сайте кредитов и оформление</p>
			</div>
			<span class="icon-arrow-right schema__arrow"></span>
			<div class="schema__item">
				<i class="schema__icon icon-money"></i>
				<p class="schema__text">4. Получение денег</p>
			</div>
		</div>
	</div>
	<form action="#" class="search-form">
		<div class="wrapper">
			<h4 class="search-form__title">Поиск</h4>
			<input type="text" placeholder="Сумма">
			<input type="text" placeholder="Срок">
			<input type="text" placeholder="Процент">
			<button>Найти</button>
		</div>
	</form>
	<div class="wrapper">
		<div class="catalog aside-wrapper">
			<?php get_template_part( 'aside' ); ?>
			<div class="page-content">
				<form class="sort-form">
					<span>Сортировать</span>
					<label class="sort">
						<input type="radio" name="sort" value="summ">
						<span class="sort__item">По сумме <i class="fa-angle-down"></i></span>
					</label>
					<label class="sort">
						<input type="radio" name="sort" value="term">
						<span class="sort__item">По сроку <i class="fa-angle-down"></i></span>
					</label>
					<label class="sort">
						<input type="radio" name="sort" value="percent">
						<span class="sort__item">По % <i class="fa-angle-down"></i></span>
					</label>
				</form>
				<div class="company">
					<div class="company__head">
						<img src="img/cmp/1.png" alt="" class="company__logo">
						<div class="company__rating">
							<h6 class="company__rating-title">Рейтинг</h6>
							<div class="company__rating-stars">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="company__rating-amount">4.6</span>
						</div>
					</div>
					<div class="company__text">
						<h3 class="company__name">Честное слово</h3>
						<table class="company__table">
							<thead>
								<tr>
									<td>На срок / дней </td>
									<td>Сумма / дней</td>
									<td>Ставка/в день</td>
									<td>Рассмотрение</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5 - 126</td>
									<td>50 000</td>
									<td>0,76%</td>
									<td>1 минута</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="company__btn btn">Получить займ</a>
						<div class="company__receiving">
							<span>Способ получения</span>
							<img class="receiving__img" src="img/pay/1.svg" alt="">
							<img class="receiving__img" src="img/pay/2.svg" alt="">
							<img class="receiving__img" src="img/pay/3.svg" alt="">
							<img class="receiving__img" src="img/pay/4.svg" alt="">
							<img class="receiving__img" src="img/pay/5.svg" alt="">
							<img class="receiving__img" src="img/pay/6.svg" alt="">
						</div>
					</div>
				</div>
				<div class="company">
					<div class="company__head">
						<img src="img/cmp/2.png" alt="" class="company__logo">
						<div class="company__rating">
							<h6 class="company__rating-title">Рейтинг</h6>
							<div class="company__rating-stars">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="company__rating-amount">4.6</span>
						</div>
					</div>
					<div class="company__text">
						<h3 class="company__name">Moneyman</h3>
						<table class="company__table">
							<thead>
								<tr>
									<td>На срок / дней </td>
									<td>Сумма / дней</td>
									<td>Ставка/в день</td>
									<td>Рассмотрение</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5 - 126</td>
									<td>50 000</td>
									<td>0,76%</td>
									<td>1 минута</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="company__btn btn">Получить займ</a>
						<div class="company__receiving">
							<span>Способ получения</span>
							<img class="receiving__img" src="img/pay/1.svg" alt="">
							<img class="receiving__img" src="img/pay/2.svg" alt="">
							<img class="receiving__img" src="img/pay/3.svg" alt="">
							<img class="receiving__img" src="img/pay/4.svg" alt="">
							<img class="receiving__img" src="img/pay/5.svg" alt="">
							<img class="receiving__img" src="img/pay/6.svg" alt="">
						</div>
					</div>
				</div>
				<div class="company">
					<div class="company__head">
						<img src="img/cmp/3.png" alt="" class="company__logo">
						<div class="company__rating">
							<h6 class="company__rating-title">Рейтинг</h6>
							<div class="company__rating-stars">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="company__rating-amount">4.6</span>
						</div>
					</div>
					<div class="company__text">
						<h3 class="company__name">eKapusta</h3>
						<table class="company__table">
							<thead>
								<tr>
									<td>На срок / дней </td>
									<td>Сумма / дней</td>
									<td>Ставка/в день</td>
									<td>Рассмотрение</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5 - 126</td>
									<td>50 000</td>
									<td>0,76%</td>
									<td>1 минута</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="company__btn btn">Получить займ</a>
						<div class="company__receiving">
							<span>Способ получения</span>
							<img class="receiving__img" src="img/pay/1.svg" alt="">
							<img class="receiving__img" src="img/pay/2.svg" alt="">
							<img class="receiving__img" src="img/pay/3.svg" alt="">
							<img class="receiving__img" src="img/pay/4.svg" alt="">
							<img class="receiving__img" src="img/pay/5.svg" alt="">
							<img class="receiving__img" src="img/pay/6.svg" alt="">
						</div>
					</div>
				</div>
				<div class="company">
					<div class="company__head">
						<img src="img/cmp/4.png" alt="" class="company__logo">
						<div class="company__rating">
							<h6 class="company__rating-title">Рейтинг</h6>
							<div class="company__rating-stars">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="company__rating-amount">4.6</span>
						</div>
					</div>
					<div class="company__text">
						<h3 class="company__name">Moneza</h3>
						<table class="company__table">
							<thead>
								<tr>
									<td>На срок / дней </td>
									<td>Сумма / дней</td>
									<td>Ставка/в день</td>
									<td>Рассмотрение</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5 - 126</td>
									<td>50 000</td>
									<td>0,76%</td>
									<td>1 минута</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="company__btn btn">Получить займ</a>
						<div class="company__receiving">
							<span>Способ получения</span>
							<img class="receiving__img" src="img/pay/1.svg" alt="">
							<img class="receiving__img" src="img/pay/2.svg" alt="">
							<img class="receiving__img" src="img/pay/3.svg" alt="">
							<img class="receiving__img" src="img/pay/4.svg" alt="">
							<img class="receiving__img" src="img/pay/5.svg" alt="">
							<img class="receiving__img" src="img/pay/6.svg" alt="">
						</div>
					</div>
				</div>
				<div class="company">
					<div class="company__head">
						<img src="img/cmp/5.png" alt="" class="company__logo">
						<div class="company__rating">
							<h6 class="company__rating-title">Рейтинг</h6>
							<div class="company__rating-stars">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="company__rating-amount">4.6</span>
						</div>
					</div>
					<div class="company__text">
						<h3 class="company__name">OneClickMoney</h3>
						<table class="company__table">
							<thead>
								<tr>
									<td>На срок / дней </td>
									<td>Сумма / дней</td>
									<td>Ставка/в день</td>
									<td>Рассмотрение</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5 - 126</td>
									<td>50 000</td>
									<td>0,76%</td>
									<td>1 минута</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="company__btn btn">Получить займ</a>
						<div class="company__receiving">
							<span>Способ получения</span>
							<img class="receiving__img" src="img/pay/1.svg" alt="">
							<img class="receiving__img" src="img/pay/2.svg" alt="">
							<img class="receiving__img" src="img/pay/3.svg" alt="">
							<img class="receiving__img" src="img/pay/4.svg" alt="">
							<img class="receiving__img" src="img/pay/5.svg" alt="">
							<img class="receiving__img" src="img/pay/6.svg" alt="">
						</div>
					</div>
				</div>
				<div class="company">
					<div class="company__head">
						<img src="img/cmp/6.png" alt="" class="company__logo">
						<div class="company__rating">
							<h6 class="company__rating-title">Рейтинг</h6>
							<div class="company__rating-stars">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="company__rating-amount">4.6</span>
						</div>
					</div>
					<div class="company__text">
						<h3 class="company__name">ЗАНИМАЛО</h3>
						<table class="company__table">
							<thead>
								<tr>
									<td>На срок / дней </td>
									<td>Сумма / дней</td>
									<td>Ставка/в день</td>
									<td>Рассмотрение</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5 - 126</td>
									<td>50 000</td>
									<td>0,76%</td>
									<td>1 минута</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="company__btn btn">Получить займ</a>
						<div class="company__receiving">
							<span>Способ получения</span>
							<img class="receiving__img" src="img/pay/1.svg" alt="">
							<img class="receiving__img" src="img/pay/2.svg" alt="">
							<img class="receiving__img" src="img/pay/3.svg" alt="">
							<img class="receiving__img" src="img/pay/4.svg" alt="">
							<img class="receiving__img" src="img/pay/5.svg" alt="">
							<img class="receiving__img" src="img/pay/6.svg" alt="">
						</div>
					</div>
				</div>
				<div class="company">
					<div class="company__head">
						<img src="img/cmp/7.png" alt="" class="company__logo">
						<div class="company__rating">
							<h6 class="company__rating-title">Рейтинг</h6>
							<div class="company__rating-stars">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="company__rating-amount">4.6</span>
						</div>
					</div>
					<div class="company__text">
						<h3 class="company__name">Metrocredit</h3>
						<table class="company__table">
							<thead>
								<tr>
									<td>На срок / дней </td>
									<td>Сумма / дней</td>
									<td>Ставка/в день</td>
									<td>Рассмотрение</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5 - 126</td>
									<td>50 000</td>
									<td>0,76%</td>
									<td>1 минута</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="company__btn btn">Получить займ</a>
						<div class="company__receiving">
							<span>Способ получения</span>
							<img class="receiving__img" src="img/pay/1.svg" alt="">
							<img class="receiving__img" src="img/pay/2.svg" alt="">
							<img class="receiving__img" src="img/pay/3.svg" alt="">
							<img class="receiving__img" src="img/pay/4.svg" alt="">
							<img class="receiving__img" src="img/pay/5.svg" alt="">
							<img class="receiving__img" src="img/pay/6.svg" alt="">
						</div>
					</div>
				</div>
				<div class="company">
					<div class="company__head">
						<img src="img/cmp/8.png" alt="" class="company__logo">
						<div class="company__rating">
							<h6 class="company__rating-title">Рейтинг</h6>
							<div class="company__rating-stars">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="company__rating-amount">4.6</span>
						</div>
					</div>
					<div class="company__text">
						<h3 class="company__name">oMoney</h3>
						<table class="company__table">
							<thead>
								<tr>
									<td>На срок / дней </td>
									<td>Сумма / дней</td>
									<td>Ставка/в день</td>
									<td>Рассмотрение</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5 - 126</td>
									<td>50 000</td>
									<td>0,76%</td>
									<td>1 минута</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="company__btn btn">Получить займ</a>
						<div class="company__receiving">
							<span>Способ получения</span>
							<img class="receiving__img" src="img/pay/1.svg" alt="">
							<img class="receiving__img" src="img/pay/2.svg" alt="">
							<img class="receiving__img" src="img/pay/3.svg" alt="">
							<img class="receiving__img" src="img/pay/4.svg" alt="">
							<img class="receiving__img" src="img/pay/5.svg" alt="">
							<img class="receiving__img" src="img/pay/6.svg" alt="">
						</div>
					</div>
				</div>
				<div class="company">
					<div class="company__head">
						<img src="img/cmp/9.png" alt="" class="company__logo">
						<div class="company__rating">
							<h6 class="company__rating-title">Рейтинг</h6>
							<div class="company__rating-stars">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="company__rating-amount">4.6</span>
						</div>
					</div>
					<div class="company__text">
						<h3 class="company__name">Лига Денег</h3>
						<table class="company__table">
							<thead>
								<tr>
									<td>На срок / дней </td>
									<td>Сумма / дней</td>
									<td>Ставка/в день</td>
									<td>Рассмотрение</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5 - 126</td>
									<td>50 000</td>
									<td>0,76%</td>
									<td>1 минута</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="company__btn btn">Получить займ</a>
						<div class="company__receiving">
							<span>Способ получения</span>
							<img class="receiving__img" src="img/pay/1.svg" alt="">
							<img class="receiving__img" src="img/pay/2.svg" alt="">
							<img class="receiving__img" src="img/pay/3.svg" alt="">
							<img class="receiving__img" src="img/pay/4.svg" alt="">
							<img class="receiving__img" src="img/pay/5.svg" alt="">
							<img class="receiving__img" src="img/pay/6.svg" alt="">
						</div>
					</div>
				</div>
				<div class="company">
					<div class="company__head">
						<img src="img/cmp/10.png" alt="" class="company__logo">
						<div class="company__rating">
							<h6 class="company__rating-title">Рейтинг</h6>
							<div class="company__rating-stars">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="company__rating-amount">4.6</span>
						</div>
					</div>
					<div class="company__text">
						<h3 class="company__name">VIVA Деньги</h3>
						<table class="company__table">
							<thead>
								<tr>
									<td>На срок / дней </td>
									<td>Сумма / дней</td>
									<td>Ставка/в день</td>
									<td>Рассмотрение</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5 - 126</td>
									<td>50 000</td>
									<td>0,76%</td>
									<td>1 минута</td>
								</tr>
							</tbody>
						</table>
						<a href="#" class="company__btn btn">Получить займ</a>
						<div class="company__receiving">
							<span>Способ получения</span>
							<img class="receiving__img" src="img/pay/1.svg" alt="">
							<img class="receiving__img" src="img/pay/2.svg" alt="">
							<img class="receiving__img" src="img/pay/3.svg" alt="">
							<img class="receiving__img" src="img/pay/4.svg" alt="">
							<img class="receiving__img" src="img/pay/5.svg" alt="">
							<img class="receiving__img" src="img/pay/6.svg" alt="">
						</div>
					</div>
				</div>
				<h2>Единая заявка во все банки:</h2>
				<form class="double-form blue-form">
					<div class="double-form__item">
						<input type="text" placeholder="Имя">
						<input type="tel" placeholder="Телефон">
						<input type="email" placeholder="Email">
					</div>
					<div class="double-form__item">
						<input type="text" placeholder="Сумма">
						<input type="tel" placeholder="Срок кредитования">
						<button class="btn_block">Получить займ</button>
					</div>
				</form>
				<h2>Полезная информация</h2>
				<div class="blog">
					<div class="post-loop">
						<a href="post.php" class="block-link"></a>
						<img src="img/post/1.jpg" alt="" class="post-loop__img">
						<div class="post-loop__content">
							<h5 class="post-loop__title">Займы онлайн и другие способы решения проблем с деньгами </h5>
							<p class="post-loop__text">Готовясь к поездке за рубеж, необходимо захватить с собой достаточное количество наличных, банковскую карту. Путешественники также часто оформляют займы онлайн, чтобы запастись деньгами для отдыха.</p>
							<div class="post-loop__tools">
								<div class="post-loop__char">
									<i class="icon-eye"></i>
									<span>105</span>
								</div>
								<div class="post-loop__char">
									<i class="fa-comment-o fa-flip-horizontal"></i>
									<span>5</span>
								</div>
								<div class="post-loop__date">16 ноября 2017</div>
							</div>
						</div>
					</div>
					<div class="post-loop">
						<a href="post.php" class="block-link"></a>
						<img src="img/post/2.jpg" alt="" class="post-loop__img">
						<div class="post-loop__content">
							<h5 class="post-loop__title">Займы онлайн: причины и виды реструктуризации долгов</h5>
							<p class="post-loop__text">Оформление микрокредитов онлайн не только помогает решать проблемы, но и налагает ответственность, ведь заемщик обязуется вовремя выполнить обязательства. Однако обстоятельства иногда вынуждают «растягивать удовольствие». На языке финансистов это называется реструктуризацией долга. Воспользоваться возможностью не увязнуть в штрафах и получить передышку могут клиенты банков и МФО.</p>
							<div class="post-loop__tools">
								<div class="post-loop__char">
									<i class="icon-eye"></i>
									<span>105</span>
								</div>
								<div class="post-loop__char">
									<i class="fa-comment-o fa-flip-horizontal"></i>
									<span>5</span>
								</div>
								<div class="post-loop__date">16 ноября 2017</div>
							</div>
						</div>
					</div>
					<div class="post-loop">
						<a href="post.php" class="block-link"></a>
						<img src="img/post/3.jpg" alt="" class="post-loop__img">
						<div class="post-loop__content">
							<h5 class="post-loop__title">Займы онлайн, кредитная история и трудоустройство</h5>
							<p class="post-loop__text">Оформляя кредиты в банках или займы онлайн в МФО, всегда своевременно погашайте задолженность перед финансовыми организациями, чтобы не испортить кредитную историю. Это необходимо делать не только для беспроблемного оформления ссуд в будущем. Кредитную историю людей изучают работодатели, оценивая их надежность. Имея долги или прослыв злостным неплательщиком, вы вряд ли получите хорошую должность.</p>
							<div class="post-loop__tools">
								<div class="post-loop__char">
									<i class="icon-eye"></i>
									<span>105</span>
								</div>
								<div class="post-loop__char">
									<i class="fa-comment-o fa-flip-horizontal"></i>
									<span>5</span>
								</div>
								<div class="post-loop__date">16 ноября 2017</div>
							</div>
						</div>
					</div>
					<div class="post-loop">
						<a href="post.php" class="block-link"></a>
						<img src="img/post/4.jpg" alt="" class="post-loop__img">
						<div class="post-loop__content">
							<h5 class="post-loop__title">Оформить микрокредит онлайн или одолжить деньги ?</h5>
							<p class="post-loop__text">Если вам срочно потребовались деньги, оформите микрокредит на карту, обратившись в надежную МФО. Конечно, вы можете прибегнуть к помощи друзей или знакомых, но зачем лишний раз их беспокоить? К тому же, попросив что-то у человека, вы будете ему обязаны, а дополнительная нагрузка никому не идет на пользу.</p>
							<div class="post-loop__tools">
								<div class="post-loop__char">
									<i class="icon-eye"></i>
									<span>105</span>
								</div>
								<div class="post-loop__char">
									<i class="fa-comment-o fa-flip-horizontal"></i>
									<span>5</span>
								</div>
								<div class="post-loop__date">16 ноября 2017</div>
							</div>
						</div>
					</div>
					<div class="post-loop">
						<a href="post.php" class="block-link"></a>
						<img src="img/post/5.jpg" alt="" class="post-loop__img">
						<div class="post-loop__content">
							<h5 class="post-loop__title">Помогаем студентам оформить хорошую кредитную историю</h5>
							<p class="post-loop__text">Студенческая жизнь полна искушений, а денег вечно не хватает. Займы онлайн помогают в осуществлении планов: благодаря им молодые люди позволяют себе поход на вечеринку или дорогостоящую покупку Микрокредитование в МФО избавляет от необходимости просить деньги у родителей и способствует формированию финансовой грамотности.</p>
							<div class="post-loop__tools">
								<div class="post-loop__char">
									<i class="icon-eye"></i>
									<span>105</span>
								</div>
								<div class="post-loop__char">
									<i class="fa-comment-o fa-flip-horizontal"></i>
									<span>5</span>
								</div>
								<div class="post-loop__date">16 ноября 2017</div>
							</div>
						</div>
					</div>
					<div class="post-loop">
						<a href="post.php" class="block-link"></a>
						<img src="img/post/6.jpg" alt="" class="post-loop__img">
						<div class="post-loop__content">
							<h5 class="post-loop__title">Как взять займ онлайн: расчет максимальной величины ссуды</h5>
							<p class="post-loop__text">Решая финансовые трудности, люди чаще обращаются в МФО, а не в банки. Микрофинансовые организации, выдающие займы онлайн, не выдвигают к заемщикам жестких требований. Они не требуют от клиентов подготовки большого пакета документов, предоставления залога. В МФО можно оформлять ссуды, не превышающие 1 миллиона рублей. Как же рассчитать оптимальную величину займа, чтобы дожить до зарплаты, а затем без проблем погасить задолженность?</p>
							<div class="post-loop__tools">
								<div class="post-loop__char">
									<i class="icon-eye"></i>
									<span>105</span>
								</div>
								<div class="post-loop__char">
									<i class="fa-comment-o fa-flip-horizontal"></i>
									<span>5</span>
								</div>
								<div class="post-loop__date">16 ноября 2017</div>
							</div>
						</div>
					</div>
					<div class="post-loop">
						<a href="post.php" class="block-link"></a>
						<img src="img/post/7.jpg" alt="" class="post-loop__img">
						<div class="post-loop__content">
							<h5 class="post-loop__title">Возможные варианты получения микрокредита иностранцами</h5>
							<p class="post-loop__text">Проживание в другой стране часто требует расходов, которые покрывают кредитные средства. Займы онлайн для нерезидентов имеют особенности, порядок получения денег отличается от правил для граждан. Это обстоятельство рекомендуется учитывать при обращении в финансовые учреждения за ссудами.</p>
							<div class="post-loop__tools">
								<div class="post-loop__char">
									<i class="icon-eye"></i>
									<span>105</span>
								</div>
								<div class="post-loop__char">
									<i class="fa-comment-o fa-flip-horizontal"></i>
									<span>5</span>
								</div>
								<div class="post-loop__date">16 ноября 2017</div>
							</div>
						</div>
					</div>
					<div class="post-loop">
						<a href="post.php" class="block-link"></a>
						<img src="img/post/8.jpg" alt="" class="post-loop__img">
						<div class="post-loop__content">
							<h5 class="post-loop__title">Как оформлять микрозаймы без отказа?</h5>
							<p class="post-loop__text">Микрофинансовые организации лояльно относятся к клиентам и редко отказывают им в выдаче ссуд, но все же такое случается. Как же оформлять микрозаймы без отказа? Давайте попробуем разобраться в этом  вопросе. Указание правдивых сведений в анкете</p>
							<div class="post-loop__tools">
								<div class="post-loop__char">
									<i class="icon-eye"></i>
									<span>105</span>
								</div>
								<div class="post-loop__char">
									<i class="fa-comment-o fa-flip-horizontal"></i>
									<span>5</span>
								</div>
								<div class="post-loop__date">16 ноября 2017</div>
							</div>
						</div>
					</div>
					<div class="post-loop">
						<a href="post.php" class="block-link"></a>
						<img src="img/post/1.jpg" alt="" class="post-loop__img">
						<div class="post-loop__content">
							<h5 class="post-loop__title">Как мошенники обманывают доверчивых россиян</h5>
							<p class="post-loop__text">Изящное ремесло мошенничества состоит в том, чтобы незаметно лишить вполне внимательного человека его кровных. Займы онлайн также находятся в поле зрения злоумышленников и служат источником данных о гражданах. С развитием высоких технологий методы обмана становятся более изощренными: преступники идут в ногу со временем и осваивают новые приемы.</p>
							<div class="post-loop__tools">
								<div class="post-loop__char">
									<i class="icon-eye"></i>
									<span>105</span>
								</div>
								<div class="post-loop__char">
									<i class="fa-comment-o fa-flip-horizontal"></i>
									<span>5</span>
								</div>
								<div class="post-loop__date">16 ноября 2017</div>
							</div>
						</div>
					</div>
				</div>
				<?php if ( have_posts() ) : ?>
					<?php while ( have_posts() ) : the_post(); ?>
						
					<?php the_content(); ?>
					<?php endwhile; // End of the loop. ?>
				<?php endif; ?>
			</div>
		</div>
	</div>
</main>
<?php get_footer(); ?>