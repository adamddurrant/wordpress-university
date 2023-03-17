<?php

/*
  Plugin Name: Featured Professor Block Type
  Version: 1.0
  Author: Your Name Here
  Author URI: https://www.udemy.com/user/bradschiff/
*/

if (!defined('ABSPATH')) exit; // Exit if URL accessed directly

//contents and functions in these files will now be available in this file
require_once plugin_dir_path(__FILE__) . 'inc/generateProfessorHTML.php';
require_once plugin_dir_path(__FILE__) . 'inc/relatedPostsHTML.php';
class FeaturedProfessor
{
  function __construct()
  {
    add_action('rest_api_init', [$this, 'profEditorHTML']);
    add_action('init', [$this, 'onInit']);
    add_filter('the_content', [$this, 'addRelatedPosts']);
  }

  function addRelatedPosts($content)
  {

    if (is_singular('professor') && in_the_loop() && is_main_query()) {
      return $content . relatedPostsHTML(get_the_id());
    }
    return $content;
  }

  function profEditorHTML()
  {
    register_rest_route('featuredProfessor/v1', 'getEditorHTML', array(
      'methods' => WP_REST_SERVER::READABLE,
      'callback' => [$this, 'getProfHTML'],
    ));
  }

  function getProfHTML($data)
  {
    return generateProfessorHTML($data['profId']);
  }

  function onInit()
  {
    register_meta("post", 'featuredProfessor', array(
      //This function registers our custom meta data so it saves in the database
      'show_in_rest' => true,
      'type' => 'number',
      "single" => false
    ));
    wp_register_script('featuredProfessorScript', plugin_dir_url(__FILE__) . 'build/index.js', array('wp-blocks', 'wp-i18n', 'wp-editor'));
    wp_register_style('featuredProfessorStyle', plugin_dir_url(__FILE__) . 'build/index.css');

    register_block_type('ourplugin/featured-professor', array(
      'render_callback' => [$this, 'renderCallback'],
      'editor_script' => 'featuredProfessorScript',
      'editor_style' => 'featuredProfessorStyle'
    ));
  }

  function renderCallback($attributes)
  {
    if ($attributes['profID']) {
      wp_enqueue_style('featuredProfessorStyle');
      return generateProfessorHTML($attributes['profID']);
    } else {
      return NULL;
    }
  }
}

$featuredProfessor = new FeaturedProfessor();
