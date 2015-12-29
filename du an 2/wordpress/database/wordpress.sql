-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 29, 2015 at 04:43 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-12-25 17:49:20', '2015-12-25 17:49:20', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_h5p_contents`
--

CREATE TABLE IF NOT EXISTS `wp_h5p_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `library_id` int(10) unsigned NOT NULL,
  `parameters` longtext NOT NULL,
  `filtered` longtext NOT NULL,
  `slug` varchar(127) NOT NULL,
  `embed_type` varchar(127) NOT NULL,
  `disable` int(10) unsigned NOT NULL DEFAULT '0',
  `content_type` varchar(127) DEFAULT NULL,
  `author` varchar(127) DEFAULT NULL,
  `license` varchar(7) DEFAULT NULL,
  `keywords` text,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_h5p_contents`
--

INSERT INTO `wp_h5p_contents` (`id`, `created_at`, `updated_at`, `user_id`, `title`, `library_id`, `parameters`, `filtered`, `slug`, `embed_type`, `disable`, `content_type`, `author`, `license`, `keywords`, `description`) VALUES
(1, '2015-12-25 18:00:48', '2015-12-25 18:18:54', 1, 'Drag and Drop', 6, '{"scoreShow":"Show score","tryAgain":"Retry","correct":"Solution","question":{"settings":{"size":{"width":800,"height":532},"background":{"path":"images/background-53731fdc8610f.jpg","mime":"image/jpeg","width":800,"height":532,"copyright":{"license":"U"}},"questionTitle":"Which genus does the Strawberry belong to? Drop the correct genus name on the Strawberry."},"task":{"elements":[{"type":{"library":"H5P.AdvancedText 1.1","params":{"text":"<p>Vaccinium</p>\\n"},"subContentId":"2c60d5b4-fd37-48ac-b4d6-930c440b62fa"},"x":73.75,"y":16.917293233083,"width":10,"height":1.25,"dropZones":["0"],"backgroundOpacity":100,"multiple":false},{"type":{"library":"H5P.AdvancedText 1.1","params":{"text":"<p>Fragaria</p>\\n"},"subContentId":"d00c052e-687d-472c-bc60-40209e233875"},"x":73.75,"y":26.315789473684,"width":10,"height":1.25,"dropZones":["0"],"backgroundOpacity":100,"multiple":false},{"type":{"library":"H5P.AdvancedText 1.1","params":{"text":"<p>Rubus</p>\\n"},"subContentId":"11da7446-f444-43c9-83af-39138f96bc6a"},"x":73.75,"y":35.714285714286,"width":10,"height":1.25,"dropZones":["0"],"backgroundOpacity":100,"multiple":false}],"dropZones":[{"x":20,"y":16.917293233083,"width":25,"height":23.125,"correctElements":["1"],"showLabel":false,"backgroundOpacity":0,"label":"Fragaria","single":false}]}},"behaviour":{"enableRetry":true,"singlePoint":true,"showSolutionsRequiresInput":true},"feedback":"You got @score of @total points."}', '{"scoreShow":"Show score","tryAgain":"Retry","correct":"Solution","question":{"settings":{"size":{"width":800,"height":532},"background":{"path":"images\\/background-53731fdc8610f.jpg","mime":"image\\/jpeg","width":800,"height":532,"copyright":{"license":"U"}},"questionTitle":"Which genus does the Strawberry belong to?\\u00a0Drop the correct genus name on the Strawberry."},"task":{"elements":[{"type":{"library":"H5P.AdvancedText 1.1","params":{"text":"<p>Vaccinium<\\/p>\\n"},"subContentId":"2c60d5b4-fd37-48ac-b4d6-930c440b62fa"},"x":73.75,"y":16.917293233083,"width":10,"height":1.25,"dropZones":["0"],"backgroundOpacity":100,"multiple":false},{"type":{"library":"H5P.AdvancedText 1.1","params":{"text":"<p>Fragaria<\\/p>\\n"},"subContentId":"d00c052e-687d-472c-bc60-40209e233875"},"x":73.75,"y":26.315789473684,"width":10,"height":1.25,"dropZones":["0"],"backgroundOpacity":100,"multiple":false},{"type":{"library":"H5P.AdvancedText 1.1","params":{"text":"<p>Rubus<\\/p>\\n"},"subContentId":"11da7446-f444-43c9-83af-39138f96bc6a"},"x":73.75,"y":35.714285714286,"width":10,"height":1.25,"dropZones":["0"],"backgroundOpacity":100,"multiple":false}],"dropZones":[{"x":20,"y":16.917293233083,"width":25,"height":23.125,"correctElements":["1"],"showLabel":false,"backgroundOpacity":0,"label":"Fragaria","single":false}]}},"behaviour":{"enableRetry":true,"singlePoint":true,"showSolutionsRequiresInput":true},"feedback":"You got @score of @total points."}', 'drag-and-drop', 'div', 0, NULL, NULL, NULL, NULL, NULL),
(2, '2015-12-25 18:21:24', '2015-12-25 18:21:24', 1, 'Multiple choice', 15, '{"answers":[{"correct":true,"text":"<div>Very dark purple</div>\\n","tipsAndFeedback":{"tip":"","chosenFeedback":"","notChosenFeedback":""}},{"correct":false,"text":"<div>Blue</div>\\n","tipsAndFeedback":{"tip":"","chosenFeedback":"","notChosenFeedback":""}},{"correct":false,"text":"<div>Black</div>\\n","tipsAndFeedback":{"tip":"","chosenFeedback":"","notChosenFeedback":""}}],"UI":{"showSolutionButton":"Show solution","tryAgainButton":"Retry","correctText":"Correct!","almostText":"Almost!","wrongText":"Wrong","checkAnswerButton":"Check"},"question":"<p>What color does the blackcurrant berry actually have?</p>\\n","behaviour":{"enableRetry":true,"enableSolutionsButton":true,"singleAnswer":true,"singlePoint":true,"randomAnswers":true,"showSolutionsRequiresInput":true}}', '{"answers":[{"correct":true,"text":"<div>Very dark purple<\\/div>\\n","tipsAndFeedback":{"tip":"","chosenFeedback":"","notChosenFeedback":""}},{"correct":false,"text":"<div>Blue<\\/div>\\n","tipsAndFeedback":{"tip":"","chosenFeedback":"","notChosenFeedback":""}},{"correct":false,"text":"<div>Black<\\/div>\\n","tipsAndFeedback":{"tip":"","chosenFeedback":"","notChosenFeedback":""}}],"UI":{"showSolutionButton":"Show solution","tryAgainButton":"Retry","correctText":"Correct!","almostText":"Almost!","wrongText":"Wrong","checkAnswerButton":"Check"},"question":"<p>What color does the blackcurrant berry actually have?<\\/p>\\n","behaviour":{"enableRetry":true,"enableSolutionsButton":true,"singleAnswer":true,"singlePoint":true,"randomAnswers":true,"showSolutionsRequiresInput":true}}', 'multiple-choice', 'div', 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_h5p_contents_libraries`
--

CREATE TABLE IF NOT EXISTS `wp_h5p_contents_libraries` (
  `content_id` int(10) unsigned NOT NULL,
  `library_id` int(10) unsigned NOT NULL,
  `dependency_type` varchar(31) NOT NULL,
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `drop_css` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`content_id`,`library_id`,`dependency_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_h5p_contents_libraries`
--

INSERT INTO `wp_h5p_contents_libraries` (`content_id`, `library_id`, `dependency_type`, `weight`, `drop_css`) VALUES
(1, 1, 'editor', 7, 0),
(1, 1, 'preloaded', 2, 0),
(1, 2, 'editor', 8, 0),
(1, 2, 'preloaded', 1, 0),
(1, 3, 'editor', 11, 0),
(1, 4, 'editor', 9, 0),
(1, 5, 'editor', 10, 0),
(1, 6, 'preloaded', 18, 0),
(1, 7, 'editor', 12, 0),
(1, 8, 'editor', 14, 0),
(1, 8, 'preloaded', 4, 0),
(1, 9, 'preloaded', 5, 0),
(1, 10, 'editor', 13, 0),
(1, 10, 'preloaded', 3, 0),
(1, 11, 'editor', 17, 0),
(1, 12, 'editor', 15, 0),
(1, 13, 'editor', 16, 0),
(1, 13, 'preloaded', 6, 0),
(2, 1, 'preloaded', 1, 0),
(2, 8, 'preloaded', 3, 0),
(2, 9, 'preloaded', 4, 0),
(2, 10, 'preloaded', 2, 0),
(2, 14, 'preloaded', 5, 0),
(2, 15, 'preloaded', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_h5p_contents_user_data`
--

CREATE TABLE IF NOT EXISTS `wp_h5p_contents_user_data` (
  `content_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `sub_content_id` int(10) unsigned NOT NULL,
  `data_id` varchar(127) NOT NULL,
  `data` longtext NOT NULL,
  `preload` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `invalidate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`content_id`,`user_id`,`sub_content_id`,`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_h5p_contents_user_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_h5p_libraries`
--

CREATE TABLE IF NOT EXISTS `wp_h5p_libraries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(127) NOT NULL,
  `title` varchar(255) NOT NULL,
  `major_version` int(10) unsigned NOT NULL,
  `minor_version` int(10) unsigned NOT NULL,
  `patch_version` int(10) unsigned NOT NULL,
  `runnable` int(10) unsigned NOT NULL,
  `restricted` int(10) unsigned NOT NULL DEFAULT '0',
  `fullscreen` int(10) unsigned NOT NULL,
  `embed_types` varchar(255) NOT NULL,
  `preloaded_js` text,
  `preloaded_css` text,
  `drop_library_css` text,
  `semantics` text NOT NULL,
  `tutorial_url` varchar(1023) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name_version` (`name`,`major_version`,`minor_version`,`patch_version`),
  KEY `runnable` (`runnable`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `wp_h5p_libraries`
--

INSERT INTO `wp_h5p_libraries` (`id`, `created_at`, `updated_at`, `name`, `title`, `major_version`, `minor_version`, `patch_version`, `runnable`, `restricted`, `fullscreen`, `embed_types`, `preloaded_js`, `preloaded_css`, `drop_library_css`, `semantics`, `tutorial_url`) VALUES
(1, '2015-12-26 01:00:44', '0000-00-00 00:00:00', 'FontAwesome', 'Font Awesome', 4, 3, 0, 0, 0, 0, '', '', 'font-awesome.css', '0', '', ''),
(2, '2015-12-26 01:00:44', '0000-00-00 00:00:00', 'H5P.AdvancedText', 'Advanced Text', 1, 1, 0, 0, 0, 0, '', 'text.js', 'text.css', '0', '[\n  {\n    "name": "text",\n    "type": "text",\n    "widget": "html",\n    "label": "Text",\n    "enterMode": "p",\n    "tags": [\n      "strong",\n      "em",\n      "del",\n      "a",\n      "ul",\n      "ol",\n      "h2",\n      "h3",\n      "hr"\n    ],\n    "font": {\n      "size": true,\n      "color": true,\n      "background": true\n    }\n  }\n]\n', ''),
(3, '2015-12-26 01:00:45', '0000-00-00 00:00:00', 'H5P.DragNBar', 'Drag N Bar', 1, 1, 0, 0, 0, 0, '', 'scripts/drag-n-bar.js, scripts/context-menu.js, scripts/dialog.js, scripts/drag-n-bar-element.js', 'styles/drag-n-bar.css, styles/dialog.css, styles/context-menu.css', '0', '', ''),
(4, '2015-12-26 01:00:45', '0000-00-00 00:00:00', 'H5P.DragNDrop', 'Drag N Drop', 1, 1, 0, 0, 0, 0, '', 'drag-n-drop.js', '', '0', '', ''),
(5, '2015-12-26 01:00:45', '0000-00-00 00:00:00', 'H5P.DragNResize', 'Drag''N Resize', 1, 1, 0, 0, 0, 0, '', 'H5P.DragNResize.js', 'H5P.DragNResize.css', '0', '', ''),
(6, '2015-12-27 10:15:11', '0000-00-00 00:00:00', 'H5P.DragQuestion', 'Drag and Drop', 1, 5, 1, 1, 0, 1, 'iframe', 'js/dragquestion.js', 'css/dragquestion.css', '0', '[\n  {\n    "name": "scoreShow",\n    "type": "text",\n    "label": "Check answer button",\n    "default": "Check",\n    "common": true\n  },\n  {\n    "name": "tryAgain",\n    "type": "text",\n    "label": "Retry button",\n    "default": "Retry",\n    "common": true,\n    "optional": true\n  },\n  {\n    "name": "correct",\n    "type": "text",\n    "label": "Correct solution label text",\n    "default": "Solution",\n    "common": true\n  },\n  {\n    "label": "Feedback text",\n    "name": "feedback",\n    "type": "text",\n    "default": "You got @score of @total points.",\n    "description": "Feedback text, variables available: @score and @total. Example: ''You got @score of @total points.''",\n    "common": true\n  },\n  {\n    "name": "question",\n    "type": "group",\n    "widget": "wizard",\n    "fields": [\n      {\n        "name": "settings",\n        "type": "group",\n        "label": "Settings",\n        "fields": [\n          {\n            "name": "questionTitle",\n            "type": "text",\n            "label": "The title of this question",\n            "default": "Drag and Drop",\n            "description": "Used in summaries, statistics etc."\n          },\n          {\n            "name": "background",\n            "type": "image",\n            "label": "Background image",\n            "optional": true,\n            "description": "Optional. Select an image to use as background for your drag and drop task."\n          },\n          {\n            "name": "size",\n            "type": "group",\n            "widget": "dimensions",\n            "label": "Task size",\n            "description": "Specify how large (in px) the play area should be.",\n            "default": {\n              "width": 620,\n              "height": 310,\n              "field": "background"\n            },\n            "fields": [\n              {\n                "name": "width",\n                "type": "number"\n              },\n              {\n                "name": "height",\n                "type": "number"\n              }\n            ]\n          }\n        ]\n      },\n      {\n        "name": "task",\n        "type": "group",\n        "widget": "dragQuestion",\n        "label": "Task",\n        "description": "Start by placing your drop zones.<br/>Next, place your droppable elements and check off the appropriate drop zones.<br/>Last, edit your drop zone again and check off the correct answers.",\n        "fields": [\n          {\n            "name": "elements",\n            "type": "list",\n            "label": "Elements",\n            "entity": "element",\n            "field": {\n              "type": "group",\n              "label": "Element",\n              "fields": [\n                {\n                  "name": "type",\n                  "type": "library",\n                  "description": "Choose the type of content you would like to add.",\n                  "options": [\n                    "H5P.AdvancedText 1.1",\n                    "H5P.Image 1.0"\n                  ]\n                },\n                {\n                  "name": "x",\n                  "type": "number",\n                  "widget": "none"\n                },\n                {\n                  "name": "y",\n                  "type": "number",\n                  "widget": "none"\n                },\n                {\n                  "name": "height",\n                  "type": "number",\n                  "widget": "none"\n                },\n                {\n                  "name": "width",\n                  "type": "number",\n                  "widget": "none"\n                },\n                {\n                  "name": "dropZones",\n                  "type": "select",\n                  "widget": "dynamicCheckboxes",\n                  "label": "Select drop zones",\n                  "multiple": true\n                },\n                {\n                  "name": "backgroundOpacity",\n                  "type": "number",\n                  "label": "Background Opacity",\n                  "min": 0,\n                  "max": 100,\n                  "step": 5,\n                  "default": 100,\n                  "optional": true\n                },\n                {\n                  "name": "multiple",\n                  "type": "boolean",\n                  "label": "Infinite number of element instances",\n                  "description": "Clones this element so that it can be dragged to multiple drop zones.",\n                  "default": false,\n                  "optional": true\n                }\n              ]\n            }\n          },\n          {\n            "name": "dropZones",\n            "type": "list",\n            "label": "Drop Zones",\n            "entity": "Drop Zone",\n            "field": {\n              "type": "group",\n              "label": "Drop Zone",\n              "fields": [\n                {\n                  "name": "label",\n                  "type": "text",\n                  "widget": "html",\n                  "label": "Label",\n                  "enterMode": "div",\n                  "tags": [\n                    "strong",\n                    "em",\n                    "del"\n                  ]\n\n                },\n                {\n                  "name": "showLabel",\n                  "type": "boolean",\n                  "label": "Show label"\n                },\n                {\n                  "name": "x",\n                  "type": "number",\n                  "widget": "none"\n                },\n                {\n                  "name": "y",\n                  "type": "number",\n                  "widget": "none"\n                },\n                {\n                  "name": "height",\n                  "type": "number",\n                  "widget": "none"\n                },\n                {\n                  "name": "width",\n                  "type": "number",\n                  "widget": "none"\n                },\n                {\n                  "name": "correctElements",\n                  "type": "select",\n                  "widget": "dynamicCheckboxes",\n                  "label": "Select correct elements",\n                  "multiple": true\n                },\n                {\n                  "name": "backgroundOpacity",\n                  "type": "number",\n                  "label": "Background Opacity",\n                  "min": 0,\n                  "max": 100,\n                  "step": 5,\n                  "default": 100,\n                  "optional": true\n                },\n                {\n                  "name": "tip",\n                  "type": "group",\n                  "label": "Tip",\n                  "optional": true,\n                  "fields": [\n                    {\n                      "name": "tip",\n                      "label": "Tip text",\n                      "type": "text",\n                      "optional": true\n                    }\n                  ]\n                },\n                {\n                  "name": "single",\n                  "type": "boolean",\n                  "label": "This drop zone can only contain one element. Make sure there is only one correct answer for this dropzone.",\n                  "default": false,\n                  "optional": true\n                }\n              ]\n            }\n          }\n        ]\n      }\n    ]\n  },\n  {\n    "name": "backgroundOpacity",\n    "type": "text",\n    "label": "Background opacity for draggables",\n    "description": "If this field is set, it will override opacity set on all draggable elements. This should be a number between 0 and 100, where 0 means full transparency and 100 means no transparency",\n    "optional": true\n  },\n  {\n    "name": "behaviour",\n    "type": "group",\n    "label": "Behavioural settings.",\n    "description": "These options will let you control how the task behaves.",\n    "optional": true,\n    "fields": [\n      {\n        "name": "enableRetry",\n        "type": "boolean",\n        "label": "Enable \\"Retry\\"",\n        "default": true,\n        "optional": true\n      },\n      {\n        "name": "singlePoint",\n        "type": "boolean",\n        "label": "Give one point for the whole task",\n        "description": "Disable to give one point for each draggable that is placed correctly.",\n        "default": true\n      },\n      {\n        "label": "Require user input before the solution can be viewed",\n        "name": "showSolutionsRequiresInput",\n        "type": "boolean",\n        "default": true,\n        "optional": true\n      }\n    ]\n  }\n]\n', 'http://h5p.org/tutorial-drag-and-drop-question'),
(7, '2015-12-26 01:00:46', '0000-00-00 00:00:00', 'H5P.Image', 'Image', 1, 0, 23, 0, 0, 0, '', 'image.js', 'image.css', '0', '[\r\n  {\r\n    "name": "file",\r\n    "type": "image",\r\n    "label": "Image"\r\n  },\r\n  {\r\n    "name": "alt",\r\n    "type": "text",\r\n    "label": "Alternative text",\r\n    "description": "Required. If the browser can''t load the image this text will be displayed instead. Also used by readspeakers."\r\n  },\r\n  {\r\n    "name": "title",\r\n    "type": "text",\r\n    "label": "Hover text",\r\n    "description": "Optional. This text is displayed when the user hovers his pointing device over the image.",\r\n    "optional": true\r\n  },\r\n  {\r\n    "name": "copyright",\r\n    "type": "group",\r\n    "label": "Copyright information",\r\n    "deprecated": true,\r\n    "optional": true,\r\n    "fields": [\r\n      {\r\n        "name": "title",\r\n        "type": "text",\r\n        "label": "Title",\r\n        "placeholder": "La Gioconda",\r\n        "optional": true\r\n      },\r\n      {\r\n        "name": "author",\r\n        "type": "text",\r\n        "label": "Author",\r\n        "placeholder": "Leonardo da Vinci",\r\n        "optional": true\r\n      },\r\n      {\r\n        "name": "source",\r\n        "type": "text",\r\n        "label": "Source",\r\n        "placeholder": "http://en.wikipedia.org/wiki/Mona_Lisa",\r\n        "optional": true,\r\n        "regexp": {\r\n          "pattern": "^http[s]?://.+",\r\n          "modifiers": "i"\r\n        }\r\n      },\r\n      {\r\n        "name": "license",\r\n        "type": "select",\r\n        "label": "License",\r\n        "default": "U",\r\n        "options": [\r\n          {\r\n            "value": "U",\r\n            "label": "Undisclosed"\r\n          },\r\n          {\r\n            "value": "CC BY",\r\n            "label": "Attribution"\r\n          },\r\n          {\r\n            "value": "CC BY-SA",\r\n            "label": "Attribution-ShareAlike"\r\n          },\r\n          {\r\n            "value": "CC BY-ND",\r\n            "label": "Attribution-NoDerivs"\r\n          },\r\n          {\r\n            "value": "CC BY-NC",\r\n            "label": "Attribution-NonCommercial"\r\n          },\r\n          {\r\n            "value": "CC BY-NC-SA",\r\n            "label": "Attribution-NonCommercial-ShareAlike"\r\n          },\r\n          {\r\n            "value": "CC BY-NC-ND",\r\n            "label": "Attribution-NonCommercial-NoDerivs"\r\n          },\r\n          {\r\n            "value": "GNU GPL",\r\n            "label": "General Public License"\r\n          },\r\n          {\r\n            "value": "PD",\r\n            "label": "Public Domain"\r\n          },\r\n          {\r\n            "value": "ODC PDDL",\r\n            "label": "Public Domain Dedication and Licence"\r\n          },\r\n          {\r\n            "value": "CC PDM",\r\n            "label": "Public Domain Mark"\r\n          },\r\n          {\r\n            "value": "C",\r\n            "label": "Copyright"\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  },\r\n  {\r\n    "name": "contentName",\r\n    "type": "text",\r\n    "label": "Image content name",\r\n    "common": true,\r\n    "default": "Image"\r\n  }\r\n]\r\n', ''),
(8, '2015-12-26 01:00:46', '0000-00-00 00:00:00', 'H5P.JoubelUI', 'Joubel UI', 1, 2, 0, 0, 0, 0, '', 'js/joubel-help-dialog.js, js/joubel-message-dialog.js, js/joubel-progress-circle.js, js/joubel-simple-rounded-button.js, js/joubel-speech-bubble.js, js/joubel-throbber.js, js/joubel-tip.js, js/joubel-slider.js, js/joubel-score-bar.js, js/joubel-ui.js', 'css/joubel-help-dialog.css, css/joubel-message-dialog.css, css/joubel-progress-circle.css, css/joubel-simple-rounded-button.css, css/joubel-speech-bubble.css, css/joubel-tip.css, css/joubel-slider.css, css/joubel-score-bar.css, css/joubel-ui.css', '0', '', ''),
(9, '2015-12-26 01:00:46', '0000-00-00 00:00:00', 'H5P.Question', 'Question', 1, 1, 2, 0, 0, 0, '', 'scripts/question.js', 'styles/question.css', '0', '', ''),
(10, '2015-12-26 01:00:46', '0000-00-00 00:00:00', 'H5P.Transition', 'Transition', 1, 0, 2, 0, 0, 0, '', 'transition.js', '', '0', '', ''),
(11, '2015-12-26 01:00:46', '0000-00-00 00:00:00', 'H5PEditor.DragQuestion', 'Drag Question Editor', 1, 4, 0, 0, 0, 0, '', 'H5PEditor.DragQuestion.js, H5PEditor.DynamicCheckboxes.js', 'H5PEditor.DragQuestion.css', '0', '', ''),
(12, '2015-12-26 01:00:46', '0000-00-00 00:00:00', 'H5PEditor.Wizard', 'H5PEditor.Wizard', 1, 0, 8, 0, 0, 0, '', 'Scripts/Wizard.js', 'Styles/Wizard.css', '0', '', ''),
(13, '2015-12-26 01:00:46', '0000-00-00 00:00:00', 'jQuery.ui', 'UI', 1, 10, 13, 0, 0, 0, '', 'js/jquery-ui.js', 'development-bundle/themes/base/jquery-ui.css', '0', '', ''),
(14, '2015-12-26 01:21:24', '0000-00-00 00:00:00', 'EmbeddedJS', 'Embedded JS', 1, 0, 4, 0, 0, 0, '', 'js/ejs_production.js, js/ejs_viewhelpers.js', '', '0', '', ''),
(15, '2015-12-27 10:15:11', '0000-00-00 00:00:00', 'H5P.MultiChoice', 'Multiple Choice', 1, 4, 1, 1, 0, 0, '', 'js/multichoice.js', 'css/multichoice.css', '0', '[\n  {\n    "name": "image",\n    "type": "image",\n    "label": "Question image",\n    "optional": true,\n    "description": "An optional image to display above the question."\n  },\n  {\n    "name": "question",\n    "type": "text",\n    "widget": "html",\n    "label": "Question",\n    "enterMode": "p",\n    "tags": [\n      "strong",\n      "em",\n      "sub",\n      "sup",\n      "h2",\n      "h3"\n    ]\n  },\n  {\n    "name": "answers",\n    "type": "list",\n    "label": "Available options",\n    "description": "The alternatives the user may choose from.",\n    "entity": "option",\n    "min": 1,\n    "defaultNum": 2,\n    "field": {\n      "name": "answer",\n      "type": "group",\n      "label": "Option",\n      "fields": [\n        {\n          "name": "text",\n          "type": "text",\n          "widget": "html",\n          "label": "Text",\n          "tags": [\n            "strong",\n            "em",\n            "sub",\n            "sup"\n          ]\n        },\n        {\n          "name": "correct",\n          "type": "boolean",\n          "label": "Correct"\n        },\n        {\n          "name": "tipsAndFeedback",\n          "type": "group",\n          "label": "Tips and feedback",\n          "optional": true,\n          "fields": [\n            {\n              "name": "tip",\n              "label": "Tip text",\n              "type": "text",\n              "optional": true\n            },\n            {\n              "name": "chosenFeedback",\n              "type": "text",\n              "widget": "html",\n              "label": "Chosen feedback",\n              "description": "Will be displayed when the users checks his answer.",\n              "optional": true,\n              "tags": [\n                "strong",\n                "em",\n                "sub",\n                "sup"\n              ]\n            },\n            {\n              "name": "notChosenFeedback",\n              "type": "text",\n              "widget": "html",\n              "label": "Not chosen feedback",\n              "description": "Will be displayed when the solution is displayed.",\n              "optional": true,\n              "tags": [\n                "strong",\n                "em",\n                "sub",\n                "sup"\n              ]\n            }\n          ]\n        }\n      ]\n    }\n  },\n  {\n    "name": "UI",\n    "type": "group",\n    "label": "User interface translations for multichoice",\n    "common": true,\n    "fields": [\n      {\n        "name": "checkAnswerButton",\n        "type": "text",\n        "label": "Check answer button label",\n        "default": "Check"\n      },\n      {\n        "name": "showSolutionButton",\n        "type": "text",\n        "label": "Show solution button label",\n        "default": "Show solution"\n      },\n      {\n        "name": "tryAgainButton",\n        "type": "text",\n        "label": "Retry button label",\n        "default": "Retry",\n        "optional": true\n      },\n      {\n        "name": "correctText",\n        "type": "text",\n        "label": "Correct answer feedback",\n        "default": "Correct!",\n        "deprecated": true\n      },\n      {\n        "name": "almostText",\n        "type": "text",\n        "label": "Almost correct answer feedback",\n        "default": "Almost!",\n        "deprecated": true\n      },\n      {\n        "name": "wrongText",\n        "type": "text",\n        "label": "Not correct answer feedback",\n        "default": "Wrong",\n        "deprecated": true\n      }\n    ]\n  },\n  {\n    "name": "behaviour",\n    "type": "group",\n    "label": "Behavioural settings.",\n    "description": "These options will let you control how the task behaves.",\n    "optional": true,\n    "fields": [\n      {\n        "name": "enableRetry",\n        "type": "boolean",\n        "label": "Enable \\"Retry\\" button",\n        "default": true,\n        "optional": true\n      },\n      {\n        "name": "enableSolutionsButton",\n        "type": "boolean",\n        "label": "Enable \\"Show Solution\\" button",\n        "default": true,\n        "optional": true\n      },\n      {\n        "name": "singleAnswer",\n        "type": "boolean",\n        "label": "Single answer",\n        "description": "Enable to allow only single option answer.",\n        "default": true\n      },\n      {\n        "name": "singlePoint",\n        "type": "boolean",\n        "label": "Give one point for the whole task",\n        "description": "Enable to give a total of one point for multiple correct answers. This will not be an option in \\"Single answer\\" mode.",\n        "default": true\n      },\n      {\n        "name": "randomAnswers",\n        "type": "boolean",\n        "label": "Randomize answers",\n        "description": "Enable to randomize the order of questions on display.",\n        "default": true\n      },\n      {\n        "label": "Require user input before the solution can be viewed",\n        "name": "showSolutionsRequiresInput",\n        "type": "boolean",\n        "default": true,\n        "optional": true\n      }\n    ]\n  }\n]\n', 'http://h5p.org/tutorial-multichoice-question');

-- --------------------------------------------------------

--
-- Table structure for table `wp_h5p_libraries_languages`
--

CREATE TABLE IF NOT EXISTS `wp_h5p_libraries_languages` (
  `library_id` int(10) unsigned NOT NULL,
  `language_code` varchar(31) NOT NULL,
  `translation` text NOT NULL,
  PRIMARY KEY (`library_id`,`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_h5p_libraries_languages`
--

INSERT INTO `wp_h5p_libraries_languages` (`library_id`, `language_code`, `translation`) VALUES
(2, 'ar', '{\n  "semantics": [\n    {\n      "label": "النص"\n    }\n  ]\n}\n'),
(2, 'fr', '{\n  "semantics": [\n    {\n      "label": "Texte"\n    }\n  ]\n}\n'),
(2, 'it', '{\n  "semantics": [\n    {\n      "label": "Testo"\n    }\n  ]\n}'),
(2, 'nb', '{\n  "semantics": [\n    {\n      "label": "Tekst"\n    }\n  ]\n}'),
(2, 'nn', '{\n  "semantics": [\n    {\n      "label": "Tekst"\n    }\n  ]\n}'),
(6, 'ar', '{\n  "semantics": [\n    {\n      "label": "تحقق زر الإجابة"\n    },\n    {\n      "label": "زر إعادة المحاولة"\n    },\n    {\n      "label": "تسمية الحل الصحيح النص"\n    },\n    {},\n    {\n      "fields": [\n        {\n          "label": "الإعدادات",\n          "fields": [\n            {},\n            {\n              "label": "صورة الخلفية",\n              "description": "اختياري. اختر الصورة التي تريد استخدامها كخلفية لنشاط اسحب والقي"\n            },\n            {\n              "label": "حجم النشاط",\n              "description": "حدد حجم النشاط بالبيكسل في منطقة اللعبة",\n              "default": {},\n              "fields": [\n                {},\n                {}\n              ]\n            }\n          ]\n        },\n        {\n          "label": "النشاط",\n          "description": "ابدأ بوضع مناطق إسقاط العناصر الكلمة او الصورة.بعد ذالك قم بوضع الكلمة او الصروة ثم تحقق من اختيار المناطق المناسبة. اخيرا، تحرر من منطقة اسقاط العناصر الكلمة او الصورة مرة أخرى وتحقق من ان الإجابات صحيحة",\n          "fields": [\n            {\n              "label": "العناصر",\n              "entity": "العنصر",\n              "field": {\n                "label": "العنصر",\n                "fields": [\n                  {\n                    "description": "اختيار نوع المحتوى الذي تريد إضافته"\n                  },\n                  {},\n                  {},\n                  {},\n                  {},\n                  {\n                    "label": "اختر مكان الاسقاط"\n                  },\n                  {\n                    "label": "شفافية الخلفية"\n                  },\n                  {\n                    "label": "عدد غير محدود من حالات العنصر",\n                    "description": "استنساخ هذا العنصر بحيث يمكن سحبها إلى مناطق متعددة الاسقاط"\n                  }\n                ]\n              }\n            },\n            {\n              "label": "مناطق الاسقاط",\n              "entity": "منطقة الاسقاط",\n              "field": {\n                "label": "منطقة الاسقاط",\n                "fields": [\n                  {\n                    "label": "التسمية"\n                  },\n                  {\n                    "label": "مشاهدة التسمية"\n                  },\n                  {},\n                  {},\n                  {},\n                  {},\n                  {\n                    "label": "تحديد العناصر الصحيحة"\n                  },\n                  {\n                    "label": "شفافية الخلفية"\n                  },\n                  {\n                    "label": "تلميح",\n                    "fields": [\n                      {\n                        "label": "نص التلميح"\n                      }\n                    ]\n                  },\n                  {\n                    "label": "هذه منطقة الإسقاط يمكن أن تحتوي على عنصر واحد فقط. تأكد من وجود واحد فقط الإجابة الصحيحة لهذه المنطقة"\n                  }\n                ]\n              }\n            }\n          ]\n        }\n      ]\n    },\n    {\n      "label": "شفافية خلفية العناصر",\n      "description": "إذا تم تعيين هذا المجال، فإنه سيتم تجاوز شفافية جميع العناصر قابلة للسحب. هذا الرقم ينبغي أن يكون رقم بين ٠ و ١٠٠، حيث ٠ تعني الشفافية الكاملة و ١٠٠ يعني عدم وجود الشفافية"\n    },\n    {\n      "label": "حساسية الاجابة",\n      "description": "يتأكد من إجابة المستخدم بأن تكون بالضبط نفس الجواب",\n      "fields": [\n        {\n          "label": "تفعيل \\"إعادة المحاولة \\""\n        },\n        {\n          "label": "إعطاء نقطة واحدة للقيام بهذه المهمة بأكملها",\n          "description": "تعطيل لإعطاء نقطة واحدة لكل عنصر قابل للسحب التي يتم وضعها بشكل صحيح"\n        },\n        {\n          "label": "تتطلب إدخال المستخدم قبل أن يتم عرضه الحل"\n        }\n      ]\n    }\n  ]\n}\n'),
(6, 'fr', '{\n  "semantics": [\n    {\n      "label": "Bouton Vérifier"\n    },\n    {\n      "label": "Bouton Réessayer"\n    },\n    {\n      "label": "Texte solution"\n    },\n    {\n      "fields": [\n        {\n          "label": "Réglages",\n          "fields": [\n            {},\n            {\n              "label": "image de fond",\n              "description": "Optionnel. Selectionner une image de fond pour l''activité glisser et déposer."\n            },\n            {\n              "label": "Taille",\n              "description": "Specifier la largeur (en px) de la zone de jeu."\n            }\n          ]\n        },\n        {\n          "label": "Tache",\n          "description": "Commencer par glisser vos étiquettes.<br/>Suivant, déposer vos étiquettes dans les trous et Vérifier si elles sont dans la zone approppriée.<br/>Fin, corriger vos étiquettes et Vérifier si vous avez la bonne réponse.",\n          "fields": [\n            {\n              "label": "Elements",\n              "entity": "element",\n              "field": {\n                "label": "Element",\n                "fields": [\n                  {},\n                  {},\n                  {},\n                  {},\n                  {},\n                  {\n                    "label": "Sélectionner la zone de dépôt"\n                  },\n                  {\n                    "label": "Opacité"\n                  },\n                  {\n                    "label": "Infinite number of element instances",\n                    "description": "Cloner l''élement  de façon à ce qu''il corresponde à plusieurs zones."\n                  }\n                ]\n              }\n            },\n            {\n              "label": "Zones de dépôt",\n              "entity": "Zones de dépôt",\n              "field": {\n                "label": "Zone de dépôt",\n                "fields": [\n                  {\n                    "label": "Etiquette"\n                  },\n                  {\n                    "label": "Montrer l''étiquette"\n                  },\n                  {},\n                  {},\n                  {},\n                  {},\n                  {\n                    "label": "Sélectionner les éléments corrects"\n                  },\n                  {\n                    "label": "Opacité"\n                  },\n                  {\n                    "label": "Conseil",\n                    "fields": [\n                      {\n                        "label": "Texte de conseil"\n                      }\n                    ]\n                  },\n                  {\n                    "label": "Cette zone de dépôt ne peut contenir qu''un seul élément. Soyez sur qu''il n''existe qu''une seule bonne réponse pour cette zone."\n                  }\n                ]\n              }\n            }\n          ]\n        }\n      ]\n    },\n    {\n      "label": "Opacité des étiquettes",\n      "description": "Si ce champ est correct, cela accentuera l''opacité de toutes les étiquettes. Doit être un nombre compris entre 0 and 100, où 0 signifie complète transparence and 100 signifie très opaque"\n    },\n    {\n      "label": "Options générales.",\n      "description": "Cette option vous donnera le contrôle de la tâche.",\n      "fields": [\n        {\n          "label": "Activer \\"Réessayer\\""\n        },\n        {\n          "label": "Donner une direction pour l''ensemble de la tâche",\n          "description": "Désactiver pour donner une direction pour chaque étiquette placée correctement."\n        },\n        {\n          "label": "L''utilisateur doit entrer la solution avant d''afficher le résultat."\n        }\n      ]\n    }\n  ]\n}\n'),
(6, 'it', '{\n  "semantics": [\n    {\n      "label": "Pulsante Controlla risposta"\n    },\n    {\n      "label": "Pulsante Riprova"\n    },\n    {\n      "label": "Testo dell''etichetta Soluzione corretta"\n    },\n    {\n      "label": "Testo del Feedback",\n      "description": "Testo del Feedback (Riscontro), variabili consentite: @score e @total. Esempio: ''Hai ottenuto il punteggio @score su @total punti possibili.''"\n    },\n    {\n      "fields": [\n        {\n          "label": "Impostazioni",\n          "fields": [\n            {\n              "label": "Immagine di sfondo",\n              "description": "Opzionale. Selezionare un''immagine da utilizzare come sfondo per il vostro compito drag and drop."\n            },\n            {\n              "label": "Dimensione attivit�",\n              "description": "Specifare quanto larga (in px) l''area di gioco dovrebbe essere.",\n              "default": {},\n              "fields": [\n                {},\n                {}\n              ]\n            }\n          ]\n        },\n        {\n          "label": "Attivit�",\n          "description": "Iniziate mettendo le zone di trascinamento.<br/>Successivamente, posizionate gli elementi trascinabili e mettete la spunta sulle relative aree di rilascio.<br/>Infine, modificate nuovamente la zona di rilascio e mettete la spunta sulle risposte corrette.",\n          "fields": [\n            {\n              "label": "Elementi",\n              "entity": "elemento",\n              "field": {\n                "label": "Elemento",\n                "fields": [\n                  {\n                    "description": "Scegliere il tipo di contenuto che si desidera aggiungere."\n                  },\n                  {},\n                  {},\n                  {},\n                  {},\n                  {\n                    "label": "Selezionare zona di rilascio"\n                  },\n                  {\n                    "label": "Opacit� Sfondo"\n                  },\n                  {\n                    "label": "Numero infinito di istanze di elementi",\n                    "description": "Clonare questo elemento in modo che possa essere trascinato su pi� zone di trascinamento."\n                  }\n                ]\n              }\n            },\n            {\n              "label": "Zone di rilascio",\n              "entity": "Zona di rilascio",\n              "field": {\n                "label": "Zona di rilascio",\n                "fields": [\n                  {\n                    "label": "Etichetta"\n                  },\n                  {\n                    "label": "Mostra etichetta"\n                  },\n                  {},\n                  {},\n                  {},\n                  {},\n                  {\n                    "label": "Selezionare gli elementi corretti"\n                  },\n                  {\n                    "label": "Opacit� Sfondo"\n                  },\n                  {\n                    "label": "Suggerimento",\n                    "fields": [\n                      {\n                        "label": "Testo di suggerimento"\n                      }\n                    ]\n                  },\n                  {\n                    "label": "Questa zona di rilascio pu� contenere un solo elemento. Assicurarsi che ci sia una sola risposta corretta per questa zona di rilascio."\n                  }\n                ]\n              }\n            }\n          ]\n        }\n      ]\n    },\n    {\n      "label": "Opacit� Sfondo per elementi trascinabili",\n      "description": "Se questo campo � impostato sovrasciver� l''opacit� impostata su tutti gli elementi trascinabili. Questo dovrebbe essere un numero compreso tra 0 e 100, dove 0 indica la piena trasparenza e 100 equivale a nessuna trasparenza."\n    },\n    {\n      "label": "Impostazioni esecuzione",\n      "description": "Queste opzioni consentono di controllare l''andamento del compito.",\n      "fields": [\n        {\n          "label": "Abilita \\"Riprova\\""\n        },\n        {\n          "label": "Assegna un punto per il completamento del compito",\n          "description": "Disabilitare per assegnare un punto per ogni elemento trascinabile che viene inserito correttamente."\n        },\n        {\n          "label": "Richiedere l''immissione dei dati all''utente prima che la soluzione sia visualizzata"\n        }\n      ]\n    }\n  ]\n}'),
(6, 'nb', '{\n  "semantics": [\n    {\n      "label": "Vis svar knappen",\n      "default": "Vis svar"\n    },\n    {\n      "label": "«Prøv igjen»-knapp",\n      "default": "Prøv igjen"\n    },\n    {\n      "label": "Ledetekst for riktig svar i fasiten",\n      "default": "Korrekt"\n    },\n    {\n      "label": "Tilbakemeldinger",\n      "default": "Du plasserte @score av totalt @total rett.",\n      "description": "Tekstlig tilbakemelding, tilgjengelige variabler: @score og @total. Eksempel: ''Du fikk @score av @total poeng.''"\n    },\n    {\n      "fields": [\n        {\n          "label": "Innstillinger",\n          "fields": [\n            {\n              "label": "Spørsmålets tittel",\n              "default": "Dra og slipp",\n              "description": "Brukes i oppsummeringer, statistikk o.l."\n            },\n            {\n              "label": "Bakgrunnsbilde",\n              "description": "Valgfritt. Velg et bakgrunnsbilde for oppgaven."\n            },\n            {\n              "label": "Oppgavens størrelse",\n              "description": "Spesifiser størrelse i piksler som oppgaven vanligvis vil vises i."\n            }\n          ]\n        },\n        {\n          "label": "Oppgave",\n          "description": "Begynn med å plassere målområder.<br/>Plasser så flyttbare elementer, og merk av hvilke målområder de skal kunne dras til.<br/>Til slutt redigeres målområdene igjen for å angi fasit.",\n          "fields": [\n            {\n              "label": "Elementer",\n              "entity": "element",\n              "field": {\n                "label": "Element",\n                "fields": [\n                  {},\n                  {},\n                  {},\n                  {},\n                  {},\n                  {\n                    "label": "Velg målområder"\n                  },\n                  {\n                    "label": "Opasitet for bakgrunn"\n                  },\n                  {\n                    "label": "Uendelig antall instanser av elementet",\n                    "description": "Klon dette elementet slik at det kan dras til flere målområder."\n                  }\n                ]\n              }\n            },\n            {\n              "label": "Målområder",\n              "entity": "målområde",\n              "field": {\n                "label": "Målområde",\n                "fields": [\n                  {\n                    "label": "Tittel"\n                  },\n                  {\n                    "label": "Vis tittel"\n                  },\n                  {},\n                  {},\n                  {},\n                  {},\n                  {\n                    "label": "Velg riktige elementer"\n                  },\n                  {\n                    "label": "Opasitet for bakgrunn"\n                  },\n                  {\n                    "label": "Tips",\n                    "fields": [\n                      {\n                        "label": "Tipstekst"\n                      }\n                    ]\n                  },\n                  {\n                    "label": "Dette målområdet kan bare inneholde et element. Pass på at det bare finnes ett riktig svar for dette målområdet."\n                  }\n                ]\n              }\n            }\n          ]\n        }\n      ]\n    },\n    {\n      "label": "Bakgrunnsopasitet på flyttbare elementer",\n      "description": "Hvis denne verdien er satt, vil den overstyre instillingene til alle flyttbare elementer. Feltet skal inneholde verdier fra 0 til 100, hvor 0 betyr full gjennsomsiktighet og 100 betyr ingen gjennomsiktighet"\n    },\n    {\n      "label": "Innstillinger for oppgave-oppførsel",\n      "description": "Disse instillingene lar deg bestemme hvordan oppgavetypen skal oppføre seg.",\n      "fields": [\n        {\n          "label": "Aktiver \\"Prøv igjen\\"-knapp"\n        },\n        {\n          "label": "Gi ett poeng for hele oppgaven",\n          "description": "Slå av for å gi ett poeng for hvert draobjekt som er plassert korrekt."\n        },\n        {\n          "label": "Krev inndata fra brukeren før fasit gis."\n        }\n      ]\n    }\n  ]\n}\n'),
(6, 'nn', '{\n  "semantics": [\n    {\n      "label": "Vis svar knappen",\n      "default": "Vis svar"\n    },\n    {\n      "label": "«Prøv igjen»-knapp",\n      "default": "Prøv igjen"\n    },\n    {\n      "label": "Ledetekst for riktig svar i fasiten",\n      "default": "Korrekt"\n    },\n    {\n      "label": "Tilbakemeldingar",\n      "default": "Du plasserte @score av totalt @total rett.",\n      "description": "Tekstleg tilbakemelding, tilgjengelege variablar: @score og @total. Eksempel: ''Du fikk @score av @total poeng.''"\n    },\n    {\n      "fields": [\n        {\n          "label": "Innstillinger",\n          "fields": [\n            {\n              "label": "Spørsmålets tittel",\n              "default": "Dra og slipp",\n              "description": "Brukes i oppsummeringer, statistikk o.l."\n            },\n            {\n              "label": "Bakgrunnsbilde",\n              "description": "Valgfritt. Velg et bakgrunnsbilde for oppgaven."\n            },\n            {\n              "label": "Oppgavens størrelse",\n              "description": "Spesifiser størrelse i piksler som oppgaven vanligvis vil vises i."\n            }\n          ]\n        },\n        {\n          "label": "Oppgave",\n          "description": "Begynn med å plassere målområder.<br/>Plasser så flyttbare elementer, og merk av hvilke målområder de skal kunne dras til.<br/>Til slutt redigeres målområdene igjen for å angi fasit.",\n          "fields": [\n            {\n              "label": "Elementer",\n              "entity": "element",\n              "field": {\n                "label": "Element",\n                "fields": [\n                  {},\n                  {},\n                  {},\n                  {},\n                  {},\n                  {\n                    "label": "Velg målområder"\n                  },\n                  {\n                    "label": "Opasitet for bakgrunn"\n                  },\n                  {\n                    "label": "Uendelig antall instanser av elementet",\n                    "description": "Klon dette elementet slik at det kan dras til flere målområder."\n                  }\n                ]\n              }\n            },\n            {\n              "label": "Målområder",\n              "entity": "målområde",\n              "field": {\n                "label": "Målområde",\n                "fields": [\n                  {\n                    "label": "Tittel"\n                  },\n                  {\n                    "label": "Vis tittel"\n                  },\n                  {},\n                  {},\n                  {},\n                  {},\n                  {\n                    "label": "Velg riktige elementer"\n                  },\n                  {\n                    "label": "Opasitet for bakgrunn"\n                  },\n                  {\n                    "label": "Tips",\n                    "fields": [\n                      {\n                        "label": "Tipstekst"\n                      }\n                    ]\n                  },\n                  {\n                    "label": "Dette målområdet kan bare innehalde eit element. Pass på at det bare finnes eit riktig svar for dette målområdet."\n                  }\n                ]\n              }\n            }\n          ]\n        }\n      ]\n    },\n    {\n      "label": "Bakgrunnsopasitet på flyttbare elementer",\n      "description": "Hvis denne verdien er satt, vil den overstyre instillingene til alle flyttbare elementer. Feltet skal inneholde verdier fra 0 til 100, hvor 0 betyr full gjennsomsiktighet og 100 betyr ingen gjennomsiktighet"\n    },\n    {\n      "label": "Innstillinger for oppgave-oppførsel",\n      "description": "Disse instillingene lar deg bestemme hvordan oppgavetypen skal oppføre seg.",\n      "fields": [\n        {\n          "label": "Aktiver \\"Prøv igjen\\"-knapp"\n        },\n        {\n          "label": "Gje eitt poeng for heile oppgåva",\n          "description": "Slå av for å gje eitt poeng for kvart draobjekt som er plassert korrekt."\n        },\n        {\n          "label": "Krev inndata fra brukeren før fasit gis."\n        }\n      ]\n    }\n  ]\n}\n'),
(7, 'ar', '{\n  "semantics": [\n    {\n      "label": "الصورة"\n    },\n    {\n      "label": "النص البديل",\n      "description": "مطلوبة. إذا كان المتصفح لم يتمكن من تحميل الصورة سيتم عرض هذا النص بدلا من ذلك. تستخدم أيضا من قبل مكبرات الصوت للقراءة"\n    },\n    {\n      "label": "وضع مؤشر الفأرة فوق الصورة",\n      "description": "اختياري. يتم عرض هذا النص عندما يقوم المستخدم بتحويم موشر الفارة فوق الصورة"\n    },\n    {\n      "label": "معلومات عن حقوق النشر",\n      "fields": [\n        {\n          "label": "العنوان"\n        },\n        {\n          "label": "المؤلف"\n        },\n        {\n          "label": "مصدر الملف",\n          "regexp": {}\n        },\n        {\n          "label": "رخصة الاستعمال",\n          "options": [\n            {\n              "label": "لم يكشف عنها"\n            },\n            {\n              "label": "منسوبة"\n            },\n            {\n              "label": "منسوبة - بالمثل"\n            },\n            {\n              "label": "منسوبة - للمشتقات"\n            },\n            {\n              "label": "منسوبة - لغير التجاري"\n            },\n            {\n              "label": "منسوبة - بالمثل الغير تجارية"\n            },\n            {\n              "label": "منسوبة - للمشتقات الغير تجارية"\n            },\n            {\n              "label": "رخصة عمومية عامة"\n            },\n            {\n              "label": "الملكية العامة"\n            },\n            {\n              "label": "تفاني رخصة الاستعمال للعامة"\n            },\n            {\n              "label": "مجال الأقسام العامة"\n            },\n            {\n              "label": "رخصة الاستعمال"\n            }\n          ]\n        }\n      ]\n    },\n    {\n      "label": "اسم ملف الصورة"\n    }\n  ]\n}\n'),
(7, 'fr', '{\n  "semantics": [\n    {\n      "label": "Image"\n    },\n    {\n      "label": "Texte alternatif",\n      "description": "Obligatoire. Ce texte sera affiché si l''image n''apparaît pas dans le navigateur."\n    },\n    {\n      "label": "Texte de survol",\n      "description": "Optionnel. Ce texte est affiché quand la souris survole une image."\n    },\n    {\n      "label": "Informations sur le Copyright",\n      "fields": [\n        {\n          "label": "Titre"\n        },\n        {\n          "label": "Auteur"\n        },\n        {\n          "label": "Source"\n        },\n        {\n          "label": "Licence",\n          "options": [\n            {\n              "label": "Non précisé"\n            },\n            {\n              "label": "Attribution"\n            },\n            {\n              "label": "Attribution-Partage à l''identique"\n            },\n            {\n              "label": "Attribution-Pas de modifications"\n            },\n            {\n              "label": "Attribution-Pas d''utilisation commerciale"\n            },\n            {\n              "label": "Attribution-Pas d''utilisation commerciale-Partage à l''identique"\n            },\n            {\n              "label": "Attribution-Pas d''utilisation commerciale-Pas de modifications"\n            },\n            {\n              "label": "GPL"\n            },\n            {\n              "label": "Domaine public"\n            },\n            {\n              "label": "Domaine public"\n            },\n            {\n              "label": "Domaine public"\n            },\n            {\n              "label": "Copyright"\n            }\n          ]\n        }\n      ]\n    },\n    {\n      "label": "Légende"\n    }\n  ]\n}\n'),
(7, 'it', '{\n  "semantics": [\n    {\n      "label": "Immagine"\n    },\n    {\n      "label": "Testo alternativo",\n      "description": "Richiesto. Se il browser non � in grado di caricare l''immagine verr� visualizzato questo testo. Utilizzato anche per il ReadSpeaker (ossia la vocalizzazione del testo)."\n    },\n    {\n      "label": "Testo hover",\n      "description": "Opzionale. Questo testo viene visualizzato quando l''utente passa col puntatore sopra l''immagine."\n    },\n    {\n      "label": "Informazioni Copyright",\n      "fields": [\n        {\n          "label": "Titolo"\n        },\n        {\n          "label": "Autore"\n        },\n        {\n          "label": "Sorgente",\n          "regexp": {}\n        },\n        {\n          "label": "Licenza",\n          "options": [\n            {\n              "label": "Anonimo"\n            },\n            {\n              "label": "Distribuzione"\n            },\n            {\n              "label": "Distribuzione-ShareAlike"\n            },\n            {\n              "label": "Distribuzione-NoDerivs"\n            },\n            {\n              "label": "Distribuzione-NonCommercial"\n            },\n            {\n              "label": "Distribuzione-NonCommercial-ShareAlike"\n            },\n            {\n              "label": "Distribuzione-NonCommercial-NoDerivs"\n            },\n            {\n              "label": "General Public License"\n            },\n            {\n              "label": "Public Domain"\n            },\n            {\n              "label": "Public Domain Dedication and Licence"\n            },\n            {\n              "label": "Public Domain Mark"\n            },\n            {\n              "label": "Copyright"\n            }\n          ]\n        }\n      ]\n    },\n    {\n      "label": "Nome contenuto immagine"\n    }\n  ]\n}'),
(7, 'nb', '{\r\n  "semantics": [\r\n    {\r\n      "label": "Bildefil"\r\n    },\r\n    {\r\n      "label": "Alternativ tekst",\r\n      "description": "Påkrevd. Hvis bildet ikke kan lastes vises denne teksten istedenfor. Denne blir også brukt ved talesyntese."\r\n    },\r\n    {\r\n      "label": "Sveve-tekst",\r\n      "description": "Valgfritt. Denne teksten vises når brukeren holder pekeenheten over bildet."\r\n    },\r\n    {\r\n      "label": "Informasjon om opphavsrett",\r\n      "fields": [\r\n        {\r\n          "label": "Tittel"\r\n        },\r\n        {\r\n          "label": "Opphavsmann"\r\n        },\r\n        {\r\n          "label": "Kilde"\r\n        },\r\n        {\r\n          "label": "Lisens",\r\n          "options": [\r\n            {\r\n              "label": "Ukjent"\r\n            },\r\n            {\r\n              "label": "Navngivelse"\r\n            },\r\n            {\r\n              "label": "Navngivelse - Del på samme vilkår"\r\n            },\r\n            {\r\n              "label": "Navngivelse - Ingen bearbeidelse"\r\n            },\r\n            {\r\n              "label": "Navngivelse - Ikke kommersiell"\r\n            },\r\n            {\r\n              "label": "Navngivelse - Ikke kommersiell - Del på samme vilkår"\r\n            },\r\n            {\r\n              "label": "Navngivelse - Ikke kommersiell - Ingen bearbeidelse"\r\n            },\r\n            {\r\n              "label": "Generell offentlig lisens"\r\n            },\r\n            {\r\n              "label": "Offentlig eiendom"\r\n            },\r\n            {\r\n              "label": "Offentlig eiendom engasjement og lisens"\r\n            },\r\n            {\r\n              "label": "Offentlig eiendom merke"\r\n            },\r\n            {\r\n              "label": "Opphavsrett"\r\n            }\r\n          ]\r\n        }\r\n      ]\r\n    },\r\n    {\r\n      "label": "Innholdsnavn for bilde"\r\n    }\r\n  ]\r\n}\r\n'),
(7, 'nn', '{\r\n  "semantics": [\r\n    {\r\n      "label": "Biletefil"\r\n    },\r\n    {\r\n      "label": "Alternativ tekst",\r\n      "description": "Viss biletet ikkje kan lastas visast denne teksten i istadenfor. Denne blir og nytta ved talesyntese."\r\n    },\r\n    {\r\n      "label": "Sveve-tekst",\r\n      "description": "Denne teksten visast når brukaren held peikeeininga over bilete. Kan til dømes brukast til å informere om opphav."\r\n    },\r\n    {\r\n      "label": "Informasjon om opphavsrett",\r\n      "fields": [\r\n        {\r\n          "label": "Tittel"\r\n        },\r\n        {\r\n          "label": "Opphavsmann"\r\n        },\r\n        {\r\n          "label": "Kjelde"\r\n        },\r\n        {\r\n          "label": "Lisens",\r\n          "options": [\r\n            {\r\n              "label": "Ukjent"\r\n            },\r\n            {\r\n              "label": "Namngjeving"\r\n            },\r\n            {\r\n              "label": "Namngjeving - Del på same vilkår"\r\n            },\r\n            {\r\n              "label": "Namngjeving - Inga bearbeiding"\r\n            },\r\n            {\r\n              "label": "Namngjeving - Ikkje kommersiell"\r\n            },\r\n            {\r\n              "label": "Namngjeving - Ikkje kommersiell - Del på same vilkår"\r\n            },\r\n            {\r\n              "label": "Namngjeving - Ikkje kommersiell - Inga bearbeiding"\r\n            },\r\n            {\r\n              "label": "Generell offentleg lisens"\r\n            },\r\n            {\r\n              "label": "Offentleg eigedom"\r\n            },\r\n            {\r\n              "label": "Offentleg eigedom engasjement og lisens"\r\n            },\r\n            {\r\n              "label": "Offentleg eigedom merke"\r\n            },\r\n            {\r\n              "label": "Opphavsrett"\r\n            }\r\n          ]\r\n        }\r\n      ]\r\n    },\r\n    {\r\n      "label": "Innhaldsnamn for bilete"\r\n    }\r\n  ]\r\n}\r\n'),
(15, 'ar', '{\n  "semantics": [\n    {\n      "label": "صورة السؤال",\n      "description": "صورة اختيارية لعرضها فوق السؤال"\n    },\n    {\n      "label": "السؤال"\n    },\n    {\n      "label": "الخيارات المتوفرة",\n      "description": "الخيارات المتوفرة للمستخدم",\n      "entity": "الخيار",\n      "field": {\n        "label": "الخيار",\n        "fields": [\n          {\n            "label": "النص"\n          },\n          {\n            "label": "صحيح"\n          },\n          {\n            "label": "تلميح",\n            "fields": [\n              {\n                "label": "نص التلميح"\n              },\n              {\n                "label": "ملاحظات المختار",\n                "description": "سوف يتم عرضها للمستخدمين بعد التتحقق من جوابه"\n              },\n              {\n                "label": "ملاحظات لغير المختار",\n                "description": "سوف يتم عرضها للمستخدمين بعد التتحقق من جوابه"\n              }\n            ]\n          }\n        ]\n      }\n    },\n    {\n      "label": "ترجمة واجهة المستخدم للخيارات متعددة",\n      "fields": [\n        {\n          "label": "تسمية زر التحقق  من الجواب"\n        },\n        {\n          "label": "مشاهدة تسمية زر الحل"\n        },\n        {\n          "label": "تسمية زر إعادة المحاولة"\n        },\n        {\n          "label": "ملاحظات الجواب الصحيح"\n        },\n        {\n          "label": "ملاحظات الجواب الصحيح تقريبا"\n        },\n        {\n          "label": "ملاحظات الجواب غير الصحيح"\n        }\n      ]\n    },\n    {\n      "label": "إعدادت النشاط",\n      "description": "وهذه الخيارات تمكنك من التحكم في كيفية سلوك هذا النشاط",\n      "fields": [\n        {\n          "label": "تمكين \\"إعادة المحاولة \\""\n        },\n        {\n          "label": "تمكين \\"مشاهدة الحل \\" الزر"\n        },\n        {\n          "label": "إجابة واحدة",\n          "description": "تمكين السماح لاجابة واحدة"\n        },\n        {\n          "label": "إعطاء نقطة واحدة للقيام بهذه المهمة بأكملها",\n          "description": "تمكين لإعطاء مجموع نقطة واحدة للإجابات الصحيحة متعددة. هذا لن يكون خيارا في وضع \\"إجابة واحدة \\"."\n        },\n        {\n          "label": "الإجابات بطريقة عشوائية",\n          "description": "تمكين العرض بطريقة عشوائية وترتيب الأسئلة على الشاشة"\n        },\n        {\n          "label": "تطلب إدخال المستخدم اجابته قبل أن يتم عرضه الحل"\n        }\n      ]\n    }\n  ]\n}\n'),
(15, 'fr', '{\n  "semantics": [\n    {\n      "label": "Image de la question",\n      "description": "Une image optionnelle peut être ajoutée."\n    },\n    {\n      "label": "Question"\n    },\n    {\n      "label": "Options disponibles",\n      "description": "L''utilisateur peut choisir ces options alternatives.",\n      "entity": "option",\n      "field": {\n        "label": "Option",\n        "fields": [\n          {\n            "label": "Texte"\n          },\n          {\n            "label": "Correct"\n          },\n          {\n            "label": "Aide",\n            "fields": [\n              {\n                "label": "Texte de l''aide"\n              },\n              {\n                "label": "Feedback",\n                "description": "Texte de feedback choisi."\n              },\n              {\n                "label": "Feedback pour la solution",\n                "description": "Affiché quand la solution est montrée."\n              }\n            ]\n          }\n        ]\n      }\n    },\n    {\n      "label": "Traduction de l''interface utilisateur pour les questions à choix multiples",\n      "fields": [\n        {\n          "label": "Texte du bouton vérifier"\n        },\n        {\n          "label": "Texte du bouton montrer la solution"\n        },\n        {\n          "label": "Texte du bouton Réessayer"\n        },\n        {\n          "label": "Feedback pour une réponse correcte"\n        },\n        {\n          "label": "Feedback pour une réponse presque correcte"\n        },\n        {\n          "label": "Feedback pour une mauvaise réponse"\n         }\n      ]\n    },\n    {\n      "label": "Options générales.",\n      "description": "Ces options vous permettent de contrôler le déroulement de vos activités.",\n      "fields": [\n        {\n          "label": "Activer le bouton \\"Réessayer\\""\n        },\n        {\n          "label": "Activer le bouton \\"Solution\\""\n        },\n        {\n          "label": "Question à choix unique",\n          "description": "Une seule réponse est possible."\n        },\n        {\n          "label": "Donner un point pour chaque activité",\n          "description": "Un point par réponse correcte dans les QCM. Ce ne sera pas une option dans les \\"Questions à choix unique\\"."\n        },\n        {\n          "label": "Questions aléatoires",\n          "description": "Les questions seront affichées dans l''ordre aléatoire."\n        },\n        {\n          "label": "Une réponse est obligatoire pour montrer la solution"\n        }\n      ]\n    }\n  ]\n}\n'),
(15, 'it', '{\n  "semantics": [\n    {\n      "label": "Immagine domanda",\n      "description": "Immagine opzionale da visualizzare sopra la domanda."\n    },\n    {\n      "label": "Domanda"\n    },\n    {\n      "label": "Opzioni disponibili",\n      "description": "Le alternative tra cui l''utente pu� scegliere.",\n      "entity": "opzione",\n      "field": {\n        "label": "Opzione",\n        "fields": [\n          {\n            "label": "Testo"\n          },\n          {\n            "label": "Corretto"\n          },\n          {\n            "label": "Suggerimento",\n            "fields": [\n              {\n                "label": "Testo del suggerimento"\n              },\n              {\n                "label": "Feedback scelto",\n                "description": "Viene visualizzato quando l''utente verifica la sua risposta."\n              },\n              {\n                "label": "Feedback non scelto",\n                "description": "Viene visualizzato quando la soluzione viene mostrata."\n              }\n            ]\n          }\n        ]\n      }\n    },\n    {\n      "label": "Traduzioni dell''interfaccia utente per scelta multipla",\n      "fields": [\n        {\n          "label": "Etichetta pulsante Verifica risposta"\n        },\n        {\n          "label": "Etichetta pulsante Mostra soluzione"\n        },\n        {\n          "label": "Etichetta pulsante Riprova"\n        },\n        {\n          "label": "Feedback risposta corretta"\n        },\n        {\n          "label": "Feedback risposta quasi corretta"\n        },\n        {\n          "label": "Feedback risposta non corretta"\n        }\n      ]\n    },\n    {\n      "label": "Impostazioni esecuzione",\n      "description": "Queste opzioni consentono di controllare l''andamento del compito.",\n      "fields": [\n        {\n          "label": "Abilita pulsante \\"Riprova\\""\n        },\n        {\n          "label": "Abilita pulsante \\"Mostra soluzione\\""\n        },\n        {\n          "label": "Risposta singola",\n          "description": "Abilitare per consentire solo risposte singole."\n        },\n        {\n          "label": "Assegna un punto per il completamento del compito",\n          "description": "Abilitare per assegnare un totale di un punto per risposte multiple corrette. Non � opzionabile in modalit� \\"Risposta singola\\"."\n        },\n        {\n          "label": "Risposte in ordine casuale",\n          "description": "Abilita per rendere casuale l''ordine delle domande visualizzate."\n        },\n        {\n          "label": "Richiedere l''immissione dei dati all''utente prima che la soluzione sia visualizzata"\n        }\n      ]\n    }\n  ]\n}\n'),
(15, 'nb', '{\n  "semantics": [\n    {\n      "label": "Spørsmålsbilde",\n      "description": "Et valgfritt bilde som skal vises over spørsmålet."\n    },\n    {\n      "label": "Spørsmål"\n    },\n    {\n      "label": "Svaralternativer",\n      "description": "Svaralternativene brukeren kan velge mellom",\n      "entity": "svaralternativ",\n      "field": {\n        "label": "Svaralternativ",\n        "fields": [\n          {\n            "label": "Tekst"\n          },\n          {\n            "label": "Riktig"\n          },\n          {\n            "label": "Tips",\n            "fields": [\n              {\n                "label": "Tipstekst"\n              },\n              {\n                "label": "Tilbakemelding for valgt alternativ",\n                "description": "Vises når brukerne sjekker svaret hans."\n              },\n              {\n                "label": "Tilbakemelding for ikke valgt alternativ",\n                "description": "Vises når løsningen vises."\n              }\n            ]\n          }\n        ]\n      }\n    },\n    {\n      "label": "Oversettelser for ledetekster i flervalg",\n      "fields": [\n        {\n          "label": "Tekst for \\"Sjekk svar\\" knapp",\n          "default": "Sjekk"\n        },\n        {\n          "label": "Tekst for \\"Vis svar\\" knapp",\n          "default": "Vis svar"\n        },\n        {\n          "label": "Merkelapp for «Prøv igjen»-knappen.",\n          "default": "Prøv igjen"\n        },\n        {\n          "label": "Tilbakemelding ved riktig svar",\n          "default": "Rett!"\n        },\n        {\n          "label": "Tilbakemelding ved nesten riktig svar",\n          "default": "Nesten!"\n        },\n        {\n          "label": "Tilbakemelding ved galt svar",\n          "default": "Feil"\n        }\n      ]\n    },\n    {\n      "label": "Innstillinger for oppgave-oppførsel",\n      "description": "Disse instillingene lar deg bestemme hvordan oppgavetypen skal oppføre seg.",\n      "fields": [\n        {\n          "label": "Aktiver \\"Prøv igjen\\""\n        },\n        {\n          "label": "Aktiver \\"Vis svar\\" knapp"\n        },\n        {\n          "label": "Bare ett svar",\n          "description": "Lar brukeren kun avgi ett svar"\n        },\n        {\n          "label": "Gi ett poeng for hele oppgaven",\n          "description": "Gir ett poeng totalt for flere rette alternativ. Kun valgbar hvis \\"Bare ett svar\\" er avslått."\n        },\n        {\n          "label": "Tilfeldige svaralternativ",\n          "description": "Slå på for å vise alternativene i tilfeldig rekkefølge."\n        },\n        {\n          "label": "Krev inndata fra brukeren før fasit gis."\n        }\n      ]\n    }\n  ]\n}\n'),
(15, 'nn', '{\n  "semantics": [\n    {\n      "label": "Spørsmålsbilete",\n      "description": "Eit valfritt bilete som skal visast over spørsmålet."\n    },\n    {\n      "label": "Spørsmål"\n    },\n    {\n      "label": "Svaralternativ",\n      "description": "Svaralternativa brukaren kan velje mellom",\n      "entity": "svaralternativ",\n      "field": {\n        "label": "Svaralternativ",\n        "fields": [\n          {\n            "label": "Tekst"\n          },\n          {\n            "label": "Riktig"\n          },\n          {\n            "label": "Tips",\n            "fields": [\n              {\n                "label": "Tipstekst"\n              },\n              {\n                "label": "Tilbakemelding for valgt alternativ",\n                "description": "Visast når brukarane sjekkar hans svar."\n              },\n              {\n                "label": "Tilbakemelding for ikke valgt alternativ",\n                "description": "Visast når løysinga visast."\n              }\n            ]\n          }\n        ]\n      }\n    },\n    {\n      "label": "Oversetting for leietekstar i fleirval",\n      "fields": [\n        {\n          "label": "Tekst for \\"Sjekk svar\\" knapp",\n          "default": "Sjekk"\n        },\n        {\n          "label": "Tekst for \\"Vis svar\\" knapp",\n          "default": "Vis svar"\n        },\n        {\n          "label": "Merkelapp for «Prøv igjen»-knappen.",\n          "default": "Prøv igjen"\n        },\n        {\n          "label": "Tilbakemelding ved riktig svar",\n          "default": "Rett!"\n        },\n        {\n          "label": "Tilbakemelding ved nesten riktig svar",\n          "default": "Nesten!"\n        },\n        {\n          "label": "Tilbakemelding ved galt svar",\n          "default": "Feil"\n        }\n      ]\n    },\n    {\n      "label": "Innstillinger for oppgave-oppførsel",\n      "description": "Disse instillingene lar deg bestemme hvordan oppgavetypen skal oppføre seg.",\n      "fields": [\n        {\n          "label": "Aktiver \\"Prøv igjen\\""\n        },\n        {\n          "label": "Aktiver \\"Vis svar\\" knapp"\n        },\n        {\n          "label": "Bare eitt svar",\n          "description": "Slå på for å tillate val av berre eitt alternativ."\n        },\n        {\n          "label": "Gje eitt poeng for heile oppgåva",\n          "description": "Gir eitt poeng totalt for fleire rette alternativ. Kun valbar om \\"Bare eitt svar\\" er slått av."\n        },\n        {\n          "label": "Tilfeldige svaralternativ",\n          "description": "Slå på for å vise de mulige svara i tilfeldig rekkefølge."\n        },\n        {\n          "label": "Krev inndata fra brukeren før fasit gis."\n        }\n      ]\n    }\n  ]\n}\n');

-- --------------------------------------------------------

--
-- Table structure for table `wp_h5p_libraries_libraries`
--

CREATE TABLE IF NOT EXISTS `wp_h5p_libraries_libraries` (
  `library_id` int(10) unsigned NOT NULL,
  `required_library_id` int(10) unsigned NOT NULL,
  `dependency_type` varchar(31) NOT NULL,
  PRIMARY KEY (`library_id`,`required_library_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_h5p_libraries_libraries`
--

INSERT INTO `wp_h5p_libraries_libraries` (`library_id`, `required_library_id`, `dependency_type`) VALUES
(3, 4, 'preloaded'),
(3, 5, 'preloaded'),
(6, 1, 'preloaded'),
(6, 8, 'preloaded'),
(6, 9, 'preloaded'),
(6, 11, 'editor'),
(6, 13, 'preloaded'),
(8, 1, 'preloaded'),
(8, 10, 'preloaded'),
(9, 1, 'preloaded'),
(9, 8, 'preloaded'),
(11, 1, 'preloaded'),
(11, 2, 'preloaded'),
(11, 3, 'preloaded'),
(11, 7, 'preloaded'),
(11, 8, 'preloaded'),
(11, 12, 'preloaded'),
(11, 13, 'preloaded'),
(15, 1, 'preloaded'),
(15, 8, 'preloaded'),
(15, 9, 'preloaded'),
(15, 14, 'preloaded');

-- --------------------------------------------------------

--
-- Table structure for table `wp_h5p_results`
--

CREATE TABLE IF NOT EXISTS `wp_h5p_results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `score` int(10) unsigned NOT NULL,
  `max_score` int(10) unsigned NOT NULL,
  `opened` int(10) unsigned NOT NULL,
  `finished` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_user` (`content_id`,`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_h5p_results`
--

INSERT INTO `wp_h5p_results` (`id`, `content_id`, `user_id`, `score`, `max_score`, `opened`, `finished`, `time`) VALUES
(1, 1, 1, 1, 1, 1451308906, 1451308930, 0),
(2, 2, 1, 1, 1, 1451067724, 1451067735, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=192 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/wordpress', 'yes'),
(2, 'home', 'http://localhost:8080/wordpress', 'yes'),
(3, 'blogname', 'Website wordpress', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tuanpt.haui@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:1:{i:0;s:11:"h5p/h5p.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'twentysixteen', 'yes'),
(40, 'stylesheet', 'twentysixteen', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:66:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:20:"disable_h5p_security";b:1;s:20:"manage_h5p_libraries";b:1;s:24:"edit_others_h5p_contents";b:1;s:17:"edit_h5p_contents";b:1;s:16:"view_h5p_results";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:24:"edit_others_h5p_contents";b:1;s:17:"edit_h5p_contents";b:1;s:16:"view_h5p_results";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:12:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:17:"edit_h5p_contents";b:1;s:16:"view_h5p_results";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:7:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:17:"edit_h5p_contents";b:1;s:16:"view_h5p_results";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:3:{s:4:"read";b:1;s:7:"level_0";b:1;s:16:"view_h5p_results";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:6:{i:1451411361;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1451411391;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1451411780;a:1:{s:17:"h5p_daily_cleanup";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1451412216;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1451418180;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(106, 'rewrite_rules', 'a:65:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(108, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:56:"http://downloads.wordpress.org/release/wordpress-4.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:56:"http://downloads.wordpress.org/release/wordpress-4.4.zip";s:10:"no_content";s:67:"http://downloads.wordpress.org/release/wordpress-4.4-no-content.zip";s:11:"new_bundled";s:68:"http://downloads.wordpress.org/release/wordpress-4.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.4";s:7:"version";s:3:"4.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1451397610;s:15:"version_checked";s:3:"4.4";s:12:"translations";a:0:{}}', 'yes'),
(113, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1451397624;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.4";s:14:"twentyfourteen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(115, '_transient_random_seed', 'ee148ed81ed192cbb21769bcd623edcf', 'yes'),
(116, '_site_transient_timeout_browser_e0510d649b62f928b6f4d24951f13d8d', '1451670591', 'yes'),
(117, '_site_transient_browser_e0510d649b62f928b6f4d24951f13d8d', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"47.0.2526.106";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(119, 'can_compress_scripts', '1', 'yes'),
(120, '_transient_timeout_plugin_slugs', '1451393403', 'no'),
(121, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:11:"h5p/h5p.php";i:2;s:9:"hello.php";}', 'no'),
(126, 'recently_activated', 'a:0:{}', 'yes'),
(127, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1451076721', 'yes'),
(128, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5624";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3532";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3468";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2988";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2714";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2197";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2159";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1991";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1944";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1928";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1919";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1875";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1767";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1576";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1503";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1481";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1388";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1287";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1254";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1241";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1132";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1057";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1027";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"977";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"934";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"893";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"872";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"868";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"863";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"858";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"841";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"802";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"762";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"731";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"730";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"727";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"722";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"720";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"719";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"712";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"703";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"689";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"677";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"672";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"650";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"649";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"636";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"632";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"628";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"619";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"601";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"595";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"584";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"584";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"581";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"573";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"571";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"567";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"565";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"556";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"544";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"534";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"526";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"516";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"513";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"506";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"500";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"497";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"493";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"492";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"470";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"470";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"459";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"453";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"452";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"450";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"430";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"424";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"420";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"415";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"411";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"409";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"409";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"400";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"399";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"397";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"397";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"394";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"392";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"385";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"384";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"383";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"379";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"378";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"374";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"373";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"373";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"371";}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";s:3:"368";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"368";}}', 'yes'),
(129, 'h5p_frame', '1', 'yes'),
(130, 'h5p_export', '1', 'yes'),
(131, 'h5p_embed', '1', 'yes'),
(132, 'h5p_copyright', '1', 'yes'),
(133, 'h5p_icon', '1', 'yes'),
(134, 'h5p_track_user', '1', 'yes'),
(135, 'h5p_library_updates', '1', 'yes'),
(136, 'h5p_save_content_state', '', 'yes'),
(137, 'h5p_save_content_frequency', '30', 'yes'),
(138, 'h5p_version', '1.5.5', 'yes'),
(139, 'h5p_h5p_site_uuid', 'dc8836aa-13f4-44a0-ad7f-a4f770c94d4f', 'yes'),
(140, 'h5p_update_available', '1447167696', 'yes'),
(141, 'h5p_update_available_path', 'https://h5p.org/sites/default/files/all-h5p-libraries-20151110.h5p', 'yes'),
(143, 'h5p_current_update', '1', 'yes'),
(148, 'category_children', 'a:0:{}', 'yes'),
(150, '_transient_is_multi_author', '0', 'yes'),
(151, '_transient_twentysixteen_categories', '1', 'yes'),
(183, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1451350204', 'no'),
(184, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(187, '_site_transient_timeout_theme_roots', '1451399415', 'yes'),
(188, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(191, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1451397625;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.6";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.6.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:11:"h5p/h5p.php";O:8:"stdClass":6:{s:2:"id";s:5:"50242";s:4:"slug";s:3:"h5p";s:6:"plugin";s:11:"h5p/h5p.php";s:11:"new_version";s:5:"1.5.5";s:3:"url";s:34:"https://wordpress.org/plugins/h5p/";s:7:"package";s:45:"http://downloads.wordpress.org/plugin/h5p.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1451067572:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-12-25 17:49:20', '2015-12-25 17:49:20', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-12-25 17:49:20', '2015-12-25 17:49:20', '', 0, 'http://localhost:8080/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2015-12-25 17:49:20', '2015-12-25 17:49:20', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:8080/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2015-12-25 17:49:20', '2015-12-25 17:49:20', '', 0, 'http://localhost:8080/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-12-25 17:49:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-12-25 17:49:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2015-12-25 18:04:30', '2015-12-25 18:04:30', 'Nội dung H5P\r\n\r\n[h5p id="1"]\r\n\r\n[h5p id="2"]\r\n\r\n&nbsp;', 'Sử dụng H5P vào WordPress', '', 'publish', 'open', 'open', '', 'su-dung-h5p-vao-wordpress', '', '', '2015-12-25 18:21:53', '2015-12-25 18:21:53', '', 0, 'http://localhost:8080/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2015-12-25 18:04:30', '2015-12-25 18:04:30', 'Nội dung H5P\r\n\r\n[h5p id="1"]\r\n\r\n&nbsp;', 'Sử dụng H5P vào WordPress', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2015-12-25 18:04:30', '2015-12-25 18:04:30', '', 4, 'http://localhost:8080/wordpress/2015/12/25/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2015-12-25 18:21:53', '2015-12-25 18:21:53', 'Nội dung H5P\r\n\r\n[h5p id="1"]\r\n\r\n[h5p id="2"]\r\n\r\n&nbsp;', 'Sử dụng H5P vào WordPress', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2015-12-25 18:21:53', '2015-12-25 18:21:53', '', 4, 'http://localhost:8080/wordpress/2015/12/25/4-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_termmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"54e0a47739fdc5f74407d3510b8173d8670f9a435cf8eb84e5085890657bf36f";a:4:{s:10:"expiration";i:1451479798;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:103:"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36";s:5:"login";i:1451306998;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B1W70k1keb78SfgSaaRZ5KQcbz4NKB.', 'admin', 'tuanpt.haui@gmail.com', '', '2015-12-25 17:49:19', '', 0, 'admin');
