{**
 * The Ledger Theme — footer.tpl override
 * Matches theledgereconstatecraft.com footer with social links, copyright, and search.
 *}

        </div><!-- pkp_structure_main -->

</div><!-- pkp_structure_content -->

<style>
@media (max-width: 768px) {
    body { font-size: 16px !important; }
    .pkp_structure_head { padding: 1rem 0 0 !important; overflow: hidden !important; }
    .pkp_site_name a,
    .pkp_structure_head .pkp_site_name a {
        width: 100% !important;
        max-width: 300px !important;
        height: 150px !important;
        margin-top: 0 !important;
    }
    .pkp_site_name img { max-width: 280px !important; max-height: 140px !important; }
    .pkp_site_nav_menu > ul { flex-wrap: wrap !important; }
    .pkp_navigation_primary > li > a,
    .pkp_nav_primary > li > a,
    .pkp_site_nav_menu > ul > li > a {
        font-size: 0.72rem !important;
        padding: 0.6rem 0.75rem !important;
        letter-spacing: 0.6px !important;
    }
    .pkp_structure_content { padding: 0 16px !important; }
    .pkp_structure_main { padding: 1.5rem 0 !important; }
    .obj_article_summary, .obj_issue_summary, .pkp_article_preview { padding: 1.25rem !important; }
    .obj_article_summary .title a, .obj_issue_summary .title a { font-size: 1.2rem !important; }
    h1 { font-size: 1.75rem !important; line-height: 1.3 !important; }
    h2 { font-size: 1.4rem !important; }
    .pkp_structure_footer { padding: 2rem 16px !important; }
    .ledger_footer_search input[type="search"] { width: 180px !important; }
}
</style>

<div class="pkp_structure_footer_wrapper" role="contentinfo">
    <a id="pkp_content_footer"></a>

    <div class="pkp_structure_footer">
        <div class="ledger_footer_inner">

            {* Search bar *}
            <div class="ledger_footer_search">
                <form method="get" action="{url page="search" op="search"}">
                    <input type="search" name="query" placeholder="Search The Ledger…" aria-label="Search">
                    <button type="submit">Search</button>
                </form>
            </div>

            {* Social links *}
            <div class="ledger_social_links">
                <a href="https://www.linkedin.com/company/108013419/" target="_blank" rel="noopener noreferrer">LinkedIn</a>
                <a href="https://x.com/TheLedgerEcon" target="_blank" rel="noopener noreferrer">X</a>
                <a href="https://bsky.app/profile/theledgerecon.bsky.social" target="_blank" rel="noopener noreferrer">Bluesky</a>
            </div>

            {* Copyright *}
            <p class="ledger_copyright">
                &copy; {$smarty.now|date_format:"Y"} The Ledger &mdash; A Journal of Economic Statecraft. All rights reserved.
            </p>

        </div>
    </div>
</div><!-- pkp_structure_footer_wrapper -->

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}

<script>
// Force mobile nav to show — override OJS hamburger JS
(function() {
    function fixMobileNav() {
        if (window.innerWidth <= 768) {
            var nav = document.getElementById('navigationPrimary');
            var toggle = document.querySelector('.pkp_site_nav_toggle');
            if (nav) {
                nav.style.setProperty('display', 'flex', 'important');
                nav.style.setProperty('flex-wrap', 'wrap', 'important');
                nav.style.setProperty('justify-content', 'center', 'important');
            }
            if (toggle) {
                toggle.style.setProperty('display', 'none', 'important');
            }
        }
    }
    document.addEventListener('DOMContentLoaded', fixMobileNav);
    window.addEventListener('resize', fixMobileNav);
    // Run after any OJS JS that might run on load
    window.addEventListener('load', fixMobileNav);
    setTimeout(fixMobileNav, 500);
})();
</script>
</body>
</html>
