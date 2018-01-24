





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
  
  <title>Intro-to-rnaseq-hpc-O2/B1_alignment.md at 3dayworkshop · hbctraining/Intro-to-rnaseq-hpc-O2</title>
  <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
  <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
  <meta property="fb:app_id" content="1401488693436528">

    
    <meta content="https://avatars0.githubusercontent.com/u/24685343?s=400&amp;v=4" property="og:image" /><meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="hbctraining/Intro-to-rnaseq-hpc-O2" property="og:title" /><meta content="https://github.com/hbctraining/Intro-to-rnaseq-hpc-O2" property="og:url" /><meta content="Intro-to-rnaseq-hpc-O2 - This repository has teaching materials for a 2 and 3-day Introduction to RNA-sequencing data analysis workshop using the O2 Cluster" property="og:description" />

  <link rel="assets" href="https://assets-cdn.github.com/">
  <link rel="web-socket" href="wss://live.github.com/_sockets/VjI6MjM3Nzc4NDIyOjhmMDJkOGEzYzIxNmRjZGQ4NWQzNGVjNWQxOWM4YTk0Zjk4OWI2ZWYxMjMxMjliZDQxMzU5OTgzMjQ0Y2VkNmM=--7b7512d24ffb2d05b2e53a2e218e71d77f682a7d">
  <meta name="pjax-timeout" content="1000">
  <link rel="sudo-modal" href="/sessions/sudo_modal">
  <meta name="request-id" content="CCEC:1CF8:19C2750:2B65EC2:5A68E6ED" data-pjax-transient>
  

  <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
  <meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
  <meta name="google-site-verification" content="GXs5KoUUkNCoaAZn7wPN-t01Pywp9M3sEjnt_3_ZWPc">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="https://collector.githubapp.com/github-external/browser_event" name="octolytics-event-url" /><meta content="CCEC:1CF8:19C2750:2B65EC2:5A68E6ED" name="octolytics-dimension-request_id" /><meta content="iad" name="octolytics-dimension-region_edge" /><meta content="iad" name="octolytics-dimension-region_render" /><meta content="6545708" name="octolytics-actor-id" /><meta content="mistrm82" name="octolytics-actor-login" /><meta content="c300dbf939accf78876d4e70e3df37c58b3e4cf5c272b961ad57cdc6ee24c868" name="octolytics-actor-hash" />
<meta content="https://github.com/hydro_browser_events" name="hydro-events-url" />
<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />




  <meta class="js-ga-set" name="dimension1" content="Logged In">


  

      <meta name="hostname" content="github.com">
  <meta name="user-login" content="mistrm82">

      <meta name="expected-hostname" content="github.com">
    <meta name="js-proxy-site-detection-payload" content="M2Y0ZjY4ZTk2MTQ3NzNmMTZlY2E0MDBkOTNkZWNjNzI5ZDU5YmFlM2YyNjhiNzg4ZWU0YmQyMGE0NzlhYjMyMXx7InJlbW90ZV9hZGRyZXNzIjoiMTM0LjE3NC4yNTAuMTU2IiwicmVxdWVzdF9pZCI6IkNDRUM6MUNGODoxOUMyNzUwOjJCNjVFQzI6NUE2OEU2RUQiLCJ0aW1lc3RhbXAiOjE1MTY4MjQzMDEsImhvc3QiOiJnaXRodWIuY29tIn0=">

    <meta name="enabled-features" content="UNIVERSE_BANNER,FREE_TRIALS,CONTRIBUTOR_FLAGGED_CONTENT">

  <meta name="html-safe-nonce" content="e1cd0b2b14c62cf181d3d10c45ffb35688ba3847">

  <meta http-equiv="x-pjax-version" content="46af5e781c258f191337c975586a0291">
  

      <link href="https://github.com/hbctraining/Intro-to-rnaseq-hpc-O2/commits/3dayworkshop.atom" rel="alternate" title="Recent Commits to Intro-to-rnaseq-hpc-O2:3dayworkshop" type="application/atom+xml">

  <meta name="description" content="Intro-to-rnaseq-hpc-O2 - This repository has teaching materials for a 2 and 3-day Introduction to RNA-sequencing data analysis workshop using the O2 Cluster">
  <meta name="go-import" content="github.com/hbctraining/Intro-to-rnaseq-hpc-O2 git https://github.com/hbctraining/Intro-to-rnaseq-hpc-O2.git">

  <meta content="24685343" name="octolytics-dimension-user_id" /><meta content="hbctraining" name="octolytics-dimension-user_login" /><meta content="103979739" name="octolytics-dimension-repository_id" /><meta content="hbctraining/Intro-to-rnaseq-hpc-O2" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="103979739" name="octolytics-dimension-repository_network_root_id" /><meta content="hbctraining/Intro-to-rnaseq-hpc-O2" name="octolytics-dimension-repository_network_root_nwo" /><meta content="false" name="octolytics-dimension-repository_explore_github_marketplace_ci_cta_shown" />


    <link rel="canonical" href="https://github.com/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/lessons/B1_alignment.md" data-pjax-transient>


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
        <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/lessons/B1_alignment.md" class="header-search-scope no-underline">This repository</a>
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

        <li><!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="oTqL60VSkqfKgpIK/+biI7Q310ZJaBREia+XxDvYI8POB6GUaUdDR+bBYCA4+GUPKpMvLtnSxUWjUnqHJZ8EGA==" /></div>
          <button type="submit" class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
            Sign out
          </button>
        </form></li>
      </ul>
    </details>
  </li>
</ul>


        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/logout" class="sr-only right-0" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="2PD/w9G3sSntIfiaxj3ZHqTn3n9LAAJlaOwWgHTCAFm3zdW8/aJgycFiCrABI14yOkMmF9u602RCEfvDaoUngg==" /></div>
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
        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="sDCwwTNQIgGjV0YL8672byxza5CpzfdL2porZA5IhsIeRAyAG6WvC7hXsqJNKFN8FoXwo2NEkCZYSyOc9e3MpQ==" /></div>      <input class="form-control" id="repository_id" name="repository_id" type="hidden" value="103979739" />

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
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hbctraining/Intro-to-rnaseq-hpc-O2/unstar" class="starred js-social-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="2RAmzuIMPLrxpfChGH3DmwJjKXeADLMAvFqvkimSs7DeY4ly6KDHSw7NsIiAifMb7TknWSVKRVNV+DdaaNOWeg==" /></div>
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
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hbctraining/Intro-to-rnaseq-hpc-O2/star" class="unstarred js-social-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="bVmtG5ndXqWddAjrDV4A78C23xF9PHSIUywNL1Mq1Bv6fc+gG/bbSZusgwdb2kBirLImA1gY1g7R7kUR7Kt8oA==" /></div>
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

    
  <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/778c8a10b8179329e8b460566b8a9cdc9dfd5020/lessons/B1_alignment.md" class="d-none js-permalink-shortcut" data-hotkey="y">Permalink</a>

  <!-- blob contrib key: blob_contributors:v21:d75458adee807a9cd20c1d224c21c7f4 -->

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
               href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/2dayworkshop/lessons/B1_alignment.md"
               data-name="2dayworkshop"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                2dayworkshop
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/lessons/B1_alignment.md"
               data-name="3dayworkshop"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                3dayworkshop
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/master/lessons/B1_alignment.md"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                master
              </span>
            </a>
        </div>

          <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hbctraining/Intro-to-rnaseq-hpc-O2/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="bQpGGOuFC10hKWCCfWIpzbGRPUaTzilJ6dpCpcDSSnwSuq8VTs5oBjmi8dZbxFR2Zogcw//D5KRtaKqrcik49g==" /></div>
          <svg aria-hidden="true" class="octicon octicon-git-branch select-menu-item-icon" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
            <div class="select-menu-item-text">
              <span class="select-menu-item-heading">Create branch: <span class="js-new-item-name"></span></span>
              <span class="description">from ‘3dayworkshop’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="3dayworkshop">
            <input type="hidden" name="path" id="path" value="lessons/B1_alignment.md">
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
      <span class="repo-root js-repo-root"><span class="js-path-segment"><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/tree/3dayworkshop"><span>Intro-to-rnaseq-hpc-O2</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/tree/3dayworkshop/lessons"><span>lessons</span></a></span><span class="separator">/</span><strong class="final-path">B1_alignment.md</strong>
    </div>
  </div>


  
  <div class="commit-tease">
      <span class="float-right">
        <a class="commit-tease-sha" href="/hbctraining/Intro-to-rnaseq-hpc-O2/commit/8208338c47b31a32d31eb0c0b65b35cb362c6bf3" data-pjax>
          8208338
        </a>
        <relative-time datetime="2017-09-26T17:56:20Z">Sep 26, 2017</relative-time>
      </span>
      <div>
        <img alt="@marypiper" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/7414912?s=40&amp;v=4" width="20" />
        <a href="/marypiper" class="user-mention" rel="contributor">marypiper</a>
          <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/commit/8208338c47b31a32d31eb0c0b65b35cb362c6bf3" class="message" data-pjax="true" title="Update B1_alignment.md">Update B1_alignment.md</a>
      </div>

    <div class="commit-tease-contributors">
      <button type="button" class="btn-link muted-link contributors-toggle" data-facebox="#blob_contributors_box">
        <strong>3</strong>
         contributors
      </button>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="mistrm82" href="/hbctraining/Intro-to-rnaseq-hpc-O2/commits/3dayworkshop/lessons/B1_alignment.md?author=mistrm82"><img alt="@mistrm82" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/6545708?s=40&amp;v=4" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="rkhetani" href="/hbctraining/Intro-to-rnaseq-hpc-O2/commits/3dayworkshop/lessons/B1_alignment.md?author=rkhetani"><img alt="@rkhetani" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/3046150?s=40&amp;v=4" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="marypiper" href="/hbctraining/Intro-to-rnaseq-hpc-O2/commits/3dayworkshop/lessons/B1_alignment.md?author=marypiper"><img alt="@marypiper" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/7414912?s=40&amp;v=4" width="20" /> </a>


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
          <li class="facebox-user-list-item">
            <img alt="@marypiper" height="24" src="https://avatars3.githubusercontent.com/u/7414912?s=48&amp;v=4" width="24" />
            <a href="/marypiper">marypiper</a>
          </li>
      </ul>
    </div>
  </div>


  <div class="file">
    <div class="file-header">
  <div class="file-actions">

    <div class="BtnGroup">
      <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/raw/3dayworkshop/lessons/B1_alignment.md" class="btn btn-sm BtnGroup-item" id="raw-url">Raw</a>
        <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blame/3dayworkshop/lessons/B1_alignment.md" class="btn btn-sm js-update-url-with-hash BtnGroup-item" data-hotkey="b">Blame</a>
      <a href="/hbctraining/Intro-to-rnaseq-hpc-O2/commits/3dayworkshop/lessons/B1_alignment.md" class="btn btn-sm BtnGroup-item" rel="nofollow">History</a>
    </div>

        <a class="btn-octicon tooltipped tooltipped-nw"
           href="https://desktop.github.com"
           aria-label="Open this file in GitHub Desktop"
           data-ga-click="Repository, open with desktop, type:mac">
            <svg aria-hidden="true" class="octicon octicon-device-desktop" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M15 2H1c-.55 0-1 .45-1 1v9c0 .55.45 1 1 1h5.34c-.25.61-.86 1.39-2.34 2h8c-1.48-.61-2.09-1.39-2.34-2H15c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm0 9H1V3h14v8z"/></svg>
        </a>

          <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hbctraining/Intro-to-rnaseq-hpc-O2/edit/3dayworkshop/lessons/B1_alignment.md" class="inline-form js-update-url-with-hash" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="mSKJQGws/lr9R9jHozrXbpJ1IIQrxflIP2GvLf2QdQ1x3sO3Qf7L9eQOlN/S+y+/EBVjm4mb5aVePTG70H8Brw==" /></div>
            <button class="btn-octicon tooltipped tooltipped-nw" type="submit"
              aria-label="Edit this file" data-hotkey="e" data-disable-with>
              <svg aria-hidden="true" class="octicon octicon-pencil" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 0 1 1.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"/></svg>
            </button>
</form>
        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hbctraining/Intro-to-rnaseq-hpc-O2/delete/3dayworkshop/lessons/B1_alignment.md" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="359Z1JIXP1V79nFEv6qXRKI5+3McM6Vi2KQAoNx2Ki1e/BbxN3A7zb8InWJXAjRWiqMjw9f2+atIon2Bv95SWg==" /></div>
          <button class="btn-octicon btn-octicon-danger tooltipped tooltipped-nw" type="submit"
            aria-label="Delete this file" data-disable-with>
            <svg aria-hidden="true" class="octicon octicon-trashcan" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 2H9c0-.55-.45-1-1-1H5c-.55 0-1 .45-1 1H2c-.55 0-1 .45-1 1v1c0 .55.45 1 1 1v9c0 .55.45 1 1 1h7c.55 0 1-.45 1-1V5c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm-1 12H3V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9zm1-10H2V3h9v1z"/></svg>
          </button>
</form>  </div>

  <div class="file-info">
      226 lines (149 sloc)
      <span class="file-info-divider"></span>
    11 KB
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
  <td><div>Alignment with STAR</div></td>
  <td><div>Meeta Mistry, Bob Freeman, Mary Piper</div></td>
  <td><div>Wednesday, June 7, 2017</div></td>
  </tr>
  </tbody>
</table>

<p>Approximate time: 90 minutes</p>
<h2><a href="#learning-objectives" aria-hidden="true" class="anchor" id="user-content-learning-objectives"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Learning Objectives:</h2>
<ul>
<li>Understanding the alignment method STAR utilizes to align sequence reads to the reference genome</li>
<li>Identifying the intricacies of alignment tools used in NGS analysis (parameters, usage, etc)</li>
<li>Choosing appropriate STAR alignment parameters for our dataset</li>
</ul>
<h2><a href="#read-alignment" aria-hidden="true" class="anchor" id="user-content-read-alignment"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Read Alignment</h2>
<p><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/img/RNAseqWorkflow.png" target="_blank"><img src="/hbctraining/Intro-to-rnaseq-hpc-O2/raw/3dayworkshop/img/RNAseqWorkflow.png" width="400" style="max-width:100%;"></a></p>
<p>Now that we have explored the quality of our raw reads, we can move on to read alignment. We perform read alignment or mapping to determine where in the genome the reads originated from. The alignment process consists of choosing an appropriate reference genome to map our reads against and performing the read alignment using one of several splice-aware alignment tools such as <a href="http://bioinformatics.oxfordjournals.org/content/early/2012/10/25/bioinformatics.bts635" rel="nofollow">STAR</a> or <a href="http://ccb.jhu.edu/software/hisat2/index.shtml" rel="nofollow">HISAT2</a>. The choice of aligner is often a personal preference and also dependent on the computational resources that are available to you.</p>
<h2><a href="#star-aligner" aria-hidden="true" class="anchor" id="user-content-star-aligner"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>STAR Aligner</h2>
<p>To determine where on the human genome our reads originated from, we will align our reads to the reference genome using <a href="http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3530905/" rel="nofollow">STAR</a> (Spliced Transcripts Alignment to a Reference). STAR is an aligner designed to specifically address many of the challenges of RNA-seq data mapping using a strategy to account for spliced alignments.</p>
<h3><a href="#star-alignment-strategy" aria-hidden="true" class="anchor" id="user-content-star-alignment-strategy"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>STAR Alignment Strategy</h3>
<p>STAR is shown to have high accuracy and outperforms other aligners by more than a factor of 50 in mapping speed, but it is memory intensive. The algorithm achieves this highly efficient mapping by performing a two-step process:</p>
<ol>
<li>Seed searching</li>
<li>Clustering, stitching, and scoring</li>
</ol>
<h4><a href="#seed-searching" aria-hidden="true" class="anchor" id="user-content-seed-searching"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Seed searching</h4>
<p>For every read that STAR aligns, STAR will search for the longest sequence that exactly matches one or more locations on the reference genome. These longest matching sequences are called the Maximal Mappable Prefixes (MMPs):</p>
<p><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/img/alignment_STAR_step1.png" target="_blank"><img src="/hbctraining/Intro-to-rnaseq-hpc-O2/raw/3dayworkshop/img/alignment_STAR_step1.png" alt="STAR_step1" style="max-width:100%;"></a></p>
<p>The different parts of the read that are mapped separately are called 'seeds'. So the first MMP that is mapped to the genome is called <em>seed1</em>.</p>
<p>STAR will then search again for only the unmapped portion of the read to find the next longest sequence that exactly matches the reference genome, or the next MMP, which will be <em>seed2</em>.</p>
<p><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/img/alignment_STAR_step2.png" target="_blank"><img src="/hbctraining/Intro-to-rnaseq-hpc-O2/raw/3dayworkshop/img/alignment_STAR_step2.png" alt="STAR_step2" style="max-width:100%;"></a></p>
<p>This sequential searching of only the unmapped portions of reads underlies the efficiency of the STAR algorithm. STAR uses an uncompressed suffix array (SA) to efficiently search for the MMPs, this allows for quick searching against even the largest reference genomes. Other slower aligners use algorithms that often search for the entire read sequence before splitting reads and performing iterative rounds of mapping.</p>
<p><strong>If STAR does not find an exact matching sequence</strong> for each part of the read due to mismatches or indels, the previous MMPs will be extended.</p>
<p><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/img/alignment_STAR_step3.png" target="_blank"><img src="/hbctraining/Intro-to-rnaseq-hpc-O2/raw/3dayworkshop/img/alignment_STAR_step3.png" alt="STAR_step3" style="max-width:100%;"></a></p>
<p><strong>If extension does not give a good alignment</strong>, then the poor quality or adapter sequence (or other contaminating sequence) will be soft clipped.</p>
<p><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/img/alignment_STAR_step4.png" target="_blank"><img src="/hbctraining/Intro-to-rnaseq-hpc-O2/raw/3dayworkshop/img/alignment_STAR_step4.png" alt="STAR_step4" style="max-width:100%;"></a></p>
<h4><a href="#clustering-stitching-and-scoring" aria-hidden="true" class="anchor" id="user-content-clustering-stitching-and-scoring"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Clustering, stitching, and scoring</h4>
<p>The separate seeds are stitched together to create a complete read by first clustering the seeds together based on proximity to a set of 'anchor' seeds, or seeds that are not multi-mapping.</p>
<p>Then the seeds are stitched together based on the best alignment for the read (scoring based on mismatches, indels, gaps, etc.).</p>
<p><a href="/hbctraining/Intro-to-rnaseq-hpc-O2/blob/3dayworkshop/img/alignment_STAR_step5.png" target="_blank"><img src="/hbctraining/Intro-to-rnaseq-hpc-O2/raw/3dayworkshop/img/alignment_STAR_step5.png" alt="STAR_step5" style="max-width:100%;"></a></p>
<h2><a href="#running-star" aria-hidden="true" class="anchor" id="user-content-running-star"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Running STAR</h2>
<h3><a href="#set-up" aria-hidden="true" class="anchor" id="user-content-set-up"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Set-up</h3>
<p>To get started with this lesson, start an interactive session with 6 cores:</p>
<div class="highlight highlight-source-shell"><pre>$ srun --pty -p interactive -t 0-12:00 -n 6 --mem 8G --reservation=hbc bash	</pre></div>
<p>You should have a directory tree setup similar to that shown below. it is best practice to have all files you intend on using for your workflow present within the same directory. In our case, we have our original FASTQ files generated in the previous section. We also have all reference data files that will be used in downstream analyses.</p>
<div class="highlight highlight-source-shell"><pre>rnaseq
	├── logs
	├── meta
	├── raw_data
	│   ├── Irrel_kd_1.subset.fq
	│   ├── Irrel_kd_2.subset.fq
	│   ├── Irrel_kd_3.subset.fq
	│   ├── Mov10_oe_1.subset.fq
	│   ├── Mov10_oe_2.subset.fq
	│   └── Mov10_oe_3.subset.fq
	├── reference_data
	│   ├── chr1.fa
	│   └── chr1-hg19_genes.gtf
	├── results
	└── scripts</pre></div>
<p>Change directories into the <code>reference_data</code> folder.</p>
<div class="highlight highlight-source-shell"><pre>$ <span class="pl-c1">cd</span> <span class="pl-k">~</span>/unix_workshop/rnaseq/reference_data</pre></div>
<p>To use the STAR aligner, load the module:</p>
<div class="highlight highlight-source-shell"><pre>$ module load gcc/6.2.0 star/2.5.2b samtools/1.3.1</pre></div>
<p>Aligning reads using STAR is a two step process:</p>
<ol>
<li>Create a genome index</li>
<li>Map reads to the genome</li>
</ol>
<blockquote>
<p>A quick note on shared databases for human and other commonly used model organisms. The O2 cluster has a designated directory at <code>/n/groups/shared_databases/</code> in which there are files that can be accessed by any user. These files contain, but are not limited to, genome indices for various tools, reference sequences, tool specific data, and data from public databases, such as NCBI and PDB. So when using a tool that requires a reference of sorts, it is worth taking a quick look here because chances are it's already been taken care of for you.</p>
<div class="highlight highlight-source-shell"><pre>$ ls -l /n/groups/shared_databases/igenome/</pre></div>
</blockquote>
<h3><a href="#creating-a-genome-index" aria-hidden="true" class="anchor" id="user-content-creating-a-genome-index"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Creating a genome index</h3>
<p>For this workshop we are using reads that originate from a small subsection of chromosome 1 (~300,000 reads) and so we are using only chr1 as the reference genome.</p>
<p>To store our genome indices, we need to create a directory:</p>
<div class="highlight highlight-source-shell"><pre>$ mkdir my_genome_index</pre></div>
<p>The basic options to <strong>generate genome indices</strong> using STAR are as follows:</p>
<ul>
<li><code>--runThreadN</code>: number of threads</li>
<li><code>--runMode</code>: genomeGenerate mode</li>
<li><code>--genomeDir</code>: /path/to/store/genome_indices</li>
<li><code>--genomeFastaFiles</code>: /path/to/FASTA_file</li>
<li><code>--sjdbGTFfile</code>: /path/to/GTF_file</li>
<li><code>--sjdbOverhang</code>: readlength -1</li>
</ul>
<blockquote>
<p><em>NOTE:</em> In case of reads of varying length, the ideal value for <code>--sjdbOverhang</code> is max(ReadLength)-1. In most cases, the default value of 100 will work similarly to the ideal value.</p>
</blockquote>
<p>Now let's create a job submission script to generate the genome index:</p>
<div class="highlight highlight-source-shell"><pre>$ vim <span class="pl-k">~</span>/unix_workshop/rnaseq/scripts/genome_index.run</pre></div>
<p>Within <code>vim</code> we now add our shebang line, the SLURM directives, and our STAR command.</p>
<div class="highlight highlight-source-shell"><pre><span class="pl-c"><span class="pl-c">#!</span>/bin/bash</span>

<span class="pl-c"><span class="pl-c">#</span>SBATCH -p medium 		# partition name</span>
<span class="pl-c"><span class="pl-c">#</span>SBATCH -t 0-2:00 		# hours:minutes runlimit after which job will be killed</span>
<span class="pl-c"><span class="pl-c">#</span>SBATCH -n 6 		# number of cores requested -- this needs to be greater than or equal to the number of cores you plan to use to run your job</span>
<span class="pl-c"><span class="pl-c">#</span>SBATCH --mem 16G</span>
<span class="pl-c"><span class="pl-c">#</span>SBATCH --job-name STAR_index 		# Job name</span>
<span class="pl-c"><span class="pl-c">#</span>SBATCH -o %j.out			# File to which standard out will be written</span>
<span class="pl-c"><span class="pl-c">#</span>SBATCH -e %j.err 		# File to which standard err will be written</span>

<span class="pl-c1">cd</span> <span class="pl-k">~</span>/unix_workshop/rnaseq/reference_data

module load gcc/6.2.0 star/2.5.2b samtools/1.3.1

STAR --runThreadN 6 \
--runMode genomeGenerate \
--genomeDir my_genome_index \
--genomeFastaFiles chr1.fa \
--sjdbGTFfile chr1-hg19_genes.gtf \
--sjdbOverhang 99</pre></div>
<div class="highlight highlight-source-shell"><pre>$ sbatch <span class="pl-k">~</span>/unix_workshop/rnaseq/scripts/genome_index.run</pre></div>
<h3><a href="#aligning-reads" aria-hidden="true" class="anchor" id="user-content-aligning-reads"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Aligning reads</h3>
<p>After you have the genome indices generated, you can perform the read alignment. We previously generated the genome indices for you in <code>/n/groups/hbctraining/ngs-data-analysis-longcourse/rnaseq/reference_data/reference_STAR/</code> directory so that we don't get held up waiting on the generation of the indices.</p>
<p>Create an output directory for our alignment files:</p>
<div class="highlight highlight-source-shell"><pre>$ <span class="pl-c1">cd</span> <span class="pl-k">~</span>/unix_workshop/rnaseq/raw_data

$ mkdir ../results/STAR</pre></div>
<p>We are going to explore how to <strong>automate running the STAR command</strong> by doing the following:</p>
<ol>
<li>running it in the <em>interactive shell</em> to ensure the command is functional</li>
<li>specifying <em>filename as a command line parameter</em> when running the STAR command from a script</li>
<li>executing the command <em>in parallel for all files</em> from a script</li>
</ol>
<h3><a href="#star-command-in-interactive-bash" aria-hidden="true" class="anchor" id="user-content-star-command-in-interactive-bash"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>STAR command in interactive bash</h3>
<p>For now, we're going to work on just one sample to set up our workflow. To start we will use the first replicate in the Mov10 over-expression group, <code>Mov10_oe_1.subset.fq</code>. Details on STAR and its functionality can be found in the <a href="https://github.com/alexdobin/STAR/blob/master/doc/STARmanual.pdf">user manual</a>; we encourage you to peruse through to get familiar with all available options.</p>
<p>The basic options for aligning reads to the genome using STAR are:</p>
<ul>
<li><code>--runThreadN</code>: number of threads / cores</li>
<li><code>--readFilesIn</code>: /path/to/FASTQ_file</li>
<li><code>--genomeDir</code>: /path/to/genome_indices_directory</li>
<li><code>--outFileNamePrefix</code>: prefix for all output files</li>
</ul>
<p>Listed below are additional parameters that we will use in our command:</p>
<ul>
<li><code>--outSAMtype</code>: output filetype (SAM default)</li>
<li><code>--outSAMunmapped</code>: what to do with unmapped reads</li>
<li><code>--outSAMattributes</code>: specify SAM attributes in output file</li>
</ul>
<blockquote>
<p><strong>NOTE:</strong> Default filtering is applied in which the maximum number of multiple alignments allowed for a read is set to 10. If a read exceeds this number there is no alignment output. To change the default you can use <code>--outFilterMultimapNmax</code>, but for this lesson we will leave it as default. Also, note that "<strong>STAR’s default parameters are optimized for mammalian genomes.</strong> Other species may require significant modifications of some alignment parameters; in particular, the maximum and minimum intron sizes have to be reduced for organisms with smaller introns" [<a href="http://bioinformatics.oxfordjournals.org/content/early/2012/10/25/bioinformatics.bts635.full.pdf+html" rel="nofollow">1</a>].</p>
</blockquote>
<p>We can access the software by simply using the STAR command followed by the basic parameters described above and any additional parameters. The full command is provided below for you to copy paste into your terminal. If you want to manually enter the command, it is advisable to first type out the full command in a text editor (i.e. <a href="http://www.sublimetext.com/" rel="nofollow">Sublime Text</a> or <a href="https://notepad-plus-plus.org/" rel="nofollow">Notepad++</a>) on your local machine and then copy paste into the terminal. This will make it easier to catch typos and make appropriate changes.</p>
<div class="highlight highlight-source-shell"><pre>STAR --genomeDir /n/groups/hbctraining/ngs-data-analysis-longcourse/rnaseq/reference_data/reference_STAR \
--runThreadN 3 \
--readFilesIn Mov10_oe_1.subset.fq \
--outFileNamePrefix ../results/STAR/Mov10_oe_1_ \
--outSAMtype BAM SortedByCoordinate \
--outSAMunmapped Within \
--outSAMattributes Standard 
</pre></div>
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
      <li class="mr-3">&copy; 2018 <span title="0.28604s from unicorn-2172891944-rkjtc">GitHub</span>, Inc.</li>
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

