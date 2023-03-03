<?php get_header();
pageBanner(array(
  'title' => 'Past Events',
  'subtitle' => 'A recap of events that have passed'
));
?>

<div class="container container--narrow page-section">
  <?php
  $today = date('Ymd');
  $pastEvents = new WP_Query(array(
    //Orders events by upcoming date from advanced field
    'paged' => get_query_var('paged', 1), //maps query to pagination
    'post_type' => 'event',
    'meta_key' => 'event_date',
    'orderby' => 'meta_value_num',
    'order' => 'ASC',
    'meta_query' => array(
      array(
        'key' => 'event_date',
        'compare' => '<', //less than amended
        'value' => $today,
        'type' => 'numeric'
      )
    )
  ));

  //loop through posts and fetch data
  while ($pastEvents->have_posts()) {
    $pastEvents->the_post();
    get_template_part('template-parts/content-event');
  }
  echo paginate_links(array(
    'total' => $pastEvents->max_num_pages
  )); //This has custom info because we're using a custom query
  ?>
</div>

<?php get_footer(); ?>