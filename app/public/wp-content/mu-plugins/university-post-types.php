<?php
//custom post types
//event post type
function university_post_types () {
  
  //Event Post Type
  register_post_type('event', array(
    'rewrite' => array('slug' => 'events'), 
    'supports' => array('title', 'editor', 'excerpt', 'thumbnail'), //adds custom fields to post type
    'has_archive' => true, //adds archive page for post type
    'public' => true,
    'show_in_rest' => true, //enables new block editor
    'labels' => array(
      'name' => 'Events',
      'add_new_item' => 'Add New Event',
      'edit_item' => 'Edit Event',
      'all_items' => 'All Events',
      'singular_name' => 'Event',
    ),
    'menu_icon' => 'dashicons-calendar-alt',
  ));

  //Program Post Type
  register_post_type('program', array(
    'rewrite' => array('slug' => 'programs'), 
    'supports' => array('title', 'editor', 'thumbnail'), 
    'has_archive' => true,
    'public' => true,
    'show_in_rest' => true, 
    'labels' => array(
      'name' => 'Programs',
      'add_new_item' => 'Add New Program',
      'edit_item' => 'Edit Program',
      'all_items' => 'All Programs',
      'singular_name' => 'Program',
    ),
    'menu_icon' => 'dashicons-awards',
  ));


   //Professor Post Type
   register_post_type('professor', array(
    'rewrite' => array('slug' => 'professors'), 
    'supports' => array('title', 'editor', 'thumbnail'), 
    'public' => true,
    'show_in_rest' => true, 
    'labels' => array(
      'name' => 'Professors',
      'add_new_item' => 'Add New Professor',
      'edit_item' => 'Edit Professor',
      'all_items' => 'All Professors',
      'singular_name' => 'Professor',
    ),
    'menu_icon' => 'dashicons-welcome-learn-more',
  ));

}

add_action('init', 'university_post_types');
