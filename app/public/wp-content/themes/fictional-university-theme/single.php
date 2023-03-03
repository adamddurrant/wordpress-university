<?php
get_header();
pageBanner();

while (have_posts()) {
  the_post();
?>


  <div class="container container--narrow page-section">
    <div class="metabox metabox--position-up metabox--with-home-link">
      <p>
        <a class="metabox__blog-home-link" href="<?php echo site_url('/blog'); ?>"><i class="fa fa-home" aria-hidden="true"></i> Blog home</a> <span class="metabox__main">Written by <?php the_author_posts_link(); ?> <?php the_time('M, Y'); ?> in <?php echo get_the_category_list(', ') ?></span>
      </p>
    </div>
    <div class="generic-content">
      <?php the_content() ?>
    </div>


  </div>

<?php
}
get_footer();
?>