<?php
get_header();

while (have_posts()) {
  the_post();
  pageBanner();
?>



  <div class="container container--narrow page-section">

    <?php
    $parentID = wp_get_post_parent_id(get_the_ID()); //gets ID of parent page if no parent it returns 0
    if ($parentID) { ?>
      <div class="metabox metabox--position-up metabox--with-home-link">
        <p>
          <a class="metabox__blog-home-link" href="<?php echo get_permalink($parentID); ?>"><i class="fa fa-home" aria-hidden="true"></i> Back to <?php echo get_the_title($parentID); ?></a> <span class="metabox__main"><?php the_title() ?></span>
        </p>
      </div>
    <?php } ?>
    <?php
    $testArray = get_pages(array( //evaluates if the page is a parent
      'child_of' => get_the_ID()
    ));
    if ($parentID or $testArray) {
    ?>
      <div class="page-links">
        <h2 class="page-links__title"><a href="<?php echo get_permalink($parentID); ?>"><?php echo get_the_title($parentID); ?></a></h2>
        <ul class="min-list">
          <?php
          if ($parentID) {
            $findChildrenOf = $parentID;
          } else {
            $findChildrenOf = get_the_ID();
          }
          wp_list_pages(array( //outputs page names on screen
            'title_li' => NULL,
            'child_of' => $findChildrenOf,
            'sort_column' => 'menu_order' //enables child ordering in WP admin
          ));
          ?>
        </ul>
      </div>

    <?php } ?>

    <div class="generic-content">
      <?php the_content(); ?>
    </div>
  </div>

<?php
}
get_footer();
?>