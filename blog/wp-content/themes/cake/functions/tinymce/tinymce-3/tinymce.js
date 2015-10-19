function init() {
	tinyMCEPopup.resizeToInnerSize();
}

function mfn_mce_submit() {

	var output;
	var shortcode = document.getElementById('shortcode').value;
	
	switch( shortcode ) {
		case 0:
		case "0":
			tinyMCEPopup.close();
			break;
	
		// ************************* content **********************
		case "blockquote":
			output = "[" + shortcode + " author=\"\" link=\"\" style=\"\" target=\"_blank\"]" +
				" Insert your content here " +
				"[/" + shortcode + "]";
			break;
			
		case "button":
			output = "[" + shortcode + " title=\"\" icon=\"\" link=\"\" target=\"_blank\" color=\"\" filled=\"1\"  large=\"0\"  class=\"\"]";
			break;
			
		case "divider":
			output = "[" + shortcode + " height=\"30\" line=\"1\"]";
			break;
			
		case "dropcap":
			output = "[" + shortcode + " background=\"\" color=\"\" circle=\"0\"]" +
				" I " +
				"[/" + shortcode + "] nsert your content here";
			break;
			
		case "highlight":
			output = "[" + shortcode + " background=\"\" color=\"\" line=\"0\"]" +
				" Insert your content here " +
				"[/" + shortcode + "]";
			break;
			
		case "ico":
			output = "[" + shortcode + " type=\"icon-heart-line\"]";
			break;	

		case "image":
			output = "[" + shortcode + " src=\"\" align=\"\" caption=\"\" link=\"\" link_type=\"\" target=\"\" alt=\"\"]";
			break;

		case "table":
			output = "<table><thead><tr><th>Column 1 heading</th><th>Column 2 heading</th><th>Column 3 heading</th></tr></thead><tbody><tr><td>Row 1 col 1 content</td><td>Row 1 col 2 content</td><td>Row 1 col 3 content</td></tr><tr><td>Row 2 col 1 content</td><td>Row 2 col 2 content</td><td>Row 2 col 3 content</td></tr></tbody></table>";
			break;	
			
		case "tooltip":
			output = "[" + shortcode + " hint=\"Insert your hint here\"]" +
			" Insert your content here " +
			"[/" + shortcode + "]";
			break;

		case "video":
			output = "[" + shortcode + " video=\"62954028\" width=\"700\" height=\"400\"]";
			break;
	
			
		// ************************* builder **********************
		case "article_box":
			output = "[" + shortcode + " image=\"\" title=\"\" link=\"\" target=\"_blank\"]" +
				" Insert your content here " +
				"[/" + shortcode + "]";
			break;	
			
		case "blog":
			output = "[" + shortcode + " count=\"2\" category=\"\" style=\"modern\" pagination=\"0\"]";
			break;
			
		case "chart":
			output = "[" + shortcode + " percent=\"50\" label=\"\" position=\"left\" title=\"\"]" +
				" Insert your content here " +
				"[/" + shortcode + "]";
			break;	
	
		case "clients":
			output = "[" + shortcode + " in_row=\"6\"]";
			break;

		case "contact_box":
			output = "[" + shortcode + " title=\"\" address=\"\" telephone=\"\" email=\"\" www=\"\" link_text=\"\" link=\"\" style=\"classic\"]";
			break;
				
		case "counter":
			output = "[" + shortcode + " icon=\"icon-heart-line\" color=\"#222222\" image=\"\" number=\"44\" title=\"\"]";
			break;
			
		case "fancy_heading":
			output = "[" + shortcode + " title=\"\" icon=\"icon-heart-line\" image=\"\" style=\"color\" class=\"\"]" +
				" Insert your content here " +
				"[/" + shortcode + "]";
			break;
			
		case "icon_box":
			output = "[" + shortcode + " title=\"\" icon=\"icon-heart-line\" icon_position=\"\" link=\"\" target=\"_blank\"]" +
			" Insert your content here " +
			"[/" + shortcode + "]";
			break;	
			
		case "map":
			output = "[" + shortcode + " lat=\"\" lng=\"\" height=\"200\" zoom=\"13\"]";
			break;
			
		case "our_team":
			output = "[" + shortcode + " image=\"\" title=\"\" subtitle=\"\" email=\"\" phone=\"\" facebook=\"\" twitter=\"\" linkedin=\"\" style=\"modern\"]";
			break;
			
		case "portfolio":
			output = "[" + shortcode + " count=\"2\" category=\"\" orderby=\"date\" order=\"DESC\" style=\"one\" pagination=\"0\"]";
			break;
			
		case "pricing_item":
			output = "[" + shortcode + " image=\"\" title=\"\" price=\"\" currency=\"\" period=\"\" link_title=\"\" link=\"\" featured=\"\" border=\"0\"]" +
			"<ul><li><strong>List</strong> item</li></ul>" +
			"[/" + shortcode + "]";
			break;

		case "progress_bars":
			output = "[" + shortcode + " title=\"\"]" +
			"[bar title=\"Bar1\" value=\"50\"]" +
			"[/" + shortcode + "]";
			break;
			
		case "progress_box":
			output = "[" + shortcode + " value=\"\" title=\"\"]" +
			" Insert your content here " +
			"[/" + shortcode + "]";
			break;
				
		case "testimonials":
			output = "[" + shortcode + " category=\"\" orderby=\"menu_order\" order=\"ASC\" border=\"1\"]";
			break;
			
		case "video_box":
			output = "[" + shortcode + " title=\"\" video_m4v=\"\"]" +
			" Insert your content here " +
			"[/" + shortcode + "]";
			break;
			
			
		// ************************* default **********************
		default:
			output = "[" + shortcode + "] Insert your content here [/" + shortcode + "]";
	}
	

	if (window.tinyMCE) {
		window.tinyMCE.execInstanceCommand('content', 'mceInsertContent',false, output);
		tinyMCEPopup.editor.execCommand('mceRepaint');
		tinyMCEPopup.close();
	}
	return true;
}