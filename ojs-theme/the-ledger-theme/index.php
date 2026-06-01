<?php
/**
 * The Ledger Theme for OJS 3.x
 * Matches the design of theledgereconstatecraft.com
 */
import('lib.pkp.classes.plugins.ThemePlugin');

class TheLedgerThemePlugin extends ThemePlugin {

    public function init() {
        // Google Fonts
        $this->addStyle(
            'google-fonts',
            'https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400&family=Inter:wght@300;400;500;600;700&display=swap',
            ['baseUrl' => '']
        );

        // Main theme stylesheet
        $this->addStyle('stylesheet', 'styles/index.less');

        // Remove default styles from parent
        $this->removeStyle('stylesheet');
        $this->addStyle('stylesheet', 'styles/index.less');
    }

    public function getDisplayName() {
        return __('plugins.themes.theLedger.name');
    }

    public function getDescription() {
        return __('plugins.themes.theLedger.description');
    }
}
