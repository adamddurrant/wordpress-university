<?php

/*

Plugin Name: First Test Plugin
Description: Sitewide bad words filter
Version: 1.0
Author: Adam
Author URI: adamdurrant.co.uk

*/


// Using PHP classes helps avoid conflicts with short unique function names - using classes means you can use simple names such as 'adminPage'

class WordCountAndTimePlugin
{
  function __construct()
  {
    add_action('admin_menu', array($this, 'adminPage'));
    add_action('admin_init', array($this, 'settings'));
  }

  function settings()
  {
    add_settings_section('first_section', null, null, 'word-count-settings');
    add_settings_field('word-count-location', 'Display Location', array($this, 'locationHTML'), 'word-count-settings', 'first_section');
    register_setting('wordcountplugin', 'word-count-location', array(
      'sanitize_callback' => 'sanitize_text_field',
      'default' => '0',
    ));
  }

  function locationHTML()
  { ?>

    <select name="word-count-location">
      <option value="0" <?php selected(get_option('word-count-location'), '0'); ?>>Beginning of post</option>
      <option value="1" <?php selected(get_option('word-count-location'), '1'); ?>>End of post</option>
    </select>

  <?php
  }


  function adminPage()
  {
    //add_options_page('name of plugin', 'Name in menu', 'permissions level', 'url for plugin page', 
    add_options_page('Word Count Settings', 'Word Count', 'manage_options', 'word-count-settings', array($this, 'pluginHTML'));
  }

  function pluginHTML()
  { ?>
    <div class="wrap">
      <h1>Word Count Settings</h1>
      <form action="options.php" method="post">
        <?php
        settings_fields('wordcountplugin');
        do_settings_sections('word-count-settings');
        submit_button();
        ?>
      </form>
    </div>
<?php
  }
}

$wordCountAndTimePlugin = new WordCountAndTimePlugin();
