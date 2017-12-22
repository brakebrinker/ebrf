<?php get_header(); ?>
<main>
	<div class="wrapper">
		<div class="breadcrumbs">
			<a href="index.php">Главная</a>
			<i class="icon-arrow-right"></i>
			<span>Компания 1</span>
		</div>
		<div class="aside-wrapper">
			<aside class="aside_right">
				<div class="clauses">
					<div class="clause">
						<i class="clause__icon icon-early"></i>
						<span class="clause__text">Досрочное погашение</span>
					</div>
					<div class="clause">
						<i class="clause__icon icon-bag"></i>
						<span class="clause__text">Неофициальное трудоустройство</span>
					</div>
					<div class="clause">
						<i class="clause__icon icon-question"></i>
						<span class="clause__text">Плохая кредитная история</span>
					</div>
					<div class="clause">
						<i class="clause__icon icon-card"></i>
						<span class="clause__text">Нет кредитной истории</span>
					</div>
					<div class="clause">
						<i class="clause__icon icon-docs"></i>
						<span class="clause__text">Необходимые документы</span>
					</div>
					<div class="clause">
						<i class="clause__icon icon-percent"></i>
						<span class="clause__text">Процентная ставка</span>
					</div>
				</div>
				<div class="dummy"></div>
			</aside>
			<?php while ( have_posts() ) : the_post(); ?>
			<div class="page-content">					
				<div class="cmp" id="after-clauses">
					<?php if ( has_post_thumbnail()) { ?>
						<?php the_post_thumbnail(array(250, 120), array('alt' => get_the_title(),
						'class' => "cmp__img"
						)); ?>
					<?php } ?>
					<div class="cmp__text">
						<h1 class="cmp__title"><?php the_title(); ?></h1>
						<span>Обновлено <?php echo $dModified = get_the_modified_date(); ?></span>
						<div class="cmp__rating">							
							<div class="rating">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<a href="#" class="rev-link">76 отзывов</a>
							<span class="rating-number">(3.2 из 5)</span>
						</div>
						<div class="cmp__links">
							<?php the_excerpt(); ?>
						</div>
					</div>
				</div>
				<div class="cmp-block">
					<div class="cmp-block__head">
						<div class="cmp-block__head-item">
							<?php if ( has_post_thumbnail()) { ?>
								<?php the_post_thumbnail('medium', array('alt' => get_the_title(),
								'class' => "cmp-block__img"
								)); ?>
							<?php } ?>
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
						<div class="cmp-block__head-item">
							<a href="#" class="rev-link">5 отзывов</a>
						</div>
						<div class="cmp-block__head-item">
							<h6>Одобрение</h6>
							<div class="progress">
								<div class="progress__item"></div>
							</div>								
						</div>
						<div class="cmp-block__head-item">
							<span>К5М = 9.9/10</span>
						</div>
						<div class="cmp-block__head-item">
							<a href="#" class="btn btn_block">Оформить</a>
						</div>
					</div>
					<div class="cmp-block__text">
						<div class="cmp-block__top">
							<h3 class="cmp-block__title">eKaпуста</h3>
							<span>Обновлено <?php echo $dModified; ?></span>
						</div>
						<ul class="cmp__clause-list check-list">
							<?php if ($summDo = get_field('company_summ_do', get_the_ID()))
								echo '<li>' . $summDo . '</li>';

								if ($termDo = get_field('company_term_do', get_the_ID()))
								echo '<li>' . $termDo . ' дней</li>';
								
								if ($rateNum = get_field('company_interest_rate_num', get_the_ID())) {
									$rateTerm = get_field_object('company_interest_rate_term', get_the_ID());
									$ratevalue = $rateTerm['value'];
									$ratelabel = $rateTerm['choices'][ $ratevalue ];
								echo '<li>' . $rateNum . '% ' . $ratelabel . '</li>';
								}
							?>
						</ul>
						<dl class="cmp-list">
							<div class="cmp-list__item">
								<dt><i class="cmp-list__icon icon-summ"></i> <span>Сумма:</span></dt>
								<?php 
									$summOt = get_field('company_summ_ot', get_the_ID());
									echo '<dd>';
									if ($summOt) echo 'от ' . $summOt;
									if ($summDo) echo ' - ' . $summDo . ' руб.';
									echo '</dd>';
								?>
								<dt><i class="cmp-list__icon icon-calendar"></i> <span>Срок:</span></dt>
								<?php 
									$termOt = get_field('company_term_ot', get_the_ID());
									echo '<dd>';
									if ($termOt) echo 'от ' . $termOt;
									if ($termDo) echo ' до ' . $termDo . ' дней';
									echo '</dd>';
								?>
								<dt><i class="cmp-list__icon icon-percent"></i> <span>Процентная ставка (%):</span></dt>
								<?php 
									if ($rateNum) echo '<dd>' . $rateNum . '% ' . $ratelabel . '</dd>';
								?>
								<dt><i class="cmp-list__icon icon-man"></i> <span> Возраст:</span></dt>
								<?php 
									if ($age = get_field('company_age', get_the_ID())) echo '<dd> от ' . $age . ' лет</dd>';
								?>
								<?php if( have_rows('company_cashout') ): 
									$count = 0;
								?>
								<dt><i class="cmp-list__icon icon-envelope"></i> <span>Способ выплаты:</span></dt>
									<dd>
									<?php while( have_rows('company_cashout') ): the_row();
									$cashoutTitle = get_sub_field('title');
									$count++;
										if ($count == 1)
										echo $cashoutTitle; 
									endwhile; ?>
									</dd>
								Счет, карта, Золотая Корона, QIWI, Яндекс.Деньги, Contact
								<?php endif; ?>
								<dt><i class="cmp-list__icon icon-money"></i> <span>Способ оплаты:</span></dt>
								<dd>Счет, карта, Золотая Корона, QIWI, Яндекс.Деньги, Contact</dd>
								<dt><i class="cmp-list__icon icon-list"></i> <span>Год:</span></dt>
								<dd>2012</dd>
							</div>
							<div class="cmp-list__item">
								<dt><i class="cmp-list__icon icon-docs"></i> <span>Документы:</span></dt>
								<dd>Паспорт</dd>
								<dt><i class="cmp-list__icon icon-magnify"></i> <span>Скорость рассмотрения заявки:</span></dt>
								<dd>Несколько минут</dd>
								<dt><i class="cmp-list__icon icon-hand"></i> <span>Скорость выплаты:</span></dt>
								<dd>Моментально</dd>
								<dt><i class="cmp-list__icon icon-clock"></i> <span>График работы:</span></dt>
								<dd>С 7:00 до 20:00</dd>
								<dt><i class="cmp-list__icon icon-question"></i> <span>Плохая кредитная история:</span></dt>
								<dd>Да</dd>
								<dt><i class="cmp-list__icon icon-hands"></i> <span>Продление:</span></dt>
								<dd>Есть</dd>
							</div>
						</dl>
						<ul class="cmp__advan-list check-list">
							<li><span>Удобные тарифы для разных категорий клиентов</span></li>
							<li><span>Быстрое оформление в любое время суток</span></li>
							<li><span>Досрочное погашение без дополнительных комиссий</span></li>
							<li><span>Инвестиции с гибкими условиями</span></li>
							<li><span>Продлить заем можно неограниченное число раз</span></li>
						</ul>
					</div>
				</div>
				<p>еКапуста – российская микрокредитная компания. Выдает займы с 2012 года. Агентством RAEX (Эксперт) компании присвоен рейтинг надежности на уровне A. МФО входит в СРО «Мир».</p>
				<p>Займ можно оформить из любого города России через интернет. Сервис автоматически анализирует заявки и принимает решение о выдаче займа. МФО переводит деньги в любое время тем способом, который вы выбрали.</p>
				<p>еКапуста ведет деятельность на основании свидетельства о внесении в реестр микрофинансовых организаций №2120754001243, выданного Банком России 22 марта 2012 года. МФК зарегистрирована в Новосибирске. Центральный офис находится по адресу – улица Русская, дом 39.</p>
				<h2 class="left">Преимущества</h2>
				<ul>
					<li>Оформить займ можно в любое время суток – подать онлайн-заявку, получить автоматическое решение и перечислить деньги на свой счет</li>
					<li>Деньги зачисляются на карту Виза/Мастеркард, счет электронного кошелька Qiwi/Яндекс.Деньги, банковский счет или переводом через Contact/Золотая Корона</li>
					<li>Максимальная сумма займа – до 30 000 руб</li>
					<li>Погасить займ можно переводом с банковской карты, электронного кошелька или через пункты оплаты</li>
					<li>Можно продлить займ, погасив начисленные проценты</li>
				</ul>
				<h2 class="left">Как оформить заявку:</h2>
				<ul>
					<li>Задайте бегунками сумму и срок займа. Ознакомьтесь с расчетом возврата и нажмите на кнопку «Получить займ»</li>
					<li>Заполните паспортные и контактные данные. Укажите сведения о прописке и месте проживания. Нажмите на кнопку «Продолжить»</li>
					<li>Выберите тип занятости и укажите ежемесячный доход. Заполните сведения о семейном положении. Загрузите свою фотографию и скан паспорта. Нажмите «Продолжить»</li>
					<li>Дополнительно заполните данные о социальных сетях и кредитной истории</li>
				</ul>
				<h2 class="left">Отзывы</h2>
				<div class="review">
					<div class="review__head">
						<h3 class="reviewer">Елена</h3>
						<div class="review__rating">
							<div class="rating">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="rating-number">(3.2 из 5)</span>
						</div>
					</div>
					<div class="review__text">
						<span>У меня во всём доме идёт ремонт и надо за всё доплачивать за переделку, беру в компании ЕКАПУСТА займ уже второй раз и очень благодарна за понимание и поддержку, ведь кредитная история не очень хорошая, а меня поняли и одобрили с первого раза, деньги на карту приходят моментально, все вежливые. Спасибо вам огромное, что не отказываете и нет никаких звонков, приходят только на телефон напоминания когда подходит время выплатить займ, желаю вам процветания и побольше клиентов.</span>
					</div>
				</div>
				<div class="review">
					<div class="review__head">
						<h3 class="reviewer">Елена</h3>
						<div class="review__rating">
							<div class="rating">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="rating-number">(3.2 из 5)</span>
						</div>
					</div>
					<div class="review__text">
						<span>У меня во всём доме идёт ремонт и надо за всё доплачивать за переделку, беру в компании ЕКАПУСТА займ уже второй раз и очень благодарна за понимание и поддержку, ведь кредитная история не очень хорошая, а меня поняли и одобрили с первого раза, деньги на карту приходят моментально, все вежливые. Спасибо вам огромное, что не отказываете и нет никаких звонков, приходят только на телефон напоминания когда подходит время выплатить займ, желаю вам процветания и побольше клиентов.</span>
					</div>
				</div>
				<div class="review">
					<div class="review__head">
						<h3 class="reviewer">Елена</h3>
						<div class="review__rating">
							<div class="rating">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="rating-number">(3.2 из 5)</span>
						</div>
					</div>
					<div class="review__text">
						<span>У меня во всём доме идёт ремонт и надо за всё доплачивать за переделку, беру в компании ЕКАПУСТА займ уже второй раз и очень благодарна за понимание и поддержку, ведь кредитная история не очень хорошая, а меня поняли и одобрили с первого раза, деньги на карту приходят моментально, все вежливые. Спасибо вам огромное, что не отказываете и нет никаких звонков, приходят только на телефон напоминания когда подходит время выплатить займ, желаю вам процветания и побольше клиентов.</span>
					</div>
				</div>
				<div class="review">
					<div class="review__head">
						<h3 class="reviewer">Елена</h3>
						<div class="review__rating">
							<div class="rating">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="rating-number">(3.2 из 5)</span>
						</div>
					</div>
					<div class="review__text">
						<span>У меня во всём доме идёт ремонт и надо за всё доплачивать за переделку, беру в компании ЕКАПУСТА займ уже второй раз и очень благодарна за понимание и поддержку, ведь кредитная история не очень хорошая, а меня поняли и одобрили с первого раза, деньги на карту приходят моментально, все вежливые. Спасибо вам огромное, что не отказываете и нет никаких звонков, приходят только на телефон напоминания когда подходит время выплатить займ, желаю вам процветания и побольше клиентов.</span>
					</div>
				</div>
				<div class="review">
					<div class="review__head">
						<h3 class="reviewer">Елена</h3>
						<div class="review__rating">
							<div class="rating">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<span class="rating-number">(3.2 из 5)</span>
						</div>
					</div>
					<div class="review__text">
						<span>У меня во всём доме идёт ремонт и надо за всё доплачивать за переделку, беру в компании ЕКАПУСТА займ уже второй раз и очень благодарна за понимание и поддержку, ведь кредитная история не очень хорошая, а меня поняли и одобрили с первого раза, деньги на карту приходят моментально, все вежливые. Спасибо вам огромное, что не отказываете и нет никаких звонков, приходят только на телефон напоминания когда подходит время выплатить займ, желаю вам процветания и побольше клиентов.</span>
					</div>
				</div>
				<h2>Оставить отзыв</h2>
				<form action="#" class="review-form">
					<div class="review-form__rating">
						<span>Рейтинг: </span>
						<div class="rating">
							<i class="fa-star"></i>
							<i class="fa-star"></i>
							<i class="fa-star"></i>
							<i class="fa-star"></i>
							<i class="fa-star"></i>
						</div>
						<span class="rating-number">(3.2 из 5)</span>
					</div>
					<input type="text" name="username" class="block" placeholder="Ваше имя" />
					<textarea name="review" class="block" rows="6" placeholder="Введите ваш отзыв" ></textarea>
					<div class="review-form__details">
						<textarea name="positive" class="positive" rows="6" placeholder="Плюсы"></textarea>
						<textarea name="negative" class="negative" rows="6" placeholder="Минусы"></textarea>
					</div>
					<button type="submit" class="btn_big">Отправить отзыв</button>
				</form>
			</div>
			<?php endwhile; ?>
		</div>
	</div>
</main>
<?php get_footer(); ?>