<?php

/*
Plugin Name: Quiz Block Plugin
Description: Adds a Q&A style quiz to test readers throughout pieces of content
Version: 1.0
Author: Adam
Author URI: adamdurrant.co.uk
*/


//Prevents code from being triggered when users visit this php file URL
if (!defined('ABSPATH')) exit;

class QuizBlock
{
  function __construct()
  {
    add_action('init', array($this, 'adminAssets'));
  }

  function adminAssets()
  {
    wp_register_style('quizblockstyles', plugin_dir_url(__FILE__) . 'build/index.css');
    wp_register_script('quizblockscript', plugin_dir_url(__FILE__) . 'build/index.js', array('wp-blocks', 'wp-element', 'wp-editor'));
    register_block_type('quizblock/quiz-test', array(
      'editor_script' => 'quizblockscript',
      'editor_style' => 'quizblockstyles',
      'render_callback' => array($this, 'theHTML')
    ));
  }

  function theHTML($attributes)
  {
    ob_start(); ?>

    <h3>Today the sky is <?php echo esc_html($attributes['skyColor']) ?> and the grass is <?php echo esc_html($attributes['grassColor']) ?>

  <?php return ob_get_clean();
  }
}

//Instantiates the class
$quizblock = new QuizBlock();
