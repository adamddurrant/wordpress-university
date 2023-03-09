<?php

function university_files()
{
  wp_enqueue_style('university-main-styles', get_theme_file_uri('build/style-index.css'));
  wp_enqueue_style('university-extra-styles', get_theme_file_uri('build/index.css'));
  wp_enqueue_style('university-fa', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
  wp_enqueue_style('university-custom-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
  wp_enqueue_script('university-js', get_theme_file_uri('/build/index.js'), array('jquery'), '1.0', true);
  //localize creates a variable to output js data into the source - here we're outputting the root URL (for various use e.g in search results querying)
  wp_localize_script('university-js', 'universityData', array(
    'root_url' => get_site_url()
  ));
}
//Enqueue all files above on every page
add_action('wp_enqueue_scripts', 'university_files');


function university_features() //enable features in WP
{
  //enable menus option in Wordpress & adds display locations
  register_nav_menu('headerMenuLocation', 'Header Menu Location');
  register_nav_menu('footerLocationOne', 'Footer Menu Location One');
  register_nav_menu('footerLocationTwo', 'Footer Menu Location Two');
  //enable title tags from wp 
  add_theme_support('title-tag');
  add_theme_support('post-thumbnails');
  add_image_size('professorLandscape', 400, 260, true); //Adds a custom image size on upload 
  add_image_size('professorPortrait', 480, 650, true); //true = cropped to match the size
  add_image_size('pageBanner', 1500, 350, true);
}
//Enqueue header titles
add_action('after_setup_theme', 'university_features');



//Function component for page banner images
function pageBanner($args = NULL) // Assigning null ensures args are optional because $args are now always = something
{
  if (!isset($args['title'])) { //if title is not set
    $args['title'] = get_the_title();
  }
  if (!isset($args['subtitle'])) {
    $args['subtitle'] = get_field('page_banner_subtitle');
  }
  if (!isset($args['photo'])) {
    if (get_field('page_banner_background_image') and !is_archive() and !is_home()) { //prevents archives breaking the function
      $args['photo'] = get_field('page_banner_background_image')['sizes']['pageBanner'];
    } else {
      $args['photo'] = get_theme_file_uri('/images/ocean.jpg');
    }
  }

?>
  <div class="page-banner">
    <div class="page-banner__bg-image" style="background-image: url(<?php echo $args['photo'] ?>)">
    </div>
    <div class="page-banner__content container container--narrow">
      <h1 class="page-banner__title"><?php echo $args['title'] ?></h1>
      <div class="page-banner__intro">
        <p><?php echo $args['subtitle'] ?></p>
      </div>
    </div>
  </div>
<?php
}




//This function manipulates WP's default query to prevent needing to overwrite
function university_adjust_queries($query)
{ //$query is the WP query object

  if (!is_admin() and is_post_type_archive('program') and is_main_query()) {
    $query->set('orderby', 'title');
    $query->set('order', 'ASC');
    $query->set('posts_per_page', -1); //-1 is default everything
  }

  if (!is_admin() and is_post_type_archive('event') and $query->is_main_query()) {
    $today = date('Ymd');
    $query->set('meta_key', 'event_date');
    $query->set('orderby', 'meta_value_num');
    $query->set('order', 'ASC');
    $query->set('meta_query', array(
      array(
        'key' => 'event_date',
        'compare' => '>=',
        'value' => $today,
        'type' => 'numeric'
      )
    ));
  }
}

add_action('pre_get_posts', 'university_adjust_queries'); //call function before getting posts
