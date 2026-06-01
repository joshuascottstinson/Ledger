<?php

/**
 * @file plugins/themes/theLedger/TheLedgerThemePlugin.php
 *
 * @brief The Ledger theme for OJS — matches theledgereconstatecraft.com
 */

namespace APP\plugins\themes\theLedger;

use PKP\plugins\ThemePlugin;

class TheLedgerThemePlugin extends ThemePlugin
{
    public function init(): void
    {
        // Google Fonts — Libre Baskerville, Crimson Text, Inter
        $this->addStyle(
            'google-fonts',
            'https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400&family=Inter:wght@300;400;500;600;700&display=swap',
            ['baseUrl' => '']
        );

        // Main stylesheet
        $this->addStyle('stylesheet', 'styles/index.less');
    }

    public function getDisplayName(): string
    {
        return __('plugins.themes.theLedger.name');
    }

    public function getDescription(): string
    {
        return __('plugins.themes.theLedger.description');
    }
}
