{
  systemInformation,
  ...
}:

{
  config = {
    home-manager.users."${systemInformation.userName}" = {
      programs.firefox = {
        enable = true;

        policies = {
          DisableTelemetry = true;
          DisableFirefoxStudies = true;
          DontCheckDefaultBrowser = true;
        };

        profiles = {
          default = {
            id = 0;
            name = "Default";
            isDefault = true;

            search = {
              default = "DuckDuckGo";
              force = true;
            };

            settings = {
              "ui.systemUsesDarkTheme" = 1;
              "browser.theme.content-theme" = 0;
              "browser.theme.toolbar-theme" = 0;
              "extensions.activeThemeID" = "firefox-compact-dark@mozilla.org";

              "extensions.pocket.enabled" = false;

              "browser.bookmarks.addedImportButton" = false;
              "browser.toolbars.bookmarks.visibility" = "never";

              "browser.startup.homepage" = "about:blank";
              "startup.homepage_welcome_url" = "about:blank";

              "browser.newtabpage.enabled" = false;
              "identity.fxaccounts.toolbar.enabled" = false;

              "trailhead.firstrun.didSeeAboutWelcome" = true;
            };
          };
        };
      };
    };
  };
}
