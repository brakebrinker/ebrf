<?php 
/*
Template Name: Шаблон Блог
*/
?>
<?php get_header(); ?>
	<main>
		<div class="wrapper">
			<div class="breadcrumbs">
				<a href="index.php">Главная</a>
				<i class="icon-arrow-right"></i>
				<span>Статьи</span>
			</div>
			<div class="aside-wrapper">
				<aside class="aside_right">
					<div class="post-nav">
						<h4 class="post-nav__title">Разделы статей</h4>
						<a href="#" class="post-nav__link">
							<span>Все статьи</span>
							<span class="post-nav__amount">10</span>
						</a>
						<a href="#" class="post-nav__link">
							<span>Полезные статьи</span>
							<span class="post-nav__amount">20</span>
						</a>
						<a href="#" class="post-nav__link">
							<span>Новости партнеров</span>
							<span class="post-nav__amount">30</span>
						</a>
					</div>
					<div class="dummy"></div>
				</aside>

				<div class="page-content">
					<?php while( have_posts() ){ 
						the_post();  ?>
						<?php the_content(); ?>
					<?php } ?>
					<?php 
					$paged = get_query_var( 'paged' ) ? get_query_var( 'paged' ) : 1;
					$args = array(
						'post_type' => 'post',
						'posts_per_page' => get_option('posts_per_page'),
						'post_status' => 'publish',
						'paged' => $paged,
					);
					query_posts($args);
					?>
					<?php if ( have_posts() ) : ?>
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
					<div class="pagination">
						<a href="#" class="pagination__item"><</a>
						<a href="#" class="pagination__item active">1</a>
						<a href="#" class="pagination__item">2</a>
						<a href="#" class="pagination__item">3</a>
						<a href="#" class="pagination__item">4</a>
						<a href="#" class="pagination__item">5</a>
						<a href="#" class="pagination__item">6</a>
						<a href="#" class="pagination__item">7</a>
						<a href="#" class="pagination__item">8</a>
						<a href="#" class="pagination__item">9</a>
						<a href="#" class="pagination__item">10</a>
						<span class="pagination__item">...</span>
						<a href="" class="pagination__item next">Следующая ></a>
					</div>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</main>
<?php get_footer(); ?>