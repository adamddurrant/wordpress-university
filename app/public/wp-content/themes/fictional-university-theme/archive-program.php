<?php get_header();
pageBanner(array(
  'title' => 'All Programs',
  'subtitle' => 'There is something for everyone. Have a look at latest programs.'
));
?>


<div class="container container--narrow page-section">

  <ul class="link-list min-list">
    <?php //loop through posts and fetch data
    while (have_posts()) {
      the_post(); ?>
      <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
    <?php }
    echo paginate_links();
    ?>
  </ul>
</div>

<?php get_footer(); ?>