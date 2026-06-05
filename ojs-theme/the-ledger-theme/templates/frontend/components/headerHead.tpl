{**
 * The Ledger Theme — headerHead.tpl override
 * Injects Google Fonts and custom CSS matching theledgereconstatecraft.com
 *}
<head>
    <meta charset="{$defaultCharset|escape}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        {$pageTitleTranslated|strip_tags}
        {if $requestedPage|escape|default:"index" != 'index' && $currentContext && $currentContext->getLocalizedName()}
            | {$currentContext->getLocalizedName()}
        {/if}
    </title>

    {load_header context="frontend"}
    {load_stylesheet context="frontend"}

    <!-- The Ledger: Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- The Ledger: Custom styles matching theledgereconstatecraft.com -->
    <style>
        :root {
            --ledger-accent:      #8b7355;
            --ledger-accent-lt:   #b8956a;
            --ledger-primary:     #1a1a1a;
            --ledger-text:        #2d2d2d;
            --ledger-text-light:  #5a5a5a;
            --ledger-bg:          #fcfcfa;
            --ledger-light-bg:    #fafaf8;
            --ledger-white:       #ffffff;
            --ledger-border:      #e5e5e0;
            --ledger-border-dark: #d0d0c8;
            --font-serif:         'Crimson Text', Georgia, serif;
            --font-display:       'Libre Baskerville', Georgia, serif;
            --font-sans:          'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
        }

        /* ── Base ── */
        body {
            font-family: var(--font-serif) !important;
            font-size: 18px !important;
            line-height: 1.7 !important;
            color: var(--ledger-text) !important;
            background-color: var(--ledger-bg) !important;
            -webkit-font-smoothing: antialiased;
        }

        /* ── Remove default blue top bar ── */
        .pkp_structure_head::before,
        .pkp_structure_page::before,
        #pkp_content_main::before { display: none !important; }

        /* ── Header ── */
        .pkp_structure_head {
            background-color: var(--ledger-white) !important;
            border-top: none !important;
            border-bottom: 2px solid var(--ledger-border) !important;
            box-shadow: 0 1px 3px rgba(0,0,0,0.03) !important;
            padding: 2.5rem 0 0 !important;
        }

        /* Centre the journal name */
        .pkp_site_name {
            text-align: center !important;
            margin-bottom: 1.5rem !important;
            margin-top: -2.5rem !important;
        }

        /* Journal name — hidden when logo is shown via CSS */
        .pkp_site_name a,
        .pkp_structure_head .pkp_site_name a {
            font-family: var(--font-display) !important;
            font-size: 2.5rem !important;
            font-weight: 700 !important;
            color: var(--ledger-primary) !important;
            letter-spacing: -0.5px !important;
            text-decoration: none !important;

            /* Show logo image instead of text */
            display: block !important;
            text-indent: -9999px !important;
            overflow: hidden !important;
            width: 600px !important;
            height: 300px !important;
            margin: 0 auto !important;
            background: url('/public/ledger-logo.png') center/contain no-repeat !important;
        }

        /* Logo image if OJS renders an <img> tag */
        .pkp_site_name img {
            max-width: 420px !important;
            width: 100% !important;
            height: auto !important;
        }

        /* ── Navigation ── */
        .pkp_site_nav_menu {
            background-color: var(--ledger-white) !important;
            border-top: 1px solid var(--ledger-border) !important;
            text-align: center !important;
        }

        .pkp_site_nav_menu > ul {
            display: inline-flex !important;
            justify-content: center !important;
            list-style: none !important;
            margin: 0 !important;
            padding: 0 !important;
        }

        .pkp_navigation_primary > li > a,
        .pkp_nav_primary > li > a,
        .pkp_site_nav_menu > ul > li > a {
            font-family: var(--font-sans) !important;
            font-size: 0.875rem !important;
            font-weight: 500 !important;
            text-transform: uppercase !important;
            letter-spacing: 1.2px !important;
            color: var(--ledger-primary) !important;
            padding: 1.25rem 1.75rem !important;
            transition: color 0.3s ease, background-color 0.3s ease !important;
            position: relative !important;
        }

        .pkp_navigation_primary > li > a:hover,
        .pkp_nav_primary > li > a:hover,
        .pkp_site_nav_menu > ul > li > a:hover {
            color: var(--ledger-accent) !important;
            background-color: var(--ledger-light-bg) !important;
            text-decoration: none !important;
        }

        /* Active nav underline */
        .pkp_navigation_primary > li.pkp_nav_item_active > a::after {
            content: '';
            display: block;
            height: 2px;
            background-color: var(--ledger-accent);
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 60%;
        }

        /* ── Headings ── */
        h1, h2, h3, h4 {
            font-family: var(--font-display) !important;
            color: var(--ledger-primary) !important;
            font-weight: 700 !important;
        }

        /* ── Links ── */
        a { color: var(--ledger-accent) !important; transition: color 0.3s ease !important; }
        a:hover { color: var(--ledger-primary) !important; text-decoration: none !important; }

        /* ── Plain text should never be tan ── */
        p, li, td, th, span, div, label, blockquote {
            color: inherit !important;
        }

        .pkp_structure_main p,
        .pkp_structure_main li,
        .pkp_structure_main span:not(a span) {
            color: var(--ledger-text) !important;
        }

        /* ── Article/Issue previews ── */
        .obj_article_summary,
        .obj_issue_summary,
        .pkp_article_preview {
            padding: 2rem !important;
            border: 1px solid var(--ledger-border) !important;
            background-color: var(--ledger-white) !important;
            margin-bottom: 2rem !important;
            transition: all 0.3s ease !important;
            position: relative !important;
        }

        .obj_article_summary:hover,
        .obj_issue_summary:hover {
            border-color: var(--ledger-border-dark) !important;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08) !important;
            transform: translateY(-2px) !important;
        }

        .obj_article_summary .title a,
        .obj_issue_summary .title a {
            font-family: var(--font-display) !important;
            font-size: 1.5rem !important;
            color: var(--ledger-primary) !important;
            text-decoration: none !important;
            font-weight: 700 !important;
        }

        .obj_article_summary .title a:hover,
        .obj_issue_summary .title a:hover {
            color: var(--ledger-accent) !important;
        }

        /* ── Buttons ── */
        .pkp_button,
        .cmp_footer_site a,
        input[type="submit"],
        button[type="submit"] {
            font-family: var(--font-sans) !important;
            background-color: var(--ledger-accent) !important;
            color: var(--ledger-white) !important;
            border: none !important;
            padding: 0.65rem 1.5rem !important;
            font-size: 0.875rem !important;
            font-weight: 600 !important;
            text-transform: uppercase !important;
            letter-spacing: 1px !important;
            border-radius: 0 !important;
            transition: background-color 0.3s ease !important;
        }

        .pkp_button:hover,
        input[type="submit"]:hover,
        button[type="submit"]:hover {
            background-color: var(--ledger-primary) !important;
            color: var(--ledger-white) !important;
        }

        /* ── Hide search from nav bar ── */
        .pkp_site_nav_menu .pkp_search,
        .pkp_head_wrapper .pkp_search {
            display: none !important;
        }

        /* ── Footer ── */
        .pkp_structure_footer_wrapper {
            background: linear-gradient(to bottom, var(--ledger-bg), var(--ledger-light-bg));
            border-top: 2px solid var(--ledger-border);
            margin-top: 4rem;
        }

        .pkp_structure_footer {
            max-width: 1100px;
            margin: 0 auto;
            padding: 3rem 32px;
            text-align: center;
            background: none !important;
            border: none !important;
        }

        .ledger_footer_inner {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 1.5rem;
        }

        /* Search bar */
        .ledger_footer_search form {
            display: flex;
            justify-content: center;
            gap: 0;
        }

        .ledger_footer_search input[type="search"] {
            font-family: var(--font-sans);
            font-size: 0.875rem;
            border: 1px solid var(--ledger-border);
            border-right: none;
            padding: 0.5rem 1rem;
            width: 260px;
            background: var(--ledger-white);
            color: var(--ledger-text);
            outline: none;
        }

        .ledger_footer_search input[type="search"]:focus {
            border-color: var(--ledger-accent);
        }

        .ledger_footer_search button {
            font-family: var(--font-sans);
            font-size: 0.875rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            background-color: var(--ledger-accent);
            color: var(--ledger-white);
            border: none;
            padding: 0.5rem 1.25rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .ledger_footer_search button:hover {
            background-color: var(--ledger-primary);
        }

        /* Social links */
        .ledger_social_links {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            flex-wrap: wrap;
        }

        .ledger_social_links a {
            font-family: var(--font-sans) !important;
            font-size: 0.95rem !important;
            font-weight: 600 !important;
            color: var(--ledger-primary) !important;
            text-decoration: none !important;
            padding: 0.5rem 1.25rem !important;
            border: 1.5px solid var(--ledger-primary) !important;
            border-radius: 4px !important;
            transition: all 0.3s ease !important;
            letter-spacing: 0.5px !important;
        }

        .ledger_social_links a:hover {
            background-color: var(--ledger-primary) !important;
            color: var(--ledger-white) !important;
            transform: translateY(-2px) !important;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1) !important;
        }

        /* Copyright */
        .ledger_copyright {
            font-family: var(--font-sans) !important;
            font-size: 0.875rem !important;
            color: var(--ledger-text-light) !important;
            margin: 0 !important;
        }

        .pkp_structure_footer,
        .pkp_structure_footer p,
        .pkp_structure_footer a,
        .pkp_footer_content {
            font-family: var(--font-sans) !important;
            font-size: 0.875rem !important;
            color: var(--ledger-text-light) !important;
        }

        .pkp_structure_footer a:hover {
            color: var(--ledger-primary) !important;
            text-decoration: underline !important;
        }

        /* ── Footer ── */
        .pkp_structure_footer_wrapper {
            background: linear-gradient(to bottom, var(--ledger-bg), var(--ledger-light-bg)) !important;
            border-top: 2px solid var(--ledger-border) !important;
            margin-top: 4rem !important;
        }

        .pkp_structure_footer {
            max-width: 1100px !important;
            margin: 0 auto !important;
            padding: 2.5rem 32px !important;
            text-align: center !important;
            background: none !important;
        }

        .pkp_footer_content {
            font-family: var(--font-sans) !important;
            font-size: 0.875rem !important;
            color: var(--ledger-text-light) !important;
        }

        /* Hide the OJS/PKP brand logo in footer */
        .pkp_brand_footer { display: none !important; }

        /* ── Sidebar: hide grey blocks ── */
        .pkp_structure_sidebar { display: none !important; }

        /* Remove the pseudo-element borders on either side of main content */
        .pkp_structure_main::before,
        .pkp_structure_main::after {
            display: none !important;
            content: none !important;
            background: none !important;
            width: 0 !important;
        }

        /* Expand main content to full width — remove sidebar columns */
        .pkp_structure_content {
            display: block !important;
            width: 100% !important;
            max-width: 1100px !important;
            margin: 0 auto !important;
            padding: 0 32px !important;
            border: none !important;
            background: none !important;
        }

        .pkp_structure_main {
            width: 100% !important;
            max-width: 100% !important;
            margin: 0 !important;
            float: none !important;
            padding: 3rem 0 !important;
            border-left: none !important;
            border-right: none !important;
            border-top: none !important;
            border-bottom: none !important;
            background: none !important;
        }

        /* Fix body text color — tan only on links */
        body, p, li, td, .pkp_structure_main {
            color: var(--ledger-text) !important;
        }

        /* ── Remove blue colour bar at top of page ── */
        .has_site_colour .pkp_structure_head {
            border-top: none !important;
        }
        body { border-top: none !important; }

        /* ── Mobile ── */
        @media (max-width: 768px) {
            body { font-size: 16px !important; }

            .pkp_structure_head {
                padding: 1rem 0 0 !important;
                overflow: hidden !important;
            }

            /* Constrain logo on mobile */
            .pkp_site_name a,
            .pkp_structure_head .pkp_site_name a {
                width: 100% !important;
                max-width: 320px !important;
                height: 160px !important;
                margin-top: 0 !important;
            }

            .pkp_site_name img {
                max-width: 280px !important;
                max-height: 140px !important;
            }

            /* Nav: wrap and shrink */
            .pkp_site_nav_menu > ul {
                flex-wrap: wrap !important;
            }

            .pkp_navigation_primary > li > a,
            .pkp_nav_primary > li > a,
            .pkp_site_nav_menu > ul > li > a {
                font-size: 0.72rem !important;
                padding: 0.6rem 0.75rem !important;
                letter-spacing: 0.6px !important;
            }

            /* Content padding */
            .pkp_structure_content {
                padding: 0 16px !important;
            }

            .pkp_structure_main {
                padding: 1.5rem 0 !important;
            }

            /* Article cards */
            .obj_article_summary,
            .obj_issue_summary,
            .pkp_article_preview {
                padding: 1.25rem !important;
            }

            .obj_article_summary .title a,
            .obj_issue_summary .title a {
                font-size: 1.2rem !important;
            }

            /* Article page */
            h1 { font-size: 1.75rem !important; line-height: 1.3 !important; }
            h2 { font-size: 1.4rem !important; }

            /* Footer */
            .pkp_structure_footer {
                padding: 2rem 16px !important;
            }

            .ledger_footer_search input[type="search"] {
                width: 180px !important;
            }
        }
    </style>
</head>
