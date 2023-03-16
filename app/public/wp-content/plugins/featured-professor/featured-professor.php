<?php

/*
  Plugin Name: Featured Professor Block Type
  Version: 1.0
  Author: Your Name Here
  Author URI: https://www.udemy.com/user/bradschiff/
*/

if (!defined('ABSPATH')) exit; // Exit if URL accessed directly

require_once plugin_dir_path(__FILE__) . 'inc/generateProfessorHTML.php'; //contents of this file will now be available in this file

class FeaturedProfessor
{
  function __construct()
  {
    add_action('rest_api_init()', [$this, 'profEditorHTML']);
    add_action('init', [$this, 'onInit']);
  }

  function profEditorHTML()
  {
    register_rest_route('featuredProfessor/v1', 'getEditorHTML', array(
      'methods' => WP_REST_SERVER::READABLE,
      'callback' => [$this, 'getProfHTML'],
    ));
  }

  function getEditorHTML()
  {
    return '<h4> hello from endpoint</h4>';
  }

  function onInit()
  {
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
