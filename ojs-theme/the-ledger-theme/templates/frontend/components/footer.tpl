{**
 * The Ledger Theme — footer.tpl override
 * Matches theledgereconstatecraft.com footer with social links, copyright, and search.
 *}

        </div><!-- pkp_structure_main -->

</div><!-- pkp_structure_content -->

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
</body>
</html>
