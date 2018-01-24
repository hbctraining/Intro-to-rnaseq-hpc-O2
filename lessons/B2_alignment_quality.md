





<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
  <link rel="dns-prefetch" href="https://assets-cdn.github.com">
  <link rel="dns-prefetch" href="https://avatars0.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars1.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars2.githubusercontent.com">
  <link rel="dns-prefetch" href="https://avatars3.githubusercontent.com">
  <link rel="dns-prefetch" href="https://github-cloud.s3.amazonaws.com">
  <link rel="dns-prefetch" href="https://user-images.githubusercontent.com/">



  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/frameworks-98cac35b43fab8341490a2623fdaa7b696bbaea87bccf8f485fd5cdb4996cd9b52bdb24709fb3bab0a0dcff4a29187d65028ee693d609ce5c0c3283c77a247a9.css" integrity="sha512-mMrDW0P6uDQUkKJiP9qntpa7rqh7zPj0hf1c20mWzZtSvbJHCfs7qwoNz/SikYfWUCjuaT1gnOXAwyg8d6JHqQ==" media="all" rel="stylesheet" />
  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-f84b09929e4d948a5727c0c312da25f89ded0439c0e17586ebfabd3b1a40c104c8ccd4f0b2dd5f44ec7c916d4e64a008a3916640b39e225d7afe17d2ae681591.css" integrity="sha512-+EsJkp5NlIpXJ8DDEtol+J3tBDnA4XWG6/q9OxpAwQTIzNTwst1fROx8kW1OZKAIo5FmQLOeIl16/hfSrmgVkQ==" media="all" rel="stylesheet" />
  
  
  
  

  <meta name="viewport" content="width=device-width">
  
  <title>Intro-to-rnaseq-hpc-O2/B2_alignment_quality.md at 3dayworkshop · hbctraining/Intro-to-rnaseq-hpc-O2</title>
  <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
  <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
  <meta property="fb:app_id" content="1401488693436528">

    
    <meta content="https://avatars0.githubusercontent.com/u/24685343?s=400&amp;v=4" property="og:image" /><meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="hbctraining/Intro-to-rnaseq-hpc-O2" property="og:title" /><meta content="https://github.com/hbctraining/Intro-to-rnaseq-hpc-O2" property="og:url" /><meta content="Intro-to-rnaseq-hpc-O2 - This repository has teaching materials for a 2 and 3-day Introduction to RNA-sequencing data analysis workshop using the O2 Cluster" property="og:description" />

  <link rel="assets" href="https://assets-cdn.github.com/">
  <link rel="web-socket" href="wss://live.github.com/_sockets/VjI6MjM3Nzc4NDIyOmEwNWJiNTdkODk1Y2JkYWVkNTlmNDgxZDYzMGMxZWI1ZTk1OWQyMzMwYzJlNjBlM2VhMmEwMDlmZDZhOWNmNzk=--d1893ac92b7f8647e086ed1c12caa745ebcf1dbe">
  <meta name="pjax-timeout" content="1000">
  <link rel="sudo-modal" href="/sessions/sudo_modal">
  <meta name="request-id" content="CCEC:1CF8:19C3787:2B65F4F:5A68E6ED" data-pjax-transient>
  

  <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
  <meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
  <meta name="google-site-verification" content="GXs5KoUUkNCoaAZn7wPN-t01Pywp9M3sEjnt_3_ZWPc">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="https://collector.githubapp.com/github-external/browser_event" name="octolytics-event-url" /><meta content="CCEC:1CF8:19C3787:2B65F4F:5A68E6ED" name="octolytics-dimension-request_id" /><meta content="iad" name="octolytics-dimension-region_edge" /><meta content="iad" name="octolytics-dimension-region_render" /><meta content="6545708" name="octolytics-actor-id" /><meta content="mistrm82" name="octolytics-actor-login" /><meta content="c300dbf939accf78876d4e70e3df37c58b3e4cf5c272b961ad57cdc6ee24c868" name="octolytics-actor-hash" />
<meta content="https://github.com/hydro_browser_events" name="hydro-events-url" />
<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />




  <meta class="js-ga-set" name="dimension1" content="Logged In">


  

      <meta name="hostname" content="github.com">
  <meta name="user-login" content="mistrm82">

      <meta name="expected-hostname" content="github.com">
    <meta name="js-proxy-site-detection-payload" content="ODI0NDM4NWI0YjBhNzUyZDBhZWEyMmFmOWE2NThhOGFjYmNjMTJiYzUyMDlkMDQ1MWRhNzc2YTI1Njc1YzI3NXx7InJlbW90ZV9hZGRyZXNzIjoiMTM0LjE3NC4yNTAuMTU2IiwicmVxdWVzdF9pZCI6IkNDRUM6MUNGODoxOUMzNzg3OjJCNjVGNEY6NUE2OEU2RUQiLCJ0aW1lc3RhbXAiOjE1MTY4MjQzMjQsImhvc3QiOiJnaXRodWIuY29tIn0=">

    <meta name="enabled-features" content="UNIVERSE_BANNER,FREE_TRIALS,CONTRIBUTOR_FLAGGED_CONTENT">

  <meta name="html-safe-nonce" content="e1cd0b2b14c62cf181d3d10c45ffb35688ba3847">

  <meta http-equiv="x-pjax-version" content="46af5e781c258f191337c975586a0291">
  

      <link href="https://github.com/hbctraining/Intro-to-rnaseq-hpc-O2/commits/3dayworkshop.atom" rel="alternate" title="Recent Commits to Intro-to-rnaseq-hpc-O2:3dayworkshop" type="application/atom+xml">

  <meta name="description" content="Intro-to-rnaseq-hpc-O2 - This repository has teaching materials for a 2 and 3-day Introduction to RNA-sequencing data analysis workshop using the O2 Cluster">
  <meta name="go-import" content="github.com/hbctraining/Intro-to-rnaseq-hpc-O2 git https://github.com/hbctraining/Intro-to-rnaseq-hpc-O2.git">

  <meta content="24685343" name="octolytics-dimension-user_id" /><meta content="hbctraining" name="octolytics-dimension-user_login" /><meta content="103979739" name="octolytics-dimension-repository_id" /><meta content="hbctraining/Intro-to-rnaseq-hpc-O2" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="103979739" name="octolytics-dimension-repository_network_root_id" /><meta content="hbctraining/Intro-to-rnaseq-hpc-O2" name="octolytics-dimension-repository_network_root_nwo" /><meta content="false" name="octolytics-dimension-repository_explore_github_marketplace_ci_cta_shown" />


    <link rel="canonical" href="https://github.com/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/lessons/B2_alignment_quality.md" data-pjax-transient>


  <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">

  <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">

  <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#000000">
  <link rel="icon" type="image/x-icon" class="js-site-favicon" href="https://assets-cdn.github.com/favicon.ico">

<meta name="theme-color" content="#1e2327">


  <meta name="u2f-support" content="true">

  </head>

  <body class="logged-in env-production emoji-size-boost page-blob">
    

  <div class="position-relative js-header-wrapper ">
    <a href="#start-of-content" tabindex="1" class="bg-black text-white p-3 show-on-focus js-skip-to-content">Skip to content</a>
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>

    
    
    



        
<header class="Header  f5" role="banner">
  <div class="d-flex px-3 flex-justify-between container-lg">
    <div class="d-flex flex-justify-between">
      <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <svg aria-hidden="true" class="octicon octicon-mark-github" height="32" version="1.1" viewBox="0 0 16 16" width="32"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
</a>


    </div>

    <div class="HeaderMenu d-flex flex-justify-between flex-auto">
      <div class="d-flex">
            <div class="">
              <div class="header-search scoped-search site-scoped-search js-site-search" role="search">
  <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hbctraining/Intro-to-rnaseq-hpc-O2/search" class="js-site-search-form" data-scoped-search-url="/hbctraining/Intro-to-rnaseq-hpc-O2/search" data-unscoped-search-url="/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <label class="form-control header-search-wrapper js-chromeless-input-container">
        <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/lessons/B2_alignment_quality.md" class="header-search-scope no-underline">This repository</a>
      <input type="text"
        class="form-control header-search-input js-site-search-focus js-site-search-field is-clearable"
        data-hotkey="s"
        name="q"
        value=""
        placeholder="Search"
        aria-label="Search this repository"
        data-unscoped-placeholder="Search GitHub"
        data-scoped-placeholder="Search"
        autocapitalize="off">
        <input type="hidden" class="js-site-search-type-field" name="type" >
    </label>
</form></div>

            </div>

          <ul class="d-flex pl-2 flex-items-center text-bold list-style-none" role="navigation">
            <li>
              <a href="/pulls" aria-label="Pull requests you created" class="js-selected-navigation-item HeaderNavlink px-2" data-ga-click="Header, click, Nav menu - item:pulls context:user" data-hotkey="g p" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls">
                Pull requests
</a>            </li>
            <li>
              <a href="/issues" aria-label="Issues you created" class="js-selected-navigation-item HeaderNavlink px-2" data-ga-click="Header, click, Nav menu - item:issues context:user" data-hotkey="g i" data-selected-links="/issues /issues/assigned /issues/mentioned /issues">
                Issues
</a>            </li>
                <li>
                  <a href="/marketplace" class="js-selected-navigation-item HeaderNavlink px-2" data-ga-click="Header, click, Nav menu - item:marketplace context:user" data-selected-links=" /marketplace">
                    Marketplace
</a>                </li>
            <li>
              <a href="/explore" class="js-selected-navigation-item HeaderNavlink px-2" data-ga-click="Header, click, Nav menu - item:explore" data-selected-links="/explore /trending /trending/developers /integrations /integrations/feature/code /integrations/feature/collaborate /integrations/feature/ship showcases showcases_search showcases_landing /explore">
                Explore
</a>            </li>
          </ul>
      </div>

      <div class="d-flex">
        
<ul class="user-nav d-flex flex-items-center list-style-none" id="user-links">
  <li class="dropdown js-menu-container">
    <span class="d-inline-block  px-2">
      
    <a href="/notifications" aria-label="You have no unread notifications" class="notification-indicator tooltipped tooltipped-s  js-socket-channel js-notification-indicator" data-channel="notification-changed:6545708" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
        <span class="mail-status "></span>
        <svg aria-hidden="true" class="octicon octicon-bell" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 12v1H0v-1l.73-.58c.77-.77.81-2.55 1.19-4.42C2.69 3.23 6 2 6 2c0-.55.45-1 1-1s1 .45 1 1c0 0 3.39 1.23 4.16 5 .38 1.88.42 3.66 1.19 4.42l.66.58H14zm-7 4c1.11 0 2-.89 2-2H5c0 1.11.89 2 2 2z"/></svg>
</a>
    </span>
  </li>

  <li class="dropdown js-menu-container">
    <details class="dropdown-details details-reset js-dropdown-details d-flex px-2 flex-items-center">
      <summary class="HeaderNavlink"
         aria-label="Create new…"
         data-ga-click="Header, create new, icon:add">
        <svg aria-hidden="true" class="octicon octicon-plus float-left mr-1 mt-1" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 9H7v5H5V9H0V7h5V2h2v5h5z"/></svg>
        <span class="dropdown-caret mt-1"></span>
      </summary>

      <ul class="dropdown-menu dropdown-menu-sw">
        
<a class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
  New repository
</a>

  <a class="dropdown-item" href="/new/import" data-ga-click="Header, import a repository">
    Import repository
  </a>

<a class="dropdown-item" href="https://gist.github.com/" data-ga-click="Header, create new gist">
  New gist
</a>

  <a class="dropdown-item" href="/organizations/new" data-ga-click="Header, create new organization">
    New organization
  </a>



  <div class="dropdown-divider"></div>
  <div class="dropdown-header">
    <span title="hbctraining/Intro-to-rnaseq-hpc-O2">This repository</span>
  </div>
    <a class="dropdown-item" href="/hbctraining/Intro-to-rnaseq-hpc-O2/issues/new" data-ga-click="Header, create new issue">
      New issue
    </a>

      </ul>
    </details>
  </li>

  <li class="dropdown js-menu-container">

    <details class="dropdown-details details-reset js-dropdown-details d-flex pl-2 flex-items-center">
      <summary class="HeaderNavlink name mt-1"
        aria-label="View profile and more"
        data-ga-click="Header, show menu, icon:avatar">
        <img alt="@mistrm82" class="avatar float-left mr-1" src="https://avatars0.githubusercontent.com/u/6545708?s=40&amp;v=4" height="20" width="20">
        <span class="dropdown-caret"></span>
      </summary>

      <ul class="dropdown-menu dropdown-menu-sw">
        <li class="dropdown-header header-nav-current-user css-truncate">
          Signed in as <strong class="css-truncate-target">mistrm82</strong>
        </li>

        <li class="dropdown-divider"></li>

        <li><a class="dropdown-item" href="/mistrm82" data-ga-click="Header, go to profile, text:your profile">
          Your profile
        </a></li>
        <li><a class="dropdown-item" href="/mistrm82?tab=stars" data-ga-click="Header, go to starred repos, text:your stars">
          Your stars
        </a></li>
          <li><a class="dropdown-item" href="https://gist.github.com/" data-ga-click="Header, your gists, text:your gists">Your Gists</a></li>

        <li class="dropdown-divider"></li>

        <li><a class="dropdown-item" href="https://help.github.com" data-ga-click="Header, go to help, text:help">
          Help
        </a></li>

        <li><a class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">
          Settings
        </a></li>

        <li><!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="BVpTU1328MSk9U5Vc+c8e8RIJNgMA0naG0U3JWVw5/FqZ3ksceMhJIi2vH+0+btXWuzcsJy5mNsxuNpmezfAKg==" /></div>
          <button type="submit" class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
            Sign out
          </button>
        </form></li>
      </ul>
    </details>
  </li>
</ul>


        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/logout" class="sr-only right-0" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="bt/dpaUiNPdJRa2/3WbL9NH6R/ppLvOBeuxKC65IGNUB4vfaiTflF2UGX5UaeEzYT16/kvmUIoBQEadIsA8/Dg==" /></div>
          <button type="submit" class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
            Sign out
          </button>
</form>      </div>
    </div>
  </div>
</header>

      

  </div>

  <div id="start-of-content" class="show-on-focus"></div>

    <div id="js-flash-container">
</div>



  <div role="main" class="application-main ">
        <div itemscope itemtype="http://schema.org/SoftwareSourceCode" class="">
    <div id="js-repo-pjax-container" data-pjax-container >
      




  



  <div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav  ">
    <div class="repohead-details-container clearfix container">

      <ul class="pagehead-actions">
  <li>
        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="ns2mKPg1C1JO6BOhivYLy/X07zVEpwk75hhSSZpwdV0wuRpp0MCGWFXo5wg0cK7YzwJ0Bo4ublZkyVqxYdU/Og==" /></div>      <input class="form-control" id="repository_id" name="repository_id" type="hidden" value="103979739" />

        <div class="select-menu js-menu-container js-select-menu">
          <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/subscription"
            class="btn btn-sm btn-with-count select-menu-button js-menu-target"
            role="button"
            aria-haspopup="true"
            aria-expanded="false"
            aria-label="Toggle repository notifications menu"
            data-ga-click="Repository, click Watch settings, action:blob#show">
            <span class="js-select-button">
                <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
                Unwatch
            </span>
          </a>
          <a class="social-count js-social-count"
            href="/hbctraining/Intro-to-rnaseq-hpc-O2/watchers"
            aria-label="3 users are watching this repository">
            3
          </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content">
            <div class="select-menu-header js-navigation-enable" tabindex="-1">
              <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
              <span class="select-menu-title">Notifications</span>
            </div>

              <div class="select-menu-list js-navigation-container" role="menu">

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
                  <div class="select-menu-item-text">
                    <input id="do_included" name="do" type="radio" value="included" />
                    <span class="select-menu-item-heading">Not watching</span>
                    <span class="description">Be notified when participating or @mentioned.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
                      Watch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
                  <div class="select-menu-item-text">
                    <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                    <span class="select-menu-item-heading">Watching</span>
                    <span class="description">Be notified of all conversations.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
                        Unwatch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
                  <div class="select-menu-item-text">
                    <input id="do_ignore" name="do" type="radio" value="ignore" />
                    <span class="select-menu-item-heading">Ignoring</span>
                    <span class="description">Never be notified.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-mute" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8 2.81v10.38c0 .67-.81 1-1.28.53L3 10H1c-.55 0-1-.45-1-1V7c0-.55.45-1 1-1h2l3.72-3.72C7.19 1.81 8 2.14 8 2.81zm7.53 3.22l-1.06-1.06-1.97 1.97-1.97-1.97-1.06 1.06L11.44 8 9.47 9.97l1.06 1.06 1.97-1.97 1.97 1.97 1.06-1.06L13.56 8l1.97-1.97z"/></svg>
                        Stop ignoring
                    </span>
                  </div>
                </div>

              </div>

            </div>
          </div>
        </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hbctraining/Intro-to-rnaseq-hpc-O2/unstar" class="starred js-social-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="soaL/BI+j+fpQgFgpG+fIpwxVoF0M0oJI9O3BbfPeEm19SRAGJJ0FhYqQUk8m6+ic2tYr9F1vFrKcS/N9o5dgw==" /></div>
      <input type="hidden" name="context" value="repository"></input>
      <button
        type="submit"
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar hbctraining/Intro-to-rnaseq-hpc-O2"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"/></svg>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/hbctraining/Intro-to-rnaseq-hpc-O2/stargazers"
           aria-label="0 users starred this repository">
          0
        </a>
</form>
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hbctraining/Intro-to-rnaseq-hpc-O2/star" class="unstarred js-social-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="lxha1bFWD6i1ApjNy6L7YWJrtDz0cXqjEMJjlyBBp8QAPDhuM32KRLPaEyGdJrvsDm9NLtFV2CWSACupn8APfw==" /></div>
      <input type="hidden" name="context" value="repository"></input>
      <button
        type="submit"
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star hbctraining/Intro-to-rnaseq-hpc-O2"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"/></svg>
        Star
      </button>
        <a class="social-count js-social-count" href="/hbctraining/Intro-to-rnaseq-hpc-O2/stargazers"
           aria-label="0 users starred this repository">
          0
        </a>
</form>  </div>

  </li>

  <li>
          <a href="#fork-destination-box" class="btn btn-sm btn-with-count"
              title="Fork your own copy of hbctraining/Intro-to-rnaseq-hpc-O2 to your account"
              aria-label="Fork your own copy of hbctraining/Intro-to-rnaseq-hpc-O2 to your account"
              rel="facebox"
              data-ga-click="Repository, show fork modal, action:blob#show; text:Fork">
              <svg aria-hidden="true" class="octicon octicon-repo-forked" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
            Fork
          </a>

          <div id="fork-destination-box" style="display: none;">
            <h2 class="facebox-header" data-facebox-id="facebox-header">Where should we fork this repository?</h2>
            <include-fragment src=""
                class="js-fork-select-fragment fork-select-fragment"
                data-url="/hbctraining/Intro-to-rnaseq-hpc-O2/fork?fragment=1">
              <img alt="Loading" height="64" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-128.gif" width="64" />
            </include-fragment>
          </div>

    <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/network" class="social-count"
       aria-label="3 users forked this repository">
      3
    </a>
  </li>
</ul>

      <h1 class="public ">
  <svg aria-hidden="true" class="octicon octicon-repo" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/></svg>
  <span class="author" itemprop="author"><a href="/hbctraining" class="url fn" rel="author">hbctraining</a></span><!--
--><span class="path-divider">/</span><!--
--><strong itemprop="name"><a href="/hbctraining/Intro-to-rnaseq-hpc-O2" data-pjax="#js-repo-pjax-container">Intro-to-rnaseq-hpc-O2</a></strong>

</h1>

    </div>
    
<nav class="reponav js-repo-nav js-sidenav-container-pjax container"
     itemscope
     itemtype="http://schema.org/BreadcrumbList"
     role="navigation"
     data-pjax="#js-repo-pjax-container">

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/tree/3dayworkshop" class="js-selected-navigation-item selected reponav-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches repo_packages /hbctraining/Intro-to-rnaseq-hpc-O2/tree/3dayworkshop" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-code" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M9.5 3L8 4.5 11.5 8 8 11.5 9.5 13 14 8 9.5 3zm-5 0L0 8l4.5 5L6 11.5 2.5 8 6 4.5 4.5 3z"/></svg>
      <span itemprop="name">Code</span>
      <meta itemprop="position" content="1">
</a>  </span>

    <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
      <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/issues" class="js-selected-navigation-item reponav-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /hbctraining/Intro-to-rnaseq-hpc-O2/issues" itemprop="url">
        <svg aria-hidden="true" class="octicon octicon-issue-opened" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M7 2.3c3.14 0 5.7 2.56 5.7 5.7s-2.56 5.7-5.7 5.7A5.71 5.71 0 0 1 1.3 8c0-3.14 2.56-5.7 5.7-5.7zM7 1C3.14 1 0 4.14 0 8s3.14 7 7 7 7-3.14 7-7-3.14-7-7-7zm1 3H6v5h2V4zm0 6H6v2h2v-2z"/></svg>
        <span itemprop="name">Issues</span>
        <span class="Counter">8</span>
        <meta itemprop="position" content="2">
</a>    </span>

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/pulls" class="js-selected-navigation-item reponav-item" data-hotkey="g p" data-selected-links="repo_pulls /hbctraining/Intro-to-rnaseq-hpc-O2/pulls" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-git-pull-request" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 11.28V5c-.03-.78-.34-1.47-.94-2.06C9.46 2.35 8.78 2.03 8 2H7V0L4 3l3 3V4h1c.27.02.48.11.69.31.21.2.3.42.31.69v6.28A1.993 1.993 0 0 0 10 15a1.993 1.993 0 0 0 1-3.72zm-1 2.92c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zM4 3c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v6.56A1.993 1.993 0 0 0 2 15a1.993 1.993 0 0 0 1-3.72V4.72c.59-.34 1-.98 1-1.72zm-.8 10c0 .66-.55 1.2-1.2 1.2-.65 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
      <span itemprop="name">Pull requests</span>
      <span class="Counter">0</span>
      <meta itemprop="position" content="3">
</a>  </span>

    <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/projects" class="js-selected-navigation-item reponav-item" data-hotkey="g b" data-selected-links="repo_projects new_repo_project repo_project /hbctraining/Intro-to-rnaseq-hpc-O2/projects">
      <svg aria-hidden="true" class="octicon octicon-project" height="16" version="1.1" viewBox="0 0 15 16" width="15"><path fill-rule="evenodd" d="M10 12h3V2h-3v10zm-4-2h3V2H6v8zm-4 4h3V2H2v12zm-1 1h13V1H1v14zM14 0H1a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h13a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"/></svg>
      Projects
      <span class="Counter" >0</span>
</a>
    <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/wiki" class="js-selected-navigation-item reponav-item" data-hotkey="g w" data-selected-links="repo_wiki /hbctraining/Intro-to-rnaseq-hpc-O2/wiki">
      <svg aria-hidden="true" class="octicon octicon-book" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M3 5h4v1H3V5zm0 3h4V7H3v1zm0 2h4V9H3v1zm11-5h-4v1h4V5zm0 2h-4v1h4V7zm0 2h-4v1h4V9zm2-6v9c0 .55-.45 1-1 1H9.5l-1 1-1-1H2c-.55 0-1-.45-1-1V3c0-.55.45-1 1-1h5.5l1 1 1-1H15c.55 0 1 .45 1 1zm-8 .5L7.5 3H2v9h6V3.5zm7-.5H9.5l-.5.5V12h6V3z"/></svg>
      Wiki
</a>

  <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/pulse" class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors dependency_graph pulse /hbctraining/Intro-to-rnaseq-hpc-O2/pulse">
    <svg aria-hidden="true" class="octicon octicon-graph" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M16 14v1H0V0h1v14h15zM5 13H3V8h2v5zm4 0H7V3h2v10zm4 0h-2V6h2v7z"/></svg>
    Insights
</a>
    <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/settings" class="js-selected-navigation-item reponav-item" data-selected-links="repo_settings repo_branch_settings hooks integration_installations repo_keys_settings /hbctraining/Intro-to-rnaseq-hpc-O2/settings">
      <svg aria-hidden="true" class="octicon octicon-gear" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 8.77v-1.6l-1.94-.64-.45-1.09.88-1.84-1.13-1.13-1.81.91-1.09-.45-.69-1.92h-1.6l-.63 1.94-1.11.45-1.84-.88-1.13 1.13.91 1.81-.45 1.09L0 7.23v1.59l1.94.64.45 1.09-.88 1.84 1.13 1.13 1.81-.91 1.09.45.69 1.92h1.59l.63-1.94 1.11-.45 1.84.88 1.13-1.13-.92-1.81.47-1.09L14 8.75v.02zM7 11c-1.66 0-3-1.34-3-3s1.34-3 3-3 3 1.34 3 3-1.34 3-3 3z"/></svg>
      Settings
</a>
</nav>


  </div>

<div class="container new-discussion-timeline experiment-repo-nav  ">
  <div class="repository-content ">

    
  <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/778c8a10b8179329e8b460566b8a9cdc9dfd5020/lessons/B2_alignment_quality.md" class="d-none js-permalink-shortcut" data-hotkey="y">Permalink</a>

  <!-- blob contrib key: blob_contributors:v21:be56bb1354e9c960975405a3771a14c5 -->

  <div class="file-navigation js-zeroclipboard-container">
    
<div class="select-menu branch-select-menu js-menu-container js-select-menu float-left">
  <button class=" btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    
    type="button" aria-label="Switch branches or tags" aria-expanded="false" aria-haspopup="true">
      <i>Branch:</i>
      <span class="js-select-button css-truncate-target">3dayworkshop</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="form-control js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Find or create a branch…" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/2dayworkshop/lessons/B2_alignment_quality.md"
               data-name="2dayworkshop"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                2dayworkshop
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/lessons/B2_alignment_quality.md"
               data-name="3dayworkshop"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                3dayworkshop
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/master/lessons/B2_alignment_quality.md"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                master
              </span>
            </a>
        </div>

          <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hbctraining/Intro-to-rnaseq-hpc-O2/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="jrvRK0wE1or1LVn/bDRTqsfDaekiVENGZ+rx3ReLrJPxCzgm6U+10e2myKtKki4RENpIbE5ZjqvjWBnTpXDeGQ==" /></div>
          <svg aria-hidden="true" class="octicon octicon-git-branch select-menu-item-icon" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
            <div class="select-menu-item-text">
              <span class="select-menu-item-heading">Create branch: <span class="js-new-item-name"></span></span>
              <span class="description">from ‘3dayworkshop’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="3dayworkshop">
            <input type="hidden" name="path" id="path" value="lessons/B2_alignment_quality.md">
</form>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

    <div class="BtnGroup float-right">
      <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/find/3dayworkshop"
            class="js-pjax-capture-input btn btn-sm BtnGroup-item"
            data-pjax
            data-hotkey="t">
        Find file
      </a>
      <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm BtnGroup-item tooltipped tooltipped-s" data-copied-hint="Copied!" type="button">Copy path</button>
    </div>
    <div class="breadcrumb js-zeroclipboard-target">
      <span class="repo-root js-repo-root"><span class="js-path-segment"><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/tree/3dayworkshop"><span>Intro-to-rnaseq-hpc-O2</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/tree/3dayworkshop/lessons"><span>lessons</span></a></span><span class="separator">/</span><strong class="final-path">B2_alignment_quality.md</strong>
    </div>
  </div>


  
  <div class="commit-tease">
      <span class="float-right">
        <a class="commit-tease-sha" href="/hbctraining/Intro-to-rnaseq-hpc-O2/commit/7683766424d80984aec710583e54b45e3c34932e" data-pjax>
          7683766
        </a>
        <relative-time datetime="2017-09-26T19:34:28Z">Sep 26, 2017</relative-time>
      </span>
      <div>
        <img alt="@rkhetani" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/3046150?s=40&amp;v=4" width="20" />
        <a href="/rkhetani" class="user-mention" rel="contributor">rkhetani</a>
          <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/commit/7683766424d80984aec710583e54b45e3c34932e" class="message" data-pjax="true" title="Update B2_alignment_quality.md">Update B2_alignment_quality.md</a>
      </div>

    <div class="commit-tease-contributors">
      <button type="button" class="btn-link muted-link contributors-toggle" data-facebox="#blob_contributors_box">
        <strong>2</strong>
         contributors
      </button>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="mistrm82" href="/hbctraining/Intro-to-rnaseq-hpc-O2/commits/3dayworkshop/lessons/B2_alignment_quality.md?author=mistrm82"><img alt="@mistrm82" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/6545708?s=40&amp;v=4" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="rkhetani" href="/hbctraining/Intro-to-rnaseq-hpc-O2/commits/3dayworkshop/lessons/B2_alignment_quality.md?author=rkhetani"><img alt="@rkhetani" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/3046150?s=40&amp;v=4" width="20" /> </a>


    </div>

    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header" data-facebox-id="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list" data-facebox-id="facebox-description">
          <li class="facebox-user-list-item">
            <img alt="@mistrm82" height="24" src="https://avatars1.githubusercontent.com/u/6545708?s=48&amp;v=4" width="24" />
            <a href="/mistrm82">mistrm82</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@rkhetani" height="24" src="https://avatars0.githubusercontent.com/u/3046150?s=48&amp;v=4" width="24" />
            <a href="/rkhetani">rkhetani</a>
          </li>
      </ul>
    </div>
  </div>


  <div class="file">
    <div class="file-header">
  <div class="file-actions">

    <div class="BtnGroup">
      <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/raw/3dayworkshop/lessons/B2_alignment_quality.md" class="btn btn-sm BtnGroup-item" id="raw-url">Raw</a>
        <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blame/3dayworkshop/lessons/B2_alignment_quality.md" class="btn btn-sm js-update-url-with-hash BtnGroup-item" data-hotkey="b">Blame</a>
      <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/commits/3dayworkshop/lessons/B2_alignment_quality.md" class="btn btn-sm BtnGroup-item" rel="nofollow">History</a>
    </div>

        <a class="btn-octicon tooltipped tooltipped-nw"
           href="https://desktop.github.com"
           aria-label="Open this file in GitHub Desktop"
           data-ga-click="Repository, open with desktop, type:mac">
            <svg aria-hidden="true" class="octicon octicon-device-desktop" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M15 2H1c-.55 0-1 .45-1 1v9c0 .55.45 1 1 1h5.34c-.25.61-.86 1.39-2.34 2h8c-1.48-.61-2.09-1.39-2.34-2H15c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm0 9H1V3h14v8z"/></svg>
        </a>

          <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hbctraining/Intro-to-rnaseq-hpc-O2/edit/3dayworkshop/lessons/B2_alignment_quality.md" class="inline-form js-update-url-with-hash" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="w+oGIF5bOffL2Mdp2Zg1Ib8NO82+1CLVBa5YEZ5WEAjToR6YwLewZK4Yt50LjVp3ElHauePaD3Nsey+HEy/x0g==" /></div>
            <button class="btn-octicon tooltipped tooltipped-nw" type="submit"
              aria-label="Edit this file" data-hotkey="e" data-disable-with>
              <svg aria-hidden="true" class="octicon octicon-pencil" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 0 1 1.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"/></svg>
            </button>
</form>
        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hbctraining/Intro-to-rnaseq-hpc-O2/delete/3dayworkshop/lessons/B2_alignment_quality.md" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="gkKTMvQLX/w9eWjbEDolESN40fOjXGhnAeii4opa/JiPyVVPfhGkPGX6qOxZ7D4ae2yHFwZzqEI6LsUYBZJq8A==" /></div>
          <button class="btn-octicon btn-octicon-danger tooltipped tooltipped-nw" type="submit"
            aria-label="Delete this file" data-disable-with>
            <svg aria-hidden="true" class="octicon octicon-trashcan" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 2H9c0-.55-.45-1-1-1H5c-.55 0-1 .45-1 1H2c-.55 0-1 .45-1 1v1c0 .55.45 1 1 1v9c0 .55.45 1 1 1h7c.55 0 1-.45 1-1V5c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm-1 12H3V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9zm1-10H2V3h9v1z"/></svg>
          </button>
</form>  </div>

  <div class="file-info">
      259 lines (157 sloc)
      <span class="file-info-divider"></span>
    17.1 KB
  </div>
</div>

    
  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text"><table data-table-type="yaml-metadata">
  <thead>
  <tr>
  <th>title</th>
  <th>author</th>
  <th>date</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td><div>SAM/BAM file and assessing quality </div></td>
  <td><div>Meeta Mistry, Bob Freeman</div></td>
  <td><div>Tuesday, June 28, 2016</div></td>
  </tr>
  </tbody>
</table>

<p>Approximate time: 120 minutes</p>
<h2><a href="#learning-objectives" aria-hidden="true" class="anchor" id="user-content-learning-objectives"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Learning objectives</h2>
<ul>
<li>Evaluating the STAR aligner output files</li>
<li>Understanding the standard alignment file (SAM/BAM) structure</li>
<li>Using <code>samtools</code> to evaluate alignment quality</li>
<li>Visualizing alignment quality using IGV (genome browser)</li>
</ul>
<h2><a href="#assessing-alignment-quality" aria-hidden="true" class="anchor" id="user-content-assessing-alignment-quality"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Assessing alignment quality</h2>
<p>After running our single FASTQ file through the STAR aligner, you should have noticed a number of output files in the <code>~/unix_workshop/rnaseq/results/STAR</code> directory. Let's take a quick look at some of the files that were generated and explore the content of some of them.</p>
<pre><code>$ cd ~/unix_workshop/rnaseq/results/STAR

$ ls -lh
</code></pre>
<p>What you should see, is that for each FASTQ file you have <strong>5 output files</strong> and a single tmp directory. Briefly, these files are described below:</p>
<ul>
<li><code>Log.final.out</code> - a summary of mapping statistics for the sample</li>
<li><code>Aligned.sortedByCoord.out.bam</code> - the aligned reads, sorted by coordinate, in BAM format</li>
<li><code>Log.out</code> - a running log from STAR, with information about the run</li>
<li><code>Log.progress.out</code> -  job progress with the number of processed reads, % of mapped reads etc., updated every ~1 minute</li>
<li><code>SJ.out.tab</code> - high confidence collapsed splice junctions in tab-delimited format. Only junctions supported by uniquely mapping reads are reported</li>
</ul>
<h2><a href="#mapping-statistics" aria-hidden="true" class="anchor" id="user-content-mapping-statistics"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Mapping statistics</h2>
<p>Having completed the alignment, the first thing we want to know is how well did our reads align to the reference. Rather than looking at each read alignment, it can be more useful to evaluate statistics that give a general overview for the sample. One of the output files from the STAR aligner contains mapping statistics, let's take a closer look at one of those files. We'll use the <code>less</code> command which allows us to scroll through it easily:</p>
<pre><code>$ less Mov10_oe_1_Log.final.out
</code></pre>
<p>The log file provides information on reads that 1) mapped uniquely, 2) reads that mapped to mutliple locations and 3) reads that are unmapped. Additionally, we get details on splicing, insertion and deletion. From this file the most informative statistics include the <strong>mapping rate and the number of multimappers</strong>.</p>
<ul>
<li>As an example, a good quality sample will have <strong>at least 75% of the reads uniquely mapped</strong>. Once values start to drop lower than 60% it's advisable to start troubleshooting. The lower the number of uniquely mapping reads means the higher the number of reads that are mapping to multiple locations. It is best to keep this number low because multi-mappers are not included when we start counting reads</li>
</ul>
<blockquote>
<p>NOTE: The thresholds suggested above will vary depending on the organism that you are working with. Much of what is discussed here is in the context of working with human or mouse data. For example, 75% of mapped reads holds true only if the genome is good or mature. For badly assembled genomes we may not observe a high mapping rate, even if the actual sequence sample is good.</p>
</blockquote>
<hr>
<p><strong>Exercise</strong></p>
<p>Using the less command take a look at <code>Mov10_oe_1_Log.final.out</code> and answer the following questions:</p>
<ol>
<li>How many reads map to more than 10 locations on the genome?</li>
<li>How many reads are unmapped due to read length?</li>
<li>What is the average mapped length per read?</li>
</ol>
<hr>
<h2><a href="#other-quality-checks" aria-hidden="true" class="anchor" id="user-content-other-quality-checks"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Other quality checks</h2>
<p>In addition to the aligner-specific summary we can also obtain quality metrics using tools like <a href="http://qualimap.bioinfo.cipf.es/doc_html/intro.html#what-is-qualimap" rel="nofollow">Qualimap</a> or <a href="http://archive.broadinstitute.org/cancer/cga/rna-seqc" rel="nofollow">RNASeQC</a>. These tools examine sequencing alignment data according to the features of the mapped reads and their genomic properties and <strong>provide an overall view of the data that helps to to the detect biases in the sequencing and/or mapping of the data</strong>.The input can be one or more BAM files and the output consists of HTML or PDF reports with useful figures and tab delimited files of metrics data.</p>
<p>We will not be performing this step in the workshop, but we describe some of the features below to point out things to look for when assessing alignment quality of RNA-seq data:</p>
<ul>
<li><strong>Reads genomic origin</strong>: Even if you have high genomic mapping rate for all samples, check to see where the reads are mapping. Ensure that there is not an unusually high number of <strong>reads mapping to intronic regions</strong> (~30% expected) and fewer than normally observed <strong>mapping to exons</strong> (~55%). A high intronic mapping suggests possible genomic DNA contamination and/or pre-mRNA.</li>
<li><strong>Ribosomal RNA (rRNA)</strong> constitutes a large majority of the RNA species in any total RNA preparation. Despite depletion methods, you can never achieve complete rRNA removal. Even with Poly-A enrichment a small percentage of ribosomal RNA can stick to the enrichment beads non-specifically. <strong>Excess ribosomal content (&gt; 2%)</strong> will normally have to be filtered out so that differences in rRNA mapped reads across samples do not affect alignment rates and skew subsequent normalization of the data.</li>
<li><strong>Transcript coverage and 5'-3' bias</strong>: assesing the affect on expression level and on levels of transcript GC content</li>
<li><strong>Junction analysis</strong>: analysis of junction positions in spliced alignments (i.e known, partly known, novel)</li>
<li><strong>Strand specificity:</strong> assess the performance of strand-specific library construction methods. The percentage of sense-derived reads is given for each end of the read pair. A non-strand-specific protocol would give values of 50%/50%, whereas strand-specific protocols typically yield 99%/1% or 1%/99% for this metric.</li>
</ul>
<h2><a href="#alignment-file-format-sambam" aria-hidden="true" class="anchor" id="user-content-alignment-file-format-sambam"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Alignment file format: SAM/BAM</h2>
<p>The output we requested from the STAR aligner (using the appropriate parameters) is a BAM file. By default STAR will return a file in SAM format. BAM is a binary, compressed version of the SAM file, also known as <strong>Sequence Alignment Map format</strong>. The SAM file, introduced is a tab-delimited text file that contains information for each individual read and its alignment to the genome. While we will go into some features of the SAM format, the paper by <a href="http://bioinformatics.oxfordjournals.org/content/25/16/2078.full" rel="nofollow">Heng Li et al</a> provides a lot more detail on the specification.</p>
<p>The file begins with a <strong>header</strong>, which is optional. The header is used to describe source of data, reference sequence, method of alignment, etc., this will change depending on the aligner being used. Each section begins with character ‘@’ followed by a two-letter record type code.  These are followed by two-letter tags and values. Example of some common sections are provided below:</p>
<pre><code>@HD  The header line
VN: format version
SO: Sorting order of alignments

@SQ  Reference sequence dictionary
SN: reference sequence name
LN: reference sequence length
SP: species

@PG  Program
PN: program name
VN: program version
</code></pre>
<p>Following the header is the <strong>alignment section</strong>. Each line that follows corresponds to alignment information for a single read. Each alignment line has <strong>11 mandatory fields for essential mapping information</strong> and a variable number of other fields for aligner specific information.</p>
<p><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/img/sam_bam.png" target="_blank"><img src="/hbctraining/Intro-to-rnaseq-hpc-O2/raw/3dayworkshop/img/sam_bam.png" alt="SAM1" style="max-width:100%;"></a></p>
<p>An example read mapping is displayed above. <em>Note that the example above spans two lines, but in the file it is a single line.</em> Let's go through the fields one at a time. First, you have the read name (<code>QNAME</code>), followed by a <code>FLAG</code></p>
<p>The <code>FLAG</code> value that is displayed can be translated into information about the mapping.</p>
<table>
<thead>
<tr>
<th align="right">Flag</th>
<th align="center">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td align="right">1</td>
<td align="center">read is mapped</td>
</tr>
<tr>
<td align="right">2</td>
<td align="center">read is mapped as part of a pair</td>
</tr>
<tr>
<td align="right">4</td>
<td align="center">read is unmapped</td>
</tr>
<tr>
<td align="right">8</td>
<td align="center">mate is unmapped</td>
</tr>
<tr>
<td align="right">16</td>
<td align="center">read reverse strand</td>
</tr>
<tr>
<td align="right">32</td>
<td align="center">mate reverse strand</td>
</tr>
<tr>
<td align="right">64</td>
<td align="center">first in pair</td>
</tr>
<tr>
<td align="right">128</td>
<td align="center">second in pair</td>
</tr>
<tr>
<td align="right">256</td>
<td align="center">not primary alignment</td>
</tr>
<tr>
<td align="right">512</td>
<td align="center">read fails platform/vendor quality checks</td>
</tr>
<tr>
<td align="right">1024</td>
<td align="center">read is PCR or optical duplicate</td>
</tr></tbody></table>
<ul>
<li>For a given alignment, each of these flags are either <strong>on or off</strong> indicating the condition is <strong>true or false</strong>.</li>
<li>The <code>FLAG</code> is a combination of all of the individual flags (from the table above) that are true for the alignment</li>
<li>The beauty of the flag values is that any combination of flags can only result in one sum.</li>
</ul>
<p>In our example we have a number that exist in the table, making it relatively easy to translate. But suppose our read alignment has a flag of 163 -- what does this translate to? It is the sum of 4 different flags:</p>
<p><code>163 = 1 + 2 + 32 + 128</code></p>
<p>Which tells us that:</p>
<ol>
<li>the read is mapped</li>
<li>the read is mapped as part of a pair</li>
<li>this is the mate reverse strand</li>
<li>this read is the second of the pair</li>
</ol>
<p><strong>There are tools that help you translate the bitwise flag, for example <a href="https://broadinstitute.github.io/picard/explain-flags.html" rel="nofollow">this one from Picard</a></strong></p>
<p>Moving along the fields of the SAM file, we then have <code>RNAME</code> which is the reference sequence name. The example read is from chromosome 1 which explains why we see 'chr1'. <code>POS</code> refers to the 1-based leftmost position of the alignment. <code>MAPQ</code> is giving us the alignment quality, the scale of which will depend on the aligner being used.</p>
<p><code>CIGAR</code> is a sequence of letters and numbers that represent the <em>edits or operations</em> required to match the read to the reference. The letters are operations that are used to indicate which bases align to the reference (i.e. match, mismatch, deletion, insertion), and the numbers indicate the associated base lengths for each 'operation'.</p>
<table>
<thead>
<tr>
<th align="right">Operation</th>
<th align="center">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td align="right">M</td>
<td align="center">sequence match or mismatch</td>
</tr>
<tr>
<td align="right">I</td>
<td align="center">insertion to the reference</td>
</tr>
<tr>
<td align="right">D</td>
<td align="center">deletion from reference</td>
</tr>
<tr>
<td align="right">N</td>
<td align="center">skipped region from the reference</td>
</tr></tbody></table>
<p>Suppose our read has a CIGAR string of <code>50M3I80M2D</code> which translates to:</p>
<ul>
<li>50 matches or mismatches</li>
<li>3 bp insertion</li>
<li>80 matches/mismatches</li>
<li>2 bp deletion</li>
</ul>
<p>Now to the remaning fields in our SAM file:</p>
<p><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/img/sam_bam3.png" target="_blank"><img src="/hbctraining/Intro-to-rnaseq-hpc-O2/raw/3dayworkshop/img/sam_bam3.png" alt="SAM1" style="max-width:100%;"></a></p>
<p>The next three fields are more pertinent to paired-end data. <code>MRNM</code> is the mate reference name. <code>MPOS</code> is the mate position (1-based, leftmost). <code>ISIZE</code> is the inferred insert size.</p>
<p>Finally, you have the data from the original FASTQ file stored for each read. That is the raw sequence (<code>SEQ</code>) and the associated quality values for each position in the read (<code>QUAL</code>).</p>
<h2><a href="#samtools" aria-hidden="true" class="anchor" id="user-content-samtools"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><code>samtools</code></h2>
<p><a href="http://samtools.sourceforge.net/" rel="nofollow">SAMtools</a> is a tool that provides alot of functionality in dealing with SAM files. SAMtools utilities include, but are not limited to, viewing, sorting, filtering, merging, and indexing alignments in the SAM format. In this lesson we will explore a few of these utilities on our alignment files. We have already loaded this module when setting up for the STAR alignment.</p>
<h3><a href="#viewing-the-sam-file" aria-hidden="true" class="anchor" id="user-content-viewing-the-sam-file"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Viewing the SAM file</h3>
<p>Now that we have learned so much about the SAM file format, let's use <code>samtools</code> to take a quick peek at our own files. The output we had requested from STAR was a BAM file. The problem is the BAM file is binary and not human-readable. Using the <code>view</code> command within <code>samtools</code> we can easily convert the BAM into something that we can understand. You will be returned to screen the entire SAM file, and so we can either write to file, or pipe this to the <code>less</code> command so we can scroll through it.</p>
<p>We will do the latter (since we don't really need it for downstream analysis) and scroll through the SAM file (using the up and down arrows) to see how the fields correspond to what we expected. Adding the <code>-h</code> flag allows to also view the header.</p>
<pre><code>$ samtools view -h Mov10_oe_1_Aligned.sortedByCoord.out.bam | less

</code></pre>
<h3><a href="#filtering-the-sam-file" aria-hidden="true" class="anchor" id="user-content-filtering-the-sam-file"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Filtering the SAM file</h3>
<p>Now we know that we have all of this information for each of the reads -- wouldn't it be useful to summarize and filter based on selected criteria? Suppose we wanted to set a <strong>threshold on mapping quality</strong>. For example, we want to know how many reads aligned with a quality score higher than 30. To do this, we can combine the <code>view</code> command with additional flags <code>q 30</code> and <code>-c</code> (to count):</p>
<pre><code>$ samtools view -q 30 -c Mov10_oe_1_Aligned.sortedByCoord.out.bam

</code></pre>
<p><em>How many of reads have a mapping quality of 30 or higher?</em></p>
<p>We can also <strong>apply filters to select reads based on where they fall within the <code>FLAG</code> categories</strong>. Remember that the bitwise flags are like boolean values. If the flag exists, the statement is true. Similar to when filtering by quality we need to use the <code>samtools view</code> command, however this time use the <code>-F</code> or <code>-f</code> flags.</p>
<ul>
<li><code>-f</code> - to find the reads that agree with the flag statement</li>
<li><code>-F</code>  - to find the reads that do not agree with the flag statement</li>
</ul>
<pre><code>## This will tell us how many reads are unmapped
$ samtools view -f 4 -c Mov10_oe_1_Aligned.sortedByCoord.out.bam

## This should give us the remaining reads that do not have this flag set (i.e reads that are mapped)
$ samtools view -F 4 -c Mov10_oe_1_Aligned.sortedByCoord.out.bam
</code></pre>
<h3><a href="#indexing-the-bam-file" aria-hidden="true" class="anchor" id="user-content-indexing-the-bam-file"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Indexing the BAM file</h3>
<p>To perform some functions (i.e. subsetting, visualization) on the BAM file, an index is required. Think of an index located at the back of a textbook. When you are interested in a particular subject area you look for the keyword in the index and identify the pages that contain the relevant information. Similaril indexing the BAM file aims to achieve fast retrieval of alignments overlapping a specified region without going through the whole alignment file. In order to index a BAM file, it must first be sorted by the reference ID and then the leftmost coordinate, which can also be done with <code>samtools</code>. However, in our case we had included a parameter in our STAR alignment run so we know our BAM files are already sorted.</p>
<p>To index the BAM file we use the <code>index</code> command:</p>
<pre><code>$ samtools index Mov10_oe_1_Aligned.sortedByCoord.out.bam
</code></pre>
<p>This will create an index in the same directory as the BAM file, which will be identical to the input file in name but with an added extension of <code>.bai</code>.</p>
<hr>
<p><strong>Exercise:</strong></p>
<p>The STAR log file for <code>Mov10_oe_1</code> indicated that there were a certain number of reads mapping to multiple locations. When this happens, one of these alignments is considered
primary and all the other alignments have the secondary alignment flag set in the SAM records. <strong>Use <code>samtools</code> and your knowledge of <a href="https://github.com/hbc/NGS_Data_Analysis_Course/blob/master/sessionII/lessons/03_alignment_quality.md#bitwise-flags-explained">bitwise flags</a> to find count how many secondary reads there are for <code>Mov10_oe_1</code>.</strong></p>
<hr>
<h2><a href="#visualization" aria-hidden="true" class="anchor" id="user-content-visualization"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Visualization</h2>
<p>Another method for assessing the quality of your alignment is to visualize the alignment using a genome browser. For this course we will be using the <a href="https://www.broadinstitute.org/igv/" rel="nofollow">Integrative Genomics Viewer (IGV)</a> from the Broad Institute. <em>You should already have this downloaded on your laptop.</em> IGV is an interactive tool which allows exploration of large, integrated genomic datasets. It supports a wide variety of data types, including array-based and next-generation sequence data, and genomic annotations, which facilitates invaluable comparisons.</p>
<h3><a href="#transfer-files" aria-hidden="true" class="anchor" id="user-content-transfer-files"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Transfer files</h3>
<p>In order to visualize our alignments we will first need to move over the relevant files. We previously used FileZilla to transfer files from O2 to your laptop. However, there is another way to do so using the command line interface. <strong>This option is only available for Mac and Linux users! PC users can use Filezilla.</strong>  Similar to the <code>cp</code> command to copy there is a command that allows you to securely copy files between computers. <strong>The command is called <code>scp</code> and allows files to be copied to, from, or between different hosts.</strong> It uses ssh for data transfer and provides the same authentication and same level of security as ssh.</p>
<p>First, identify the location of the <em>origin file</em> you intend to copy, followed by the <em>destination</em> of that file. Since the origin file is located on O2, this requires you to provide remote host and login information.</p>
<p>The following 2 files need to be moved from O2 to your local machine,</p>
<p><code>Mov10_oe_1_Aligned.sortedByCoord.out.bam</code>,</p>
<p><code>Mov10_oe_1_Aligned.sortedByCoord.out.bam.bai</code></p>
<pre><code>$ scp user_name@o2.hms.harvard.edu:/home/user_name/unix_workshop/rnaseq/results/Mov10_oe_1_Aligned.sortedByCoord.out.bam* /path/to/directory_on_laptop
</code></pre>
<h3><a href="#visualize" aria-hidden="true" class="anchor" id="user-content-visualize"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Visualize</h3>
<ul>
<li>Start <a href="https://www.broadinstitute.org/software/igv/download" rel="nofollow">IGV</a> <em>You should have this previously installed on your laptop</em></li>
<li>Load the Human genome (hg19) into IGV using the dropdown menu at the top left of your screen. <em>Note: there is also an option to "Load Genomes from File..." under the "Genomes" pull-down menu - this is useful when working with non-model organisms</em></li>
<li>Load the .bam file using the <strong>"Load from File..."</strong> option under the <strong>"File"</strong> pull-down menu. <em>IGV requires the .bai file to be in the same location as the .bam file that is loaded into IGV, but there is no direct use for that file.</em></li>
</ul>
<p><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/img/IGV_mov10.png" target="_blank"><img src="/hbctraining/Intro-to-rnaseq-hpc-O2/raw/3dayworkshop/img/IGV_mov10.png" alt="IGV screenshot" style="max-width:100%;"></a></p>
<hr>
<p><strong>Exercise</strong></p>
<p>Take a look at a few other genes by typing into the search bar. For example, PPM1J and PTPN22. How do these genes look?</p>
<hr>
<hr>
<p><em>This lesson has been developed by members of the teaching team at the <a href="http://bioinformatics.sph.harvard.edu/" rel="nofollow">Harvard Chan Bioinformatics Core (HBC)</a>. These are open access materials distributed under the terms of the <a href="https://creativecommons.org/licenses/by/4.0/" rel="nofollow">Creative Commons Attribution license</a> (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.</em></p>
</article>
  </div>

  </div>

  <button type="button" data-facebox="#jump-to-line" data-facebox-class="linejump" data-hotkey="l" class="d-none">Jump to Line</button>
  <div id="jump-to-line" style="display:none">
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
      <input class="form-control linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
      <button type="submit" class="btn">Go</button>
</form>  </div>


  </div>
  <div class="modal-backdrop js-touch-events"></div>
</div>

    </div>
  </div>

  </div>

      
<div class="footer container-lg px-3" role="contentinfo">
  <div class="position-relative d-flex flex-justify-between py-6 mt-6 f6 text-gray border-top border-gray-light ">
    <ul class="list-style-none d-flex flex-wrap ">
      <li class="mr-3">&copy; 2018 <span title="0.20432s from unicorn-1829679912-7xjlv">GitHub</span>, Inc.</li>
        <li class="mr-3"><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li class="mr-3"><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li class="mr-3"><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li class="mr-3"><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>

    <a href="https://github.com" aria-label="Homepage" class="footer-octicon" title="GitHub">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="24" version="1.1" viewBox="0 0 16 16" width="24"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
</a>
    <ul class="list-style-none d-flex flex-wrap ">
        <li class="mr-3"><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact GitHub</a></li>
      <li class="mr-3"><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li class="mr-3"><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li class="mr-3"><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li class="mr-3"><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>
  </div>
</div>



  <div id="ajax-error-message" class="ajax-error-message flash flash-error">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
    <button type="button" class="flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
    </button>
    You can't perform that action at this time.
  </div>


    
    <script crossorigin="anonymous" integrity="sha512-5eNCJxF6JRFBIlzpDhOCOCr061HNcJA5uzFU7PZ14+GkNvTUaLgS4Ai42IhsAU9E4G2B/u/a2s/6UsbTwUc5UA==" src="https://assets-cdn.github.com/assets/frameworks-e5e34227117a251141225ce90e1382382af4eb51cd709039bb3154ecf675e3e1a436f4d468b812e008b8d8886c014f44e06d81feefdadacffa52c6d3c1473950.js"></script>
    
    <script async="async" crossorigin="anonymous" integrity="sha512-KaoGOE5qGSgH8cA8uXCwoKLnWu+zdMixOMkJl4tliq/RD8rHSjkAm2hGxym+iKf4JfycDd9zX8i3GY5nFwi5bg==" src="https://assets-cdn.github.com/assets/github-29aa06384e6a192807f1c03cb970b0a0a2e75aefb374c8b138c909978b658aafd10fcac74a39009b6846c729be88a7f825fc9c0ddf735fc8b7198e671708b96e.js"></script>
    
    
    
    
  <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner d-none">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
    <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
    <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
  </div>
  <div class="facebox" id="facebox" style="display:none;">
  <div class="facebox-popup">
    <div class="facebox-content" role="dialog" aria-labelledby="facebox-header" aria-describedby="facebox-description">
    </div>
    <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
    </button>
  </div>
</div>


  </body>
</html>

