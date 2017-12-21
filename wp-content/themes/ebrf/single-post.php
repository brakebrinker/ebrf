<?php get_header(); ?>
	<main>
		<div class="wrapper">
			<div class="breadcrumbs">
				<a href="index.php">Главная</a>
				<i class="icon-arrow-right"></i>
				<a href="blog.php">Статьи</a>
				<i class="icon-arrow-right"></i>
				<span>Статья</span>
			</div>
			<div class="aside-wrapper">
				<aside class="aside_right">
					<div class="dummy"></div>
				</aside>
				<div class="page-content">
					<?php while ( have_posts() ) : the_post(); ?>

					<?php if ( has_post_thumbnail()) { ?>
						<?php the_post_thumbnail(array(270, 220), array('alt' => get_the_title(),
						'class' => "post-img"
						)); ?>
					<?php } ?>
					<p class="post-date"><?php the_date(); ?></p>
					<h1><?php the_title(); ?></h1>
					<?php the_content(); ?>
					<?php endwhile;?>
					<div class="post-tools">
						<div class="post-tools__item">							
							<?php if(function_exists('the_ratings')) { the_ratings(); } ?>
						</div>					
						<div class="ya-share2" data-services="facebook,gplus,twitter,linkedin,vkontakte,odnoklassniki" data-counter=""></div>
					</div>
					<h2>Комментарии</h2>
					<?php 
					$defaults = array(
						'fields' => array(
						'author' => '<input id="author" name="author" type="text" value="' . esc_attr( $commenter['comment_author'] ) . '"  class="block" placeholder="Ваше имя"' . $aria_req . $html_req . ' />'
						),
						'comment_field'        => '<textarea id="comment" name="comment"  rows="6" class="block" placeholder="Введите ваш комментарий"  aria-required="true" required="required"></textarea>',
						'submit_button'        => '<button name="%1$s" type="submit"  id="%2$s" class="btn_big %3$s">%4$s</button>',
						'title_reply'          => __( '' ),
						'comment_notes_before' => ''
					); ?>
					<?php 
					$argss = array(
						'author_email'        => '',
						'author__in'          => '',
						'author__not_in'      => '',
						'include_unapproved'  => '',
						'fields'              => '',
						'comment__in'         => '',
						'comment__not_in'     => '',
						'karma'               => '',
						'number'              => '',
						'offset'              => '',
						'no_found_rows'       => true,
						'orderby'             => '',
						'order'               => 'DESC',
						'parent'              => '',
						'post_author__in'     => '',
						'post_author__not_in' => '',
						'post_id'             => get_queried_object_id(),
						'post__in'            => '',
						'post__not_in'        => '',
						'post_author'         => '',
						'post_name'           => '',
						'post_parent'         => '',
						'post_status'         => '',
						'post_type'           => '',
						'status'              => 'all',
						'type'                => '',
						'type__in'            => '',
						'type__not_in'        => '',
						'user_id'             => '',
						'search'              => '',
						'count'               => false,
						'meta_key'            => '',
						'meta_value'          => '',
						'meta_query'          => '',
						'date_query'          => null, // See WP_Date_Query
						'hierarchical'        => false,
						'update_comment_meta_cache'  => true,
						'update_comment_post_cache'  => false,
					);
					?>
					<?php comment_form($defaults); ?>
					<?php
						$arrComment = array(
							'walker'            => null,
							'max_depth'         => '',
							'style'             => 'ul',
							'callback'          => null,
							'end-callback'      => null,
							'type'              => 'all',
							'reply_text'        => 'Ответить',
							'page'              => '',
							'per_page'          => 0,
							'avatar_size'       => 0,
							'reverse_top_level' => null,
							'reverse_children'  => '',
							'format'            => 'html5', // или xhtml, если HTML5 не поддерживается темой
							'short_ping'        => false,    // С версии 3.6,
							'echo'              => true,     // true или false
						);
					?>
					<ul class="comments">
					<?php wp_list_comments($arrComment, get_comments($argss)); ?>
					</ul>
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
					<?php echo do_shortcode('[contact-form-7 id="14" title="Единая заявка во все банки" html_class="double-form blue-form"]');  ?>
					<h2>Похожие статьи</h2>
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
					</div>
				</div>
			</div>
		</div>
	</main>
<?php get_footer(); ?>