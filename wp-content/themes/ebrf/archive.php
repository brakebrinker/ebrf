<?php
$queried_object = get_queried_object();
$taxonomy = $queried_object->taxonomy;
$term_id = $queried_object->term_id;

echo '<br>' . 'term_id: ' . $term_id . '<br>';
echo 'taxonomy: ' . $taxonomy . '<br>';

?>
<?php if ( have_posts() ) : ?>
<h1 class="archive-title"><?php post_type_archive_title(); ?></h1>
<?php 
// global $query_string;
// query_posts($query_string . "&post_type=lombardy"); 
?>
<?php if ( have_posts() ) : ?>
<?php while( have_posts() ){ 
    the_post();
    get_template_part( 'templates/company', 'preview' );
}
endif;
if (  $wp_query->max_num_pages > 1 ) : ?>
    <script>
    var ajaxurl = '<?php echo site_url() ?>/wp-admin/admin-ajax.php';
    var true_posts = '<?php echo serialize($wp_query->query_vars); ?>';
    var current_page = <?php echo (get_query_var('paged')) ? get_query_var('paged') : 1; ?>;
    var max_pages = '<?php echo $wp_query->max_num_pages; ?>';
    </script>
    <div id="true_loadmore" class="btn loadmore">Загрузить ещё</div>
<?php endif;
wp_reset_query();
?>

<?php get_template_part( 'templates/union', 'order' ); ?>
<?php endif; ?>