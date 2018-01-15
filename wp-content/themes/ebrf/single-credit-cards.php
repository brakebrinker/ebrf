<?php
/* Define these, So that WP functions work inside this file */
define('WP_USE_THEMES', false);
require( $_SERVER['DOCUMENT_ROOT'] .'/wp-blog-header.php');
require_once "recaptchalib.php";

//секретный ключ
$secret = "6Lc4OysUAAAAAHBpMBV1V98hXsZOaUWJIiLcXlGN";
//ответ
$response = null;
//проверка секретного ключа
$reCaptcha = new ReCaptcha($secret);
?>
<?php get_header(); ?>
<main>
	<div class="wrapper">
		<?php
		if ( function_exists('yoast_breadcrumb') ) {
		yoast_breadcrumb('
		<div class="breadcrumbs" id="breadcrumbs">','</div>
		');
		}
		?>
		<?php
		if (!empty($_POST)) {
 
			if ($_POST["g-recaptcha-response"]) {
				$response = $reCaptcha->verifyResponse(
					$_SERVER["REMOTE_ADDR"],
					$_POST["g-recaptcha-response"]
				);
			}
			if ($response != null && $response->success) {
				$method = $_SERVER['REQUEST_METHOD'];

				if ( $method === 'POST' ) {

					$post_type = 'review';

					$post_title = $_POST['review-title'] . ' ' . $_POST['review-username'];
					$post_content = $_POST['review-text'];
					$post_name = $_POST['review-username'];
					$post_positive = $_POST['review-positive'];
					$post_negative = $_POST['review-negative'];
					$post_rate = $_POST['review-rate'] == 0 ? '5' : $_POST['review-rate'];
					$post_source = $_POST['review-url'];
					$post_company_id = (int) $_POST['review-company-id'];

					$new_post = array(
						'ID' => '',
						'post_author' => $user->ID,
						'post_type' => $post_type,
						'post_content' => $post_content,
						'post_title' => wp_strip_all_tags($post_title),
						'post_status' => 'pending'
					);

					$post_id = wp_insert_post($new_post);

					if( is_wp_error($post_id) ){ ?>
		<div class="msg-error msg-time-hide">Ошибка добавления отзыва</div>
		<?php } else {
						update_field('review_author_name', $post_name, $post_id);
						update_field('review_plus', $post_positive, $post_id);
						update_field('review_minus', $post_negative, $post_id);
						update_field('review_company_id', $post_company_id, $post_id);
						update_post_meta($post_id, 'ratings_average', $post_rate);
						update_post_meta($post_id, 'ratings_score', $post_rate);
						update_post_meta($post_id, 'ratings_users', 1); 
		?>
		<div class="msg-success msg-time-hide">Ваш отзыв отправлен на модерацию.</div>
		<?php 
					}
					// wp_redirect($post_source);
					// exit;
				}
			} else {
				echo '<div class="msg-error msg-time-hide">Ваш отзыв не отправлен! Вы точно человек?</div>';
			}
		}
		?>
		<?php
		$argsReview = array(
			'numberposts' => 0,
			'meta_key'    => 'review_company_id',
			'meta_value'  => get_the_ID(),
			'post_type'   => 'review',
		);

		$reviews = get_posts( $argsReview );
		$summRate = 0;
		$userRate = 0;
		
		foreach ($reviews as $post) {  setup_postdata($post);
			if(function_exists('the_ratings')) { 
				$summRate = $summRate + expand_ratings_template('%RATINGS_AVERAGE%', get_the_ID()); 
				$userRate = $userRate + expand_ratings_template('%RATINGS_USERS%', get_the_ID()); 
			}
		}
		if ($summRate != 0 && $userRate != 0) {
			$avgRate = round($summRate / $userRate, 2);
		} else {
			$avgRate = 0;
		}
		wp_reset_postdata();

		update_post_meta(get_the_ID(), 'ratings_average', $avgRate);
		update_post_meta(get_the_ID(), 'ratings_score', $avgRate);
		update_post_meta(get_the_ID(), 'ratings_users', $userRate); 
		?>
		<div class="aside-wrapper">
			<aside class="aside_right">
				<?php get_template_part( 'templates/info', 'points' ); ?>
				<?php if (!dynamic_sidebar("company-widget-area") ) : ?> 
				<div class="dummy"></div>
				<?php endif; ?>
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
							<?php if(function_exists('the_ratings')) { echo expand_ratings_template('%RATINGS_IMAGES% <a href="#reviews-block" class="rev-link">%RATINGS_USERS% отзывов</a><span class="rating-number"> (%RATINGS_AVERAGE% из %RATINGS_MAX%)</span>', get_the_ID()); } ?>
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
									<?php if(function_exists('the_ratings')) { echo expand_ratings_template('%RATINGS_IMAGES%', get_the_ID()); } ?>
								</div>
								<span class="company__rating-amount"><?php if(function_exists('the_ratings')) { echo expand_ratings_template('%RATINGS_AVERAGE%', get_the_ID()); } ?></span>
							</div>
						</div>
						<div class="cmp-block__head-item">
							<a href="#reviews-block" class="rev-link"><?php if(function_exists('the_ratings')) { echo expand_ratings_template('%RATINGS_USERS% отзывов', get_the_ID()); } ?></a>
						</div>
						<div class="cmp-block__head-item">
							<a href="#" class="btn btn_block">Оформить</a>
						</div>
					</div>
					<div class="cmp-block__text">
						<div class="cmp-block__top">
							<h3 class="cmp-block__title"><?php the_title(); ?></h3>
							<span>Обновлено <?php echo $dModified; ?></span>
                        </div>
                        <ul class="cmp__clause-list check-list">
							<?php if ($maxlim = get_field('company_card_maxlim', get_the_ID()))
								echo '<li>' . $maxlim . '</li>';

								if ($nopercent = get_field('company_no_percent_termin', get_the_ID()))
								echo '<li>' . $nopercent . ' дней</li>';
								
								if ($rateNumFrom = get_field('company_interest_rate_num_from', get_the_ID())) {
									$rateTerm = get_field_object('company_interest_rate_term', get_the_ID());
									$ratevalue = $rateTerm['value'];
									$ratelabel = $rateTerm['choices'][ $ratevalue ];
								echo '<li>от ' . $rateNumFrom . '% ' . $ratelabel . '</li>';
								}
							?>
						</ul>
						<dl class="cmp-list">
							<div class="cmp-list__item">
								<?php
								if ($maxlim) {
								?>
								<dt><i class="cmp-list__icon icon-summ"></i> <span>Максимальный лимит:</span></dt>
								<?php 
									echo '<dd>'.$maxlim.' руб.</dd>';
								}
								?>

								<?php $rateNumTo = get_field('company_interest_rate_num_to', get_the_ID());
								if ($rateNumFrom || $rateNumTo) {
								?>
								<dt><i class="cmp-list__icon icon-percent"></i> <span>Процентная ставка (%):</span></dt>
								<?php 
									echo '<dd>';
									if ($rateNumFrom) echo 'от ' . $rateNumFrom . ' %';
									if ($rateNumTo) echo ' до ' . $rateNumTo . ' %';
									echo  ' ' . $ratelabel . '</dd>';
								}
								?>

								<?php if ($nopercent) { ?>
								<dt><i class="cmp-list__icon icon-list"></i> <span>Беспроцентный период:</span></dt>
								<?php 
									echo '<dd>' . $nopercent . ' дней</dd>';
								}
                                ?>
                                
                                <?php 
                                    $openCard = get_field('company_open_card', get_the_ID());
                                    if ($openCard == 0) {
                                        $openCard = 0;
                                    } 
                                if ($openCard >= 0) {
                                ?>
								<dt><i class="cmp-list__icon icon-hand"></i> <span>Открытие:</span></dt>
								<dd><?php echo $openCard .' руб.</dd>'; ?></dd>
                                <?php } ?>
                                
                                <?php if ($maintenanceCard = get_field('company_maintenance_card', get_the_ID())) { ?>
								<dt><i class="cmp-list__icon icon-hand"></i> <span>Обслуживание:</span></dt>
								<dd><?php echo $maintenanceCard .' руб.</dd>'; ?></dd>
                                <?php } ?>
                                
                                <?php 
                                $ageFrom = get_field('company_age_from', get_the_ID());
                                $ageTo = get_field('company_age_to', get_the_ID());
                                
                                if ($ageFrom || $ageTo) { ?>
								<dt><i class="cmp-list__icon icon-man"></i> <span> Возраст:</span></dt>
								<?php 
									echo '<dd>';
									if ($ageFrom) echo 'от ' . $ageFrom;
									if ($ageTo) echo ' - ' . $ageTo . ' лет.';
									echo '</dd>';
                                }
                                ?>







								<?php if ($age = get_field('company_age', get_the_ID())) { ?>
								<dt><i class="cmp-list__icon icon-man"></i> <span> Возраст:</span></dt>
								<?php 
									echo '<dd> от ' . $age . ' лет</dd>';
								}
								?>

								<?php if( $cashouts = get_field('company_cashout', get_the_ID()) ): ?>
								<dt><i class="cmp-list__icon icon-envelope"></i> <span>Способ выплаты:</span></dt>
								<dd>
								<?php foreach( $cashouts as $cashout ): 
								$thisterm = get_term( $cashout, 'waystopay' );
									echo '<span class="cash-in-out-title">' . $thisterm->name . '</span>'; 
								endforeach; ?>
								</dd>
								<?php endif; ?>

								<?php if( $cashins = get_field('company_cashin', get_the_ID()) ): ?>
								<dt><i class="cmp-list__icon icon-money"></i> <span>Способ оплаты:</span></dt>
								<dd><?php foreach( $cashins as $cashin ): 
								$thisterm = get_term( $cashin, 'waystopay' );
									echo '<span class="cash-in-out-title">' . $thisterm->name . '</span>'; 
								endforeach; ?>
								</dd>
								<?php endif; ?>

								<?php if ($year = get_field('company_year', get_the_ID())) { ?>
								<dt><i class="cmp-list__icon icon-list"></i> <span>Год:</span></dt>
								<dd><?php echo $year; ?></dd>
								<?php } ?>
							</div>
							<div class="cmp-list__item">
                                <?php if ($term_speed = get_field('company_term_start', get_the_ID())) { ?>
								<dt><i class="cmp-list__icon icon-magnify"></i> <span>Срок выпуска:</span></dt>
								<dd><?php echo $term_speed; ?></dd>
                                <?php } ?>

                                <?php if ($license = get_field('company_license', get_the_ID())) { ?>
								<dt><i class="cmp-list__icon icon-docs"></i> <span>Лицензия:</span></dt>
								<dd><?php echo $license; ?></dd>
                                <?php } ?>

                                <?php if ($docs = get_field('company_docs', get_the_ID())) { ?>
								<dt><i class="cmp-list__icon icon-docs"></i> <span>Документы:</span></dt>
								<dd><?php foreach( $docs as $doc ): 
								$thisterm = get_term( $doc, 'document' );
									echo '<span class="cash-in-out-title">' . $thisterm->name . '</span>'; 
								endforeach; ?></dd>
                                <?php } ?>
                                
                                <?php if ($register = get_field('company_registry', get_the_ID())) { ?>
								<dt><i class="cmp-list__icon icon-docs"></i> <span>Регистрация:</span></dt>
								<dd><?php echo $register; ?></dd>
                                <?php } ?>
                                
                                <?php if ($additional = get_field('company_additionally', get_the_ID())) { ?>
								<dt><i class="cmp-list__icon icon-docs"></i> <span>Дополнительно:</span></dt>
								<dd><?php echo $additional; ?></dd>
                                <?php } ?>

                                <?php if ($cashback = get_field('company_cashback', get_the_ID())) { ?>
								<dt><i class="cmp-list__icon icon-hand"></i> <span>Кэшбэк:</span></dt>
								<dd><?php echo $cashback; ?></dd>
                                <?php } ?>
							</div>
						</dl>
						<?php if( have_rows('company_benefits') ): ?>
						<ul class="cmp__advan-list check-list">
							<?php while( have_rows('company_benefits') ): the_row(); 
							$company_benefit_name = get_sub_field('name');
							?>
							<li><span><?php echo $company_benefit_name; ?></span></li>
							<?php endwhile; ?>
						</ul>
						<?php endif; ?>
					</div>
				</div>
				<?php the_content(); ?>
				<?php if (!empty($reviews)) {?>
				<h2 id="reviews-block" class="left">Отзывы</h2>
				<?php 
				foreach($reviews as $post){ setup_postdata($post); ?>
				<div class="review">
					<div class="review__head">
						<h3 class="reviewer"><?php echo get_field('review_author_name', get_the_ID()); ?></h3>
						<div class="review__rating">
							<?php if(function_exists('the_ratings')) { echo expand_ratings_template('%RATINGS_IMAGES% <span class="rev-link">%RATINGS_USERS% отзывов</span><span class="rating-number"> (%RATINGS_AVERAGE% из %RATINGS_MAX%)</span>', get_the_ID()); } ?>
						</div>
					</div>
					<div class="review__text">
						<?php the_content(); ?>
                        <div class="review__text-posnegat">
							<div class="review__text-positives positive"><?php echo get_field('review_plus', get_the_ID()); ?></div>
							<div class="review__text-negatives negative"><?php echo get_field('review_minus', get_the_ID()); ?></div>
						</div>
					</div>
				</div>
				<?php }
				wp_reset_postdata();
				}
				?>
				<h2>Оставить отзыв</h2>
				<form action="" class="review-form" method="post">
					<div class="review-form__rating">
						<span>Рейтинг: </span>
						<div class="rating">
							<i class="fa-star"></i>
							<i class="fa-star"></i>
							<i class="fa-star"></i>
							<i class="fa-star"></i>
							<i class="fa-star"></i>
						</div>
						<span class="rating-number">(0)</span>
					</div>
					<input type="hidden" name="review-title" value="<?php the_title(); ?>">
					<input type="hidden" name="review-rate" id="review-rate" value="0">
					<input type="hidden" name="review-url" value="<?php the_permalink(); ?>">
					<input type="hidden" name="review-company-id" value="<?php echo get_the_ID(); ?>">
					<input type="text" name="review-username" class="block" placeholder="Ваше имя" <?php $current_user = wp_get_current_user(); if (is_user_logged_in()) echo 'value="' . $current_user->user_login . '"'; ?> required />
					<textarea name="review-text" class="block" rows="6" placeholder="Введите ваш отзыв" required></textarea>
					<div class="review-form__details">
						<textarea name="review-positive" class="positive" rows="6" placeholder="Плюсы"></textarea>
						<textarea name="review-negative" class="negative" rows="6" placeholder="Минусы"></textarea>
					</div>
					<div class="g-recaptcha" data-sitekey="6Lc4OysUAAAAAHfCfYAcNwjH5iLvObqffg5TKsOE"></div>
					<?php
					if (!empty($_POST)) {
						if ($response != null && $response->success) {
						} else { 
							echo '<div class="recaptcha_error">Ваш отзыв не отправлен. Вы точно человек?</div>';
						}
					}
					?>
					<button type="submit" class="btn_big">Отправить отзыв</button>
				</form>
			</div>
			<?php endwhile; ?>
		</div>
	</div>
</main>
<?php get_footer(); ?>