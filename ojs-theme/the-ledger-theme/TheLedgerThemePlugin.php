<?php

/**
 * @file plugins/themes/theLedger/TheLedgerThemePlugin.php
 *
 * @brief The Ledger theme for OJS — matches theledgereconstatecraft.com
 * Uses the Default theme as parent and overrides styles.
 */

namespace APP\plugins\themes\theLedger;

use PKP\plugins\ThemePlugin;

class TheLedgerThemePlugin extends ThemePlugin
{
    public function init(): void
    {
        // Inherit all templates and base behaviour from the Default theme
        $this->setParent('defaultThemePlugin');

        // Google Fonts — Libre Baskerville (display), Crimson Text (body), Inter (UI)
        $this->addStyle(
            'ledger-google-fonts',
            'https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400&family=Inter:wght@300;400;500;600;700&display=swap',
            ['baseUrl' => '']
        );

        // Our custom overrides on top of the Default theme
        $this->addStyle('ledger-stylesheet', 'styles/index.less');
    }

    public function getDisplayName(): string
    {
        return 'The Ledger';
    }

    public function getDescription(): string
    {
        return 'Matches the design of theledgereconstatecraft.com — Libre Baskerville / Crimson Text typography with warm tan accent.';
    }
}
