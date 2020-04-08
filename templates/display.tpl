{**
 * plugins/generic/lensGalley/display.tpl
 *
 * Copyright (c) 2014-2019 Simon Fraser University
 * Copyright (c) 2003-2019 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Embedded viewing of a JATS XML galley.
 *}
<script src="{$jQueryUrl}"></script>
<script src="{$pluginLensPath}/lens.js?v=27mar2020"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/latest.js?config=TeX-AMS-MML_HTMLorMML"></script>
<script type="text/javascript">{literal}

	var linkElement = document.createElement("link");
	linkElement.rel = "stylesheet";
	linkElement.href = "{/literal}{$pluginLensPath|escape:"javascript"}{literal}/lens.css?v=27mar2020"; //Replace here

	document.head.appendChild(linkElement);

    // MathJax Configuration
    MathJax = {
      svg: {
        scale: 1,                      // global scaling factor for all expressions
        minScale: .5,                  // smallest scaling factor to use
        matchFontHeight: true,         // true to match ex-height of surrounding font
        mtextInheritFont: false,       // true to make mtext elements use surrounding font
        merrorInheritFont: true,       // true to make merror text use surrounding font
        mathmlSpacing: false,          // true for MathML spacing rules, false for TeX rules
        skipAttributes: {},            // RFDa and other attributes NOT to copy to the output
        exFactor: .5,                  // default size of ex in em units
        displayAlign: 'center',        // default for indentalign when set to 'auto'
        displayIndent: '0',            // default for indentshift when set to 'auto'
        fontCache: 'local',            // or 'global' or 'none'
        localID: null,                 // ID to use for local font cache (for single equation processing)
        internalSpeechTitles: true,    // insert <title> tags with speech content
        titleID: 0                     // initial id number to use for aria-labeledby titles
      },
      menuSettings:{
          zoom: "Click"
      }
    };

    $(document).ready(function(){
        var app = new Lens({
            document_url: "{/literal}{$xmlUrl|escape:'javascript'}{literal}"
        });
        app.start();
        window.app = app;

        $("body").append('<a href="./" class="go-back"><i class="fa fa-arrow-left"></i> <span>Regresar</span></a>');
    });

{/literal}</script>
