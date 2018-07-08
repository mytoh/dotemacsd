;;; init -- init -*- lexical-binding: t; coding: utf-8; -*-

;;; Commentary:

;;; Code:


(hoarder:record "gugod/App-perlbrew"
  '(:description "Manage perl installations in your $HOME"))
(hoarder:record "tokuhirom/plenv"
  '(:description "Perl binary manager"))
(hoarder:record "tokuhirom/perl-build")
(hoarder:record "miyagawa/plenv-contrib")
(hoarder:record "miyagawa/web-scraper"
  '(:description "Perl web scraping toolkit"))
(hoarder:record "miyagawa/remedie"
  '(:description "perl based pluggable media center application"))
(hoarder:record "aki2o/plsense"
  '(:description "Omni completion tool for Perl"))
(hoarder:record "athreef/WebService-NextEpisode"
  '(:description "Fetch air date from next-episode.net"
    :tags ["perl"]
    :site "https://next-episode.net/"
    :memo "[[http://perltricks.com/article/what-s-new-on-cpan---september-2017/][What's new on CPAN - September 2017]]"))
(hoarder:record "http://git.ieval.ro/git/webservice-vichan.git"
  '(:memo "[[http://perltricks.com/article/what-s-new-on-cpan---september-2017/][What's new on CPAN - September 2017]]"
    :download nil
    :tags ["perl" "vichan"]))
(hoarder:record "dagolden/Path-Tiny"
  '(:description "File path utility"
    :tags ["perl"]))
(hoarder:record "garu/Data-Printer"
  '(:description "colored pretty-print of Perl data structures and objects"
    :tags ["perl"]))
(hoarder:record "https://perl5.git.perl.org/perl.git")
(hoarder:record "EnlightenedPerlOrganisation/task-kensho"
  '(:description "A Glimpse at an Enlightned Perl Distribution"))
(hoarder:record "Code-Hex/Text-Shirasu"
  '(:description "Wrapped Text::MeCab in Perl"
    :tag ["perl" "mecab"]
    :memo "[[https://qiita.com/Kei-Kamikawa/items/3b104f84876304e73f06][Perlで綺麗に形態素解析をやる - Qiita]]"))
(hoarder:record "briandfoy/PerlPowerTools"
  '(:description "Perl Power Tools"
    :tags ["perl" "powertools"]
    :memo "[[https://rawgit.com/neilb/cpantoberfest/master/index.html][CPANtoberfest: CPAN distributions to hack on for Hacktoberfest]]"))
(hoarder:record "RexOps/Rex"
  '(:description "A framework for server orchestration and to simplify system administration"
    :tags ["perl"]
    :branch "master"
    :memo "[[https://rawgit.com/neilb/cpantoberfest/master/index.html][CPANtoberfest: CPAN distributions to hack on for Hacktoberfest]]"))
(hoarder:record "tobyink/p5-perlx-maybe"
  '(:tags ["perl"]
    :memo "[[https://www.reddit.com/r/perl/comments/73gmeb/whats_your_favorite_obscure_perl_trick/][Too Many Requests]]"))
(hoarder:record "houseabsolute/perl-code-tidyall"
  '(:description "Engine for tidyall, your all-in-one code tidier and validator"
    :memo "[[http://niceperl.blogspot.jp/2017/09/clii-cpan-great-modules-released-last.html][# where we turn Perl inside out: (clii) CPAN great modules released last week]]"))
(hoarder:record "duckduckgo/p5-app-duckpan"
  '(:description "DuckDuckHack OpenSource Development Application"
    :tags ["duckpan" "instant-answers" "perl"]
    :memo "[[https://www.youtube.com/watch?v=RW5OS3lg1gs][David Farrell - \"What's New on CPAN\" - YouTube]]"))
(hoarder:record "p5h/2017"
  '(:tags ["perl" "p5p"]
    :memo "[[https://www.nntp.perl.org/group/perl.perl5.porters/2017/10/msg246796.html][BBC canary - nntp.perl.org]]
[[https://github.com/p5h/2017/wiki/What-Do-We-Want-and-Need-from-Smoke-Testing%3F][What Do We Want and Need from Smoke Testing? · p5h/2017 Wiki · GitHub]]
[[https://github.com/perlbot/perlbuut/blob/master/cpanfile][perlbuut/cpanfile at master · perlbot/perlbuut · GitHub]]
[[https://github.com/perlbot/perlblead-ci][GitHub - perlbot/perlblead-ci: Code to rebuild perl blead and run it through a series of tests for the perlbot eval s...]]"))
(hoarder:record "perlbot/perlbuut"
  '(:description "new version of perlbot, based on buubot"
    :tags ["perl" "p5p"]
    :memo "[[https://www.nntp.perl.org/group/perl.perl5.porters/2017/10/msg246796.html][BBC canary - nntp.perl.org]]
[[https://github.com/p5h/2017/wiki/What-Do-We-Want-and-Need-from-Smoke-Testing%3F][What Do We Want and Need from Smoke Testing? · p5h/2017 Wiki · GitHub]]
[[https://github.com/perlbot/perlbuut/blob/master/cpanfile][perlbuut/cpanfile at master · perlbot/perlbuut · GitHub]]
[[https://github.com/perlbot/perlblead-ci][GitHub - perlbot/perlblead-ci: Code to rebuild perl blead and run it through a series of tests for the perlbot eval s...]]"))
(hoarder:record "perlbot/perlblead-ci"
  '(:description "Code to rebuild perl blead and run it through a series of tests for the perlbot eval server"
    :tags ["perl" "p5p"]
    :memo "[[https://www.nntp.perl.org/group/perl.perl5.porters/2017/10/msg246796.html][BBC canary - nntp.perl.org]]
[[https://github.com/p5h/2017/wiki/What-Do-We-Want-and-Need-from-Smoke-Testing%3F][What Do We Want and Need from Smoke Testing? · p5h/2017 Wiki · GitHub]]
[[https://github.com/perlbot/perlbuut/blob/master/cpanfile][perlbuut/cpanfile at master · perlbot/perlbuut · GitHub]]
[[https://github.com/perlbot/perlblead-ci][GitHub - perlbot/perlblead-ci: Code to rebuild perl blead and run it through a series of tests for the perlbot eval s...]]" ))
(hoarder:record "mogilefs/MogileFS-Server"
  '(:memo "[[http://b.hatena.ne.jp/entry/neta.ywcafe.net/000774.html][はてなブックマーク - 画像もDBに格納して管理する －扱いがめんどうなLOB(ラージオブジェクト)は使わない方法も含め]]"))
(hoarder:record "netdisco/netdisco"
  '(:memo "[[https://qiita.com/Bentham3314/items/f5e5827c5f353b015c0c][【ツール紹介】netdisco - Qiita]]")) 
(hoarder:record "https://gist.github.com/whitebell/a7d991e3083cd319abe337cfa5a63b2c.git"
  '(:tags ["perl" "pdic" "esperanto"]
    :description "http://www.vastalto.com/jpn/#e-Dic pejv181uからpdic用csvに変換（ざっくりと） "
    :memo "[[https://qiita.com/whitebell/items/c82df807052831e70aa4][PDIC用エスペラント辞書、または私は如何にして心配するのをやめてことのはアムリラートを愛するようになったか - Qiita]]"))
(hoarder:record "tokuhirom/Furl"
  '(:description "pretty fast http client library for perl5"
    :memo "[[https://metacpan.org/source/TOKUHIROM/Furl-3.11/lib/Furl/HTTP.pm#L41][lib/Furl/HTTP.pm - metacpan.org]]
[[https://qiita.com/ymko/items/913bac65b283984a08b4][ググって調べにくいdefined-or演算子(//)を使ってみる - Qiita]]"))
(hoarder:record "https://gist.github.com/afair/2402068.git"
  '(:name "perl-ceheat-sheet"
    :description " Perl References for Kittens"))
(hoarder:record "stevan/p5-Moxie"
  '(:description "..."
    :tags ["perl" "moose" "oop"]
    :memo "[[https://www.youtube.com/watch?v=DMZmkawK2Cw][Hold my beer and watch this! - YouTube]] "))
(hoarder:record "shlomif/perl-XML-LibXML"
  '(:description "The XML-LibXML CPAN Distribution for Processing XML using the libxml2 library"
    :tags ["perl" "xml"]))
(hoarder:record "xxfelixxx/perl-term-colormap"
  '(:description "ANSITerm 256 colormaps"
    :tags ["colormap" "perl" "perl-term-colormap"]))
(hoarder:record "OpenKore/openkore"
  '(:description "A free/open source client and automation tool for Ragnarok Online"
    :download nil
    :tags ["ai" "automation" "bot" "game" "mmo" "mmorpg" "perl" "ragnarok"]))
(hoarder:record "trizen/perl-scripts"
  '(:description "A collection of day-to-day Perl scripts which prove some ideas or implement some useful practicability."
    :tags ["ideas" "math" "perl" "perl-scripts" "scripts" "utils"]))
(hoarder:record "n7st/Metal"
  '(:description "Modular OO IRC bot - Perl, Reflex with POE::Component::IRC, Moose"
    :tags ["irc" "irc-bot" "moose" "perl" "perl5" "reflex"]))
(hoarder:record "GouveaHeitor/nipe"
  '(:description "Nipe is a script to make Tor Network your default gateway."
    :tags ["anonymity" "anonymize" "iptables" "network" "nipe" "perl" "privacy" "tor" "tor-network"]))
(hoarder:record "ronilaukkarinen/weed"
  '(:description "Heavily Xchat inspired beautiful irssi theme."
    :tags ["irc" "irssi" "irssi-setup" "irssi-theme" "perl" "shell"]))
(hoarder:record "rsnapshot/rsnapshot"
  '(:description "a tool for backing up your data using rsync (if you want to get help, use https://lists.sourceforge.net/lists/listinfo/rsnapshot-discuss)"
    :tags ["backup" "perl" "rsnapshot" "rsync"]))
(hoarder:record "beyondgrep/ack2"
  '(:description "ack 2.0 is a greplike tool optimized for programmers searching large heterogeneous trees of source code."
    :tags ["ack" "grep" "perl" "tree"]))
(hoarder:record "cooper/wikifier"
  '(:description "a file-based wiki engine with a clean and productive source language"
    :tags ["file-based" "language" "parsing" "perl" "wiki" "wiki-engine" "wiki-page" "wikifier"]))
(hoarder:record "skx/dns-api.org"
  '(:description "Simple DNS API server"
    :tags ["dns" "perl" "website"]))
(hoarder:record "szabgab/perlweekly"
  '(:description "A free, once a week e-mail round-up of hand-picked news and articles about Perl"
    :tags ["html" "newsletter" "perl" "website"]))
(hoarder:record "mikaku/Monitorix"
  '(:description "Monitorix is a free, open source, lightweight system monitoring tool."
    :tags ["linux" "monitorix" "perl" "server" "system-monitoring" "unix"]))
(hoarder:record "LibreCat/LibreCat"
  '(:description "Repository Software based on Catmandu"
    :tags ["catmandu" "code4lib" "dancer" "elasticsearch" "perl"]))
(hoarder:record "weechat/weechat"
  '(:description "The extensible chat client."
    :tags ["c" "chat" "client" "extensible" "irc" "javascript" "lua" "perl" "python" "ruby" "scheme" "scripting" "tcl"]))
(hoarder:record "sjdy521/Mojo-Weixin"
  '(:description "使用Perl语言（不会没关系）编写的微信/weixin/wechat客户端框架（非GUI），可通过插件提供基于HTTP协议的api接口供其他语言或系统调用"
    :tags ["api" "bot" "chat" "chatbot" "cli" "docker" "irc" "mojo" "perl" "wechat" "weixin" "weixinbot"]))
(hoarder:record "trizen/obmenu-generator"
  '(:description "A fast menu generator for the Openbox Window Manager."
    :tags ["menu" "menu-generator" "obmenu-generator" "openbox" "perl"]))
(hoarder:record "Corion/www-mechanize-firefox"
  '(:description "The API of WWW::Mechanize, combined with the Javascript-power of Firefox"
    :tags ["firefox" "mechanize" "perl"]))
(hoarder:record "ido50/Svsh"
  '(:description "Process supervision shell for daemontools, perp, s6 and runit"
    :tags ["bash" "perl" "process-supervision" "runit" "s6" "supervision-suite" "supervisor"]))
(hoarder:record "openfoodfacts/openfoodfacts-server"
  '(:description "Open Food Facts database and web interface - Perl and HTML/CSS coders welcome :)"
    :download nil
    :memo "[[https://www.youtube.com/watch?v=lykSKBVkijc][Open Food Facts: the wikipedia of food products What if you could freely analyse all the food and c… - YouTube]]"
    :tags ["allergens" "allergies" "crowdsourcing" "database" "food" "food-products" "nutrition" "perl" "recycling"]))
(hoarder:record "dave-theunsub/clamtk"
  '(:description "An easy to use, light-weight, on-demand virus scanner for Linux systems"
    :tags ["gtk" "gui" "linux" "linux-desktop" "perl" "perl-gtk2" "security"]))
(hoarder:record "elliotchance/mbzdb"
  '(:description "🎵 Port of the MusicBrainz database to run on other RDBMSs with replication (previously named MB_MySQL.)"
    :tags ["musicbrainz" "perl"]))
(hoarder:record "kraih/minion"
  '(:description ":octopus: Perl job queue"
    :tags ["job-queue" "mojolicious" "perl" "postgresql"]))
(hoarder:record "weechat/scripts"
  '(:description "Official scripts for WeeChat."
    :tags ["javascript" "lua" "perl" "python" "ruby" "scheme" "scripts" "tcl" "weechat"]))
(hoarder:record "https://gitlab.com/Kerenoc/GCstar.git"
  '(:description "Collection manager for Linux, Windows and MacOS based written in Perl.
The Master branch is following the upstream SVN repository.
The Test branch integrates the latest edits.
The README branch contains some info (no README.md in the original SVN). "
    :tags ["perl"]))
(hoarder:record "https://gitlab.com/thiagomacieira/prettymake.git"
  '(:description "A perl wrapper that makes make's output coloured and easier to read."
    :tags ["perl"]))
(hoarder:record "https://gitlab.com/codegordon/perl-passgen.git"
  '(:description "Password generator in Perl using /dev/urandom and tr."
    :tags ["generator" "password" "perl"]))
(hoarder:record "https://gitlab.com/goeb/data-simplepath.git"
  '(:description "Perl module providing path-like access to complex data structures."
    :tags []))
(hoarder:record "bcc32/yt"
  '(:description "A collection of scripts to manage my YouTube habits"
    :tags ["perl" "perl5" "scripts" "youtube-api"]))
(hoarder:record "ildar-shaimordanov/perl-utils"
  '(:description "Set of text-oriented utilities for processing paragraphs and piping"
    :tags ["grep" "logfile-parser" "multilined-entries" "perl" "pipeline" "piping" "processing-paragraphs" "sort" "sponge" "transpose"]))
(hoarder:record "trizen/trizen"
  '(:description "Lightweight AUR Package Manager"
    :tags ["aur" "package-manager" "perl"]))
(hoarder:record "lixmal/keepass4web"
  '(:description "An application that serves KeePass database entries on a web frontend"
    :tags ["crypto" "dropbox" "javascript" "keepass" "keepass4web" "ldap" "password" "password-manager" "perl" "seafile" "web"]))
(hoarder:record "asbru-cm/asbru-cm"
  '(:description "Ásbrú Connection Manager is a user interface that helps organizing remote terminal sessions and automating repetitive tasks."
    :tags ["connection-manager" "perl" "remote-shell" "terminal-emulator" "tunnel-client"]))
(hoarder:record "brummett/Devel-Chitin"
  '(:description "Abstract base class for Perl debuggers"
    :tags ["api" "debugger" "perl"]))
(hoarder:record "cooper/juno"
  '(:description "a seriously modern IRC daemon written from scratch in Perl. designed to be ridiculously extensible, painlessly reloadable, and excessively configurable"
    :tags ["irc" "irc-daemon" "irc-protocol" "irc-server" "ircd" "ircv3" "modern-irc-server" "modular" "perl" "sasl"]))
(hoarder:record "trizen/menutray"
  '(:description "An application menu through a GTK+ tray status icon."
    :tags ["gtk" "menu" "menu-generator" "perl" "tray"]))
(hoarder:record "trizen/fbmenugen"
  '(:description "Fluxbox menu generator (with support for icons)"
    :tags ["fluxbox" "menu-generator" "perl"]))
(hoarder:record "1shad/pstreamer"
  '(:description "Une application en perl pour visionner des films ou des series en streaming"
    :tags ["films" "francais" "mpv" "ncurses" "perl" "series" "streaming"]))
(hoarder:record "arsv/perl-cross"
  '(:description "configure and build perl with a cross-compiling toolchain"
    :tags ["build-script" "configure" "cross-compile" "perl"]))
(hoarder:record "Driftw00d/MemPass"
  '(:description "MemPass is a utility that generates secure, easy to memorise passwords"
    :tags ["command-line" "password" "perl" "security"]))
(hoarder:record "Givralix/PerlBot"
  '(:description "It's a bot of Pearl from Steven Universe for Tumblr!"
    :tags ["bot" "oauth" "pearl" "perl" "perl5" "su" "tumblr"]))
(hoarder:record "dboehmer/coocook"
  '(:description "Web application for collecting recipes and making food plans"
    :tags ["catalyst" "dbix-class" "food" "hosted" "markdown" "perl" "self-hosted" "template-toolkit" "web-application"]))
(hoarder:record "tmtowtdi/Shell-Jump"
  '(:description "Bash version of the OMF jump plugin"
    :tags ["perl" "shell"]))
(hoarder:record "beyondgrep/ack3"
  '(:description "ack 3: Join ack-dev on Google Groups or email andy@petdance.com for an invite to the ack Slack."
    :tags ["ack" "grep" "perl"]))
(hoarder:record "wadelau/WebGet"
  '(:description "An emulating tool for HTTP(S)"
    :tags ["http" "http-getter" "https" "perl" "telnet" "webget" "wget"]))
(hoarder:record "neilhwatson/nustuff"
  '(:description "Useful scripting and Linux configuration examples"
    :tags ["ansible" "azure" "cheatsheet" "chef" "docker" "linux" "nmcli" "perl" "python" "ruby" "shell" "terraform" "vagrant" "vim"]))
(hoarder:record "davorg/towerbridge"
  '(:description "When is Tower Bridge lifting?"
    :tags ["data" "london" "perl" "web-scraping" "web-query"]))
(hoarder:record "thanoulis/osd-amixer"
  '(:description "utility to manage system volume with On-Screen-Display status bar"
    :tags ["alsa" "amixer" "osd" "perl" "volume"]))
(hoarder:record "hkoba/yatt_lite"
  '(:description "YATT::Lite - Template with \"use strict\""
    :tags ["perl" "psgi" "template-engine"]))
(hoarder:record "nichtich/Pandoc-Wrapper"
  '(:description "Perl wrapper for the mighty Pandoc document converter"
    :tags ["pandoc" "perl"]))
(hoarder:record "afsec/kornbrew"
  '(:description "Run 'n' play missing package manager for Linux, BSD, etc. #PoC"
    :tags ["openbsd" "package-manager" "perl" "poc"]))
(hoarder:record "bgoglin/lltag"
  '(:description "Automatic command-line mp3/ogg/flac file tagger and renamer"
    :tags ["audio-tag" "command-line-tool" "flac" "mp3" "ogg" "perl" "rename" "vorbis"]))
(hoarder:record "bgoglin/llgal"
  '(:description "Command-line online gallery generator"
    :tags ["command-line-tool" "gallery" "html" "perl" "photos" "recursive" "static-site-generator" "videos"]))
(hoarder:record "GouveaHeitor/oniro"
  '(:description "Under development - Anonymous peer-to-peer instant messaging"
    :tags ["anonymity" "messasin" "peer-instant-messaging" "perl" "privacy"]))
(hoarder:record "asb-capfan/PCX-Loader"
  '(:description "Perl module to load 320x200 8-bit PCX-format graphics"
    :tags ["graphics-library" "library" "module" "perl"]))
(hoarder:record "tusooa/scripts"
  '(:description "风儿和其它的一些东西"
    :tags ["mypcqq" "perl" "perl5" "qq" "smartqq" "windy"]
    :download nil))
(hoarder:record "nikopol/hi"
  '(:description "host info for your shell"
    :tags ["bashrc" "perl" "shell"]))
(hoarder:record "rpgwnn/rpgcat"
  '(:description "Catalyst based RPG framework"
    :tags ["browser-game" "catalyst" "perl" "rpg"]))
(hoarder:record "xtaran/unburden-home-dir"
  '(:description "Automatically unburden $HOME from caches, etc. Useful for $HOME on SSDs, small disks or slow NFS homes. Can be triggered via an hook in /etc/X11/Xsession.d/."
    :tags ["backup" "cleanup" "disk-space" "homedir" "nfs" "perl" "ssd" "symlinks" "tmpfs"]))
(hoarder:record "xtaran/run-parts"
  '(:description "Perl module to interface with Debian's run-parts tool"
    :tags ["cpan" "dot-d-directory" "perl" "perl-module" "run-parts"]))
(hoarder:record "xtaran/systray-mdstat"
  '(:description "System tray icon indicating the state of local Linux Software (MD) RAIDs"
    :tags ["debian-package" "debian-packaging" "disk" "dist-zilla" "dzil" "freedesktop" "gtk" "gtk3" "linux" "mdraid" "perl" "raid" "systray" "tray-icon" "xdg"]))
(hoarder:record "ablakely/shadow"
  '(:description "A modular IRC bot written in Perl"
    :tags ["irc" "irc-bot" "perl"]))
(hoarder:record "horgh/irssi-scripts"
  '(:description "A collection of Irssi Perl scripts"
    :tags ["bot" "chat" "irc" "irssi" "perl"]))
(hoarder:record "davorg/svg-timeline"
  '(:description "Create timelines with SVG"
    :tags ["perl" "svg" "timeline"]))
(hoarder:record "paultcochrane/app-cli"
  '(:description "Dispatcher module for command line interface programs"
    :tags ["cli" "command-line" "dispatcher" "perl"]))
(hoarder:record "kohts/snaked"
  '(:description "cron as it should be"
    :memo "[[https://www.youtube.com/watch?v=fUwY3K35yAc][snaked: pure perl cron replacement (YAPC Europe 2013) - YouTube]]"))
(hoarder:record "elohmrow/munin-ibilly"
  '(:tags ["ansible" "jira" "monitoring" "munin" "perl" "python"]))
(hoarder:record "wakaba/perl-promise"
  '(:description "Promise in Perl"
    :tags ["perl" "promise"]))
(hoarder:record "manakai/perl-web-resource"
  '(:tags ["aws4" "http" "http-client" "http-server" "https" "mime-types" "oauth1" "oauth2" "perl" "proxy" "psgi" "socks" "websockets"]))
(hoarder:record "manakai/perl-web-driver-client"
  '(:description "A WebDriver protocol client for Perl"
    :tags ["perl" "promise" "webdriver"]))
(hoarder:record "tyru/dlnico.pl"
  '(:description "NicoVideo downloader (inspired dlnico.py)"
    :tags ["carton" "cpanminus" "niconico" "nicovideo" "perl"]))
(hoarder:record "pflanze/functional-perl"
  '(:description "Functional programming on Perl 5"
    :memo "[[https://github.com/pflanze/functional-perl/blob/master/lib/FP/Hash.pm][functional-perl/Hash.pm at master · pflanze/functional-perl · GitHub]]"))
(hoarder:record "plainblack/Lacuna-Server-Open"
  '(:description "The open source Lacuna Server repository."
    :memo "[[https://www.youtube.com/watch?v=DphO2rwbOX8][YAPC::NA 2012 - The Lacuna Expanse - YouTube]]
[[https://changelog.com/podcast/133][The Changelog #133: All Things Perl with Curtis \"Ovid\" Poe | Changelog]]"
    :tags ["perl" "game" "mmorpg"]))
(hoarder:record "Kantigen/ka-server"
  '(:description "Server for the up-and-coming community edition of The Lacuna Expanse, known as \"Kenó Antigen\"."
    :tags ["perl" "game" "mmorpg"]))
(hoarder:record "greeneg/discovery"
  '(:description "A tool that discovers and reports useful information about a system"
    :tags ["configuration-management" "perl"]))
(hoarder:record "sni/Thruk"
  '(:description "Thruk is a multibackend monitoring webinterface for Naemon, Nagios, Icinga and Shinken using the Livestatus API."
    :tags ["icinga" "monitoring" "naemon" "nagios" "perl" "web"]))
(hoarder:record "gflohr/File-Globstar"
  '(:description "Globstar and gitignore style exclusion/ignore and inclusion lists"
    :tags ["config" "configuration" "configuration-file" "gitignore" "glob" "globstar" "perl"]))
(hoarder:record "mche/sost"
  '(:tags ["angularjs" "mojolicious" "perl" "portal" "postgresql"]))
(hoarder:record "pssc/squeezy"
  '(:description "A command-line utility for controlling squeezebox network audio players via their squeezeserver."
    :tags ["perl" "squeezebox" "squeezebox-server"]))
(hoarder:record "mobrine-mob/M0B-Scanner"
  '(:tags ["bing" "dork" "dork-scanner" "dork-scanning" "dork-searching" "exploit" "perl" "scanner" "sqli" "vunerable-devices"]))
(hoarder:record "petdance/file-next"
  '(:description "File::Next, a file finding module for Perl 5"
    :tags ["cpan" "files" "perl"]))
(hoarder:record "worthmine/Text-Password-AutoMigration"
  '(:description "Text::Password::AutoMigration - generate and verify Password with any contexts"
    :tags ["password-generator" "password-hash" "perl"]))
(hoarder:record "OliverBoy/Luna"
  '(:description "Club Penguin Server Emulator - AS2 Protocol"
    :tags ["aureus" "club-penguin" "cpps" "cpps-source" "luna" "miniclip" "perl" "rile5" "vps"]))
(hoarder:record "EQEmu/Server"
  '(:description "EQEmu - Open Source EverQuest Server"
    :tags ["c-plus-plus" "database" "emulator" "eq" "eqemu" "everquest" "gameserver" "gplv3" "lua" "mmorpg" "multi-platform" "mysql" "perl"]))
(hoarder:record "GPHemsley/WHATWG-URL"
  '(:description "A Perl implementation of the WHATWG URL standard"
    :tags ["perl" "url" "whatwg" "whatwg-url"]))
(hoarder:record "Koha-Community/Koha"
  '(:description "Koha is a free software integrated library system (ILS). Koha is distributed under the GNU GPL version 3 or later. Note: this is a synced mirror of the official Koha repo. Note: This project uses its own bug tracker, see https://bugs.koha-community.org/ to report a bug or submit a patch."
    :download nil
    :tags ["perl"]))
(hoarder:record "subogero/u2b"
  '(:description "YouTube search, stream extraction, playback and download tool. Fast, even on the Raspberry Pi"
    :tags ["perl"]))
(hoarder:record "memowe/echo"
  '(:description "With this web app, users can create simple web pages using Markdown. These web pages are self-contained, fully encoded in their own URL."
    :tags ["markdown" "mojolicious" "perl" "url" "websites"]))
(hoarder:record "voldenet/weechat-scripts"
  '(:description "Some scripts for weechat"
    :tags ["perl"]))
(hoarder:record "raykym/ghostman"
  '(:tags ["perl"])) 
(hoarder:record "btilson/AUTO"
  '(:description "A.U.T.O is a web interface and control mechanism for transmission. It currently adds additional capabilities on top of the daemon, and is designed primarily for headless use."
    :tags ["perl"]))
(hoarder:record "0x00-0x00/pwnuker"
  '(:description "Perl script to brute-force /etc/shadow passwords."
    :tags ["perl"]))
(hoarder:record "EatMoreCode/app-telegramma"
  '(:description "A modular Telegram Bot"
    :tags ["perl"]))
(hoarder:record "ikruglov/HADaemon-Control"
  '(:description "Create init scripts for Perl high-available (HA) daemons"
    :tags ["perl"]))
(hoarder:record "god-of-hellfire/TO-App-SystemMonitor"
  '(:description "A memory usage monitor"
    :tags ["perl"]))
(hoarder:record "kensanata/rename-pictures"
  '(:description "Rename geotagged images based time taken and a nearby city"
    :tags ["perl"]))
(hoarder:record "graysky2/mplayer-resumer"
  '(:description "An mplayer wrapper script that will resume playback of previously-stopped video where you left off. Written by Bob Igo."
    :tags ["perl"]))
(hoarder:record "robert-impey/tidy-folder"
  '(:description "Tidy up unwanted files from a folder."
    :tags ["perl"]))
(hoarder:record "manwar/IP-Info"
  '(:description "Interface to IP geographic and network data."
    :tags ["perl"]))
(hoarder:record "XDF/catz"
  '(:description "The world's most advanced cat show photo engine"
    :tags ["perl"]))
(hoarder:record "wakaba/wanage"
  '(:description "Wanage and Warabe - Perl modules for server-side Web applications"
    :tags ["cgi" "http" "perl" "promise" "psgi" "server" "waf" "wanage" "warabe"]))
(hoarder:record "mlawren/githook-perltidy"
  '(:description "Run perltidy as a Git pre-commit hook"
    :tags ["perl"]))
(hoarder:record "tsucchi/p5-Reply-Plugin-ConfigurablePrompt"
  '(:description "Configurable prompt for reply"
    :tags ["perl" "reply"]))
(hoarder:record "saunite/ac"
  '(:description "ac: auto connector"
    :tags ["perl"]))
(hoarder:record "tomascohen/koha"
  '(:description "My Koha works"
    :download nil
    :tags ["perl"]))
(hoarder:record "srynobio/Salvo"
  '(:description "Slurm command and job launcher"
    :tags ["perl"]))
(hoarder:record "rkleemann/Datify"
  '(:description "Simple stringification of data."
    :tags ["perl"]))
(hoarder:record "pnu/io-prompt"
  '(:description "Perl6 basic type validating IO prompting for command line tools."
    :tags ["perl"]))
(hoarder:record "agordon/dancer_bootstrap_fontawesome_template"
  '(:description "A template for quick-starting applications using Perl's Dancer, Twitter's Bootstrap and Font-Awesome."
    :tags ["perl"]))
(hoarder:record "houseabsolute/File-ChangeNotify"
  '(:description "Watch for changes to files, cross-platform style"
    :tags ["perl"]))
(hoarder:record "bloonix/bloonix-core"
  '(:description "Bloonix core modules"
    :tags ["perl"]))
(hoarder:record "EsupPortail/filex"
  '(:tags ["perl"])) 
(hoarder:record "wastedabuser/eldhelm-platform"
  '(:description "A production ready, application server, tailored for online games."
    :tags ["perl"]))
(hoarder:record "salva/p5-Net-SSH-Any"
  '(:description "Compatibility layer for common Perl SSH client modules"
    :tags ["perl"]))
(hoarder:record "berekuk/Ubic"
  '(:description "Polymorphic service manager."
    :memo "[[https://www.youtube.com/watch?v=3xQqLNBeokc][Matt S Trout - Architecture Automation, One Alligator At A Time - YouTube]]"))
(hoarder:record "Grinnz/Dist-Surveyor"
  '(:description "Survey installed perl modules and determine the specific distribution versions they came from"
    :memo "[[https://www.youtube.com/watch?v=3xQqLNBeokc][Matt S Trout - Architecture Automation, One Alligator At A Time - YouTube]]"))
(hoarder:record "dann/p5-perl-metrics-lite"
  '(:description "Pluggable Perl Metrics System"
    :memo "[[https://qiita.com/hirokidaichi/items/c9a76191216f3cc6c4b2][新人プログラマに知ってもらいたいメソッドを読みやすく維持するいくつかの原則 - Qiita]]"))
(hoarder:record "3rR0r-Pr1Nc3/Admin-Pannel-Finder"
  '(:description "contact us"
    :tags ["perl" "script"]))
(hoarder:record "nothingworksright/yamiPhoto"
  '(:description "🖼 Perl CGI scripts for uploading photos, generating thumbnails, and deleting photos."
    :tags ["cgi" "delete" "images" "perl" "perl-cgi-scripts" "thumbnails" "upload"]))
(hoarder:record "xaicron/p5-www-youtube-download"
  '(:description "YouTube video download interface."))
(hoarder:record "MoeOrganization/moe"
  '(:description "An -OFun prototype of an Ultra Modern Perl 5"))
(hoarder:record "Zoites/One-Liners"
  '(:description "List of frequently used Perl/Bash/Unix one liners "
    :tags ["awk" "bash" "one-liners" "perl"]))
(hoarder:record "nabe-abk/adiary"
  '(:description "High-performance open source CMS with HTML5 "
    :tags ["perl"]
    :site "https://adiary.org/"
    :memo "[[https://www.slideshare.net/nabe-abk/2000req-perl-cms-optimize-compiler-performance?ref=http://mobile-hack.hatenablog.com/entry/Internal_structure_of_Perl_CMS_that_handles_2000_Requests_per_second][毎秒2000Requestを捌くPerl製CMSの内部構造（Debianサーバ1台にて）]]"))
(hoarder:record "mche/Mojolicious-Plugin-StaticShare"
  '(:description "Browse, upload, copy, move, delete static files/dirs."
    :tags ["mojolicious" "perl" "plugin" "static"]))
(hoarder:record "nigelhorne/LWP-UserAgent-Throttled"
  '(:description "Throttle requests to a site"
    :tags ["lwp" "perl" "user-agent"]))
(hoarder:record "brlat/convert-to-kantenji-cgi"
  '(:description "テキストを漢点字に変換するperl cgi"
    :tags ["perl"]))
(hoarder:record "syachi/gomical"
  '(:tags ["perl"]
    :memo "[[https://www.slideshare.net/syachi/yapcasia-2014-38474000][perlで挑むごみ集取カレンダー]]"))
(hoarder:record "dagon666/napi"
  '(:description "Napi Projekt Client and Subotage subtitle format converter both written in bash"
    :tags ["download-subtitles" "napi" "napiprojekt" "napiprojekt-api" "napisy" "perl" "python" "shell" "shell-script" "subrip" "subtitles"]))
(hoarder:record "preaction/Statocles"
  '(:description "Static website CMS"
    :tags ["cms" "perl" "web"]))
(hoarder:record "Cyclenerd/toolbox"
  '(:description "🔧 Toolbox - Script Collection"
    :tags ["shell" "perl" "perl-script" "perl-scripts" "perl5" "script" "scripts" "scripts-collection"]))
(hoarder:record "zakame/hashids.pm"
  '(:description "Hashids, ported for Perl"
    :tags ["cpan" "database-ids" "encoding" "hash" "hashids" "ids" "perl" "perl-module"]))
(hoarder:record "GouveaHeitor/things"
  '(:description "Dot files, configs, small scripts and more."
    :tags ["dotfiles" "examples" "learning" "perl" "projects" "study" "things"]))
(hoarder:record "nigelhorne/FCGI-Buffer"
  '(:description "Verify, Cache and Optimise FCGI Output"
    :tags ["fcgi" "perl"]))
(hoarder:record "sgaudart/go2host"
  '(:description "This perl script allows to present a list of server in order to connect in ssh."
    :tags ["perl" "ssh" "sysadmin" "sysadmin-tool"]))
(hoarder:record "ankitpati/pfiler"
  '(:description "Perl File Manager"
    :tags ["perl"]))
(hoarder:record "perl-weasel/weasel"
  '(:description "Weasel - Perl's better Mink"
    :tags ["perl"]))
(hoarder:record "book/perlsecret"
  '(:description "The perl secret operators"
    :tags ["perl"]))
(hoarder:record "asb-capfan/Tk-FileEntry"
  '(:description "Entry widget with button and dialog to choose a file"
    :tags ["gui" "perl" "tk" "ui-components"]))
(hoarder:record "eserte/tk-widgetdump"
  '(:description "The CPAN module Tk::WidgetDump"
    :tags ["perl"]))
(hoarder:record "eserte/tk-getopt"
  '(:description "the perl module Tk::Getopt"
    :tags ["perl"]))
(hoarder:record "thundergnat/VRegExp"
  '(:description "Perl::Tk base regex tweaking / testing utility"
    :tags ["perl"]))
(hoarder:record "ABurbank70/BISG-Carton-Label"
  '(:description "Generate a BISG (Book Industry Study Group) compliant Carton Product label "
    :tags ["barcode" "batch-processing" "bisg" "carton" "cpan" "gtin" "perl" "publishing" "shipping" "tk"]))
(hoarder:record "briandfoy/twiddle-regex"
  '(:description "A Perl/Tk application to explore regexes"
    :tags ["perl"]))
(hoarder:record "rurban/App-perlall"
  '(:description "create and work with /usr/local/bin/perl5.*"
    :tags ["perl"]))
(hoarder:record "sibyakin/sssp"
  '(:description "simple socks5 server"
    :tags ["perl" "server" "socks" "socks5" "wip"]))
(hoarder:record "dleidert/Apache2-PhotoGal"
  '(:description "Apache2::PhotoGal - mod_perl handler to create image galleries"
    :tags ["apache2" "galleries" "gallery-template" "handler" "image-gallery" "images" "perl"]))
(hoarder:record "brennen/wrt"
  '(:description "Almost-minimal filesystem based blog."
    :tags ["perl"]
    :memo "[[https://github.com/brennen/p1k3][GitHub - brennen/p1k3: Archives for p1k3, a website.]]
[[https://p1k3.com/][p1k3::new]]"))
(hoarder:record "sur5r/pdfstitch"
  '(:description "Crop and stitch pages from PDF to larger, single-page PDF"
    :tags ["crop" "pdf" "perl" "posterize" "stitching"]))
(hoarder:record "Corion/perl-android"
  '(:description "Android system routines"
    :tags ["perl"]
    :site "http://corion.net/perl-android/"))
(hoarder:record "stevan/p5-Directory-Scanner"
  '(:description "Streaming directory scanner"
    :tags ["perl"]))
(hoarder:record "gflohr/File-Globstar"
  '(:description "Globstar and gitignore style exclusion/ignore and inclusion lists"
    :tags ["config" "configuration" "configuration-file" "gitignore" "glob" "globstar" "perl"]))
(hoarder:record "masiuchi/p5-App-Prove-Plugin-CumulativeTimer"
  '(:description "A prove plugin to display cumulative elapsed time of tests."
    :tags ["perl"]))
(hoarder:record "robn/Defined-KV"
  '(:description "Create a KV pair, but only if the value is defined"
    :tags ["perl"]))
(hoarder:record "https://sanctum.geek.nz/code/List-Breakdown.git"
  '(:tags ["perl"]
    :depth nil))
(hoarder:record "stevan/p5-roles"
  '(:description "Simple pragma for applying roles"
    :tags ["perl"]))
(hoarder:record "sysread/HTML-Untidy"
  '(:description "Yet another way to write HTML quickly and programmatically in perl"
    :tags ["perl 6"]))
(hoarder:record "szabgab/WWW-Gittip"
  '(:description "Perl client for Gittip"
    :tags ["perl"]
    :memo "[[https://perlmaven.com/web-scraping-with-html-treebuilder][Web scraping with HTML::TreeBuilder]]"))
(hoarder:record "tokuhirom/Web-Query"
  '(:tags ["perl"]))
(hoarder:record "dyne/gitzone"
  '(:description "git-based zone management tool for static and dynamic domains"
    :tags ["bind9" "dns" "git" "perl" "ssh" "sysadmin"]))
(hoarder:record "bestpractical/http-server-simple"
  '(:tags ["perl"]
    :memo "[[https://www.reddit.com/r/perl/comments/7bcv35/discussion_what_are_you_working_on_this_week/][Too Many Requests]]"  ))
(hoarder:record "choroba/pm-cb"
  '(:description "PerlMonks ChatterBox"
    :tags ["perl"]
    :memo "[[https://www.reddit.com/r/perl/comments/7bcv35/discussion_what_are_you_working_on_this_week/][Too Many Requests]]"))
(hoarder:record "leejo/cgi-alternatives"
  '(:description "Documentation for \"modern\" alternatives to CGI.pm"
    :tags ["perl"]))
(hoarder:record "genehack/app-gitgot"
  '(:description "A tool to make it easier to manage multiple code repositories using different VCSen"
    :tags ["perl"]))
(hoarder:record "houseabsolute/Markdent"
  '(:description "An event-based Markdown parser toolkit"
    :tags ["perl"]))
(hoarder:record "moose/Role-Tiny"
  '(:description "Roles. Like a nouvelle cuisine portion size slice of Moose."
    :tags ["perl"]))
(hoarder:record "jonasbn/perl-test-timer"
  '(:description "Test::Timer - test module to test/assert response times"
    :tags ["perl" "perl-module" "perl5" "testing" "timing"]))
(hoarder:record "bcc32/App-WatchLater"
  '(:description "A collection of scripts to manage my YouTube habits"
    :tags ["perl" "perl5" "scripts" "youtube-api"]))
(hoarder:record "trizen/clyrics"
  '(:description "An extensible lyrics fetcher, with daemon support for cmus and mocp."
    :tags ["lyrics" "perl" "tool"]))
(hoarder:record "harleypig/dump-minecolonies-resources"
  '(:description "Dump required resources for a minecolonies structure"
    :tags ["minecraft" "minecraft-mod" "nbt" "nbt-parser" "perl" "perl-script"]))
(hoarder:record "gugod/Seacan"
  '(:tags ["perl"]))
(hoarder:record "greek-stasia/XDisc"
  '(:tags ["perl" "shodan-api"]))
(hoarder:record "kepbod/pl"
  '(:description "Perl oneliner"
    :tags ["shell" "perl"]))
(hoarder:record "stefansbv/transfer"
  '(:description "Transform and transfer data between files and databases using recipes."
    :tags ["csv" "database" "firebird" "perl" "postgresql" "recipe" "transformations" "xls"]))
(hoarder:record "duckduckgo/zeroclickinfo-goodies"
  '(:description "DuckDuckGo Instant Answers based on Perl & JavaScript"
    :tags ["duckduckgo" "instant-answers" "javascript" "perl"]))
(hoarder:record "duckduckgo/zeroclickinfo-spice"
  '(:description "DuckDuckGo Instant Answers based on JavaScript (JSON) APIs"
    :tags ["duckduckgo" "handlebars-js" "instant-answers" "javascript" "perl"]))
(hoarder:record "trwyant/perl-Perl-Critic-Policy-Variables-ProhibitUnusedVarsStricter"
  '(:description "Critique unused variables in Perl source."
    :tags ["perl" "perl-critic" "perl-module"]))
(hoarder:record "Hiroyuki-Nagata/fswiki"
  '(:description "FreeStyleWiki private modified repository"
    :tags ["perl" "wiki"]))
(hoarder:record "rjbs/rjbs-dots"
  '(:description "rjbs's misc. dotfiles"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=IG425RMEkRo][Ricardo Signes (‎rjbs‎) - ‎1.21 Gigawatts‎ - YouTube]]"))
(hoarder:record "rjbs/Ywar"
  '(:description "be aware"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=IG425RMEkRo][Ricardo Signes (‎rjbs‎) - ‎1.21 Gigawatts‎ - YouTube]]"))
(hoarder:record "rjbs/Synergy"
  '(:description "a little annoying bot that annoys me a little"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=IG425RMEkRo][Ricardo Signes (‎rjbs‎) - ‎1.21 Gigawatts‎ - YouTube]]"))
(hoarder:record "worthmine/Data-Pokemon-Go"
  '(:description "Utilities for Pokemon Go"
    :tags ["perl" "pokemon-go"]
    :memo "[[https://qiita.com/worthmine/items/4a51fd74f31b4a97cf3c][Data::Pokemon::GoというPerlモジュールをリリースした - Qiita]]"))
(hoarder:record "rjbs/Log-Dispatchouli"
  '(:description "(Perl) a simple wrapper around Log::Dispatch"
    :tags ["perl"]
    :site "https://metacpan.org/pod/Log::Dispatchouli"
    :memo "[[https://www.reddit.com/r/perl/comments/7dfzer/can_you_redirect_subroutine_stdout_into_a/][Too Many Requests]]"))
(hoarder:record "arodland/borkbot"
  '(:description "The last Perl IRC bot you will ever need"
    :tags ["perl"]))
(hoarder:record "dur-randir/namespace-clean-xs"
  '(:description "Keep imports and functions out of your namespace, in XS"
    :tags ["perl" "xs"]))
(hoarder:record "Debian/devscripts"
  '(:description "Mirror of https://anonscm.debian.org/cgit/collab-maint/devscripts.git"
    :tags ["mirrored-repositories" "perl" "scripts-collection"]))
(hoarder:record "rgolubtsov/dnsresolvd-multilang"
  '(:description "A daemon that performs DNS lookups for the given hostname passed in an HTTP request, with the focus on its implementation using various programming languages."
    :tags ["c" "daemon" "dns" "http" "javascript" "libmicrohttpd" "lua" "luvit" "mojolicious" "multilang" "nodejs" "perl" "python" "resolver" "twisted"]))
(hoarder:record "skx/templer"
  '(:description "A modular extensible static-site-generator written in perl."
    :tags ["perl" "static-site-generator" "templer"]))
(hoarder:record "skx/chronicle2"
  '(:description "Chronicle is a simple blog compiler, written in Perl with minimal dependencies."
    :tags ["cgi" "cpan" "perl" "sqlite" "static-site-generator"]))
(hoarder:record "ReneNyffenegger/notes"
  '(:tags ["perl"]))
(hoarder:record "kcodyjr/kcody-perl"
  '(:description "CPAN sources by KCODY"
    :tags ["perl"]))
(hoarder:record "virtualmin/virtualmin-gpl"
  '(:description "Virtualmin web hosting control panel for Webmin"
    :tags ["perl"]))
(hoarder:record "MYDan/mayi"
  '(:tags ["perl"]))
(hoarder:record "skx/webserver-attacks"
  '(:description "Identify attacks against webservers via simple rules"
    :tags ["perl"]))
(hoarder:record "skx/CGI--Application--Plugin--Throttle"
  '(:description "Rate-limiting for CGI::Application-based applications, using Redis for persistence."
    :tags ["perl"]))
(hoarder:record "skx/blogspam-xml-rpc-proxy"
  '(:description "Proxy blogspam tests via blogspam.js"
    :tags ["perl"]))
(hoarder:record "ericschernoff/omnitool-installer"
  '(:description "Source for CPAN module to guide installation of the OmniTool Web Application Framework."
    :tags ["perl"]))
(hoarder:record "graphql-perl/GraphQL-Plugin-Convert-OpenAPI"
  '(:description "Plugin to convert OpenAPI schema to GraphQL schema"
    :tags ["perl"]))
(hoarder:record "chicks-net/life-graphs"
  '(:description "graphs of health, money, and technology"
    :download nil
    :tags ["perl"]))
(hoarder:record "apache/spamassassin"
  '(:description "Read-only mirror of Apache SpamAssassin. Submit patches to https://bz.apache.org/SpamAssassin/. Do not send pull requests"
    :tags ["perl"]))
(hoarder:record "mhop/fhem-mirror"
  '(:description "Branch 'master' is a read-only-mirror of  https://svn.fhem.de/fhem/trunk which is updated once a day. (branch sf_old a mirror of the old repo: svn://svn.code.sf.net/p/fhem/code/trunk)"
    :tags ["perl"]))
(hoarder:record "ufal/treex"
  '(:description "Treex NLP framework"
    :tags ["perl"]))
(hoarder:record "NOVACyclist/ShaleRocksBot"
  '(:description "Full-featured Perl IRC bot, multi-threaded, supports | piping | commands, extensible via plugins, GPLv3 Originally by offtherocks"
    :tags ["perl"]))
(hoarder:record "qooob/authentic-theme"
  '(:description "Theme for the best server management panel of the 21st Century"
    :tags ["perl" "cloudmin" "usermin" "virtualmin" "webmin"]))
(hoarder:record "nigelhorne/Data-Fetch"
  '(:description "Fetch data that you've hinted you'll be wanting"
    :tags ["perl"]))
(hoarder:record "wakaba/perl-web-useragent-functions"
  '(:description "Web::UserAgent::Functions"
    :tags ["perl"]))
(hoarder:record "wakaba/perl-promised-file"
  '(:tags ["perl"]))
(hoarder:record "Jeansen/cdmn"
  '(:description "perl extension for urxvt"
    :tags ["perl" "perl-extension" "rxvt"]))
(hoarder:record "eserte/org-daemon"
  '(:description "watch for appointments in org-mode files"
    :tags ["perl"]))
(hoarder:record "irssi/scripts.irssi.org"
  '(:description "Script Repository for Irssi"
    :tags ["perl"]))
(hoarder:record "skx/yawns"
  '(:description "Yet another weblog/news site"
    :tags ["perl"]))
(hoarder:record "eisenherzz/NumberOneFan"
  '(:description "Download all the stuff I am fan of on Jamendo"
    :tags ["perl"]))
(hoarder:record "ruping/trick"
  '(:description "some scripts used for small conveniences"
    :tags ["perl"]))
(hoarder:record "berkmancenter/mediacloud"
  '(:description "Media Cloud is an open source, open data platform that allows researchers to answer quantitative questions about the content of online media."
    :tags ["perl"]))
(hoarder:record "eserte/doit"
  '(:description "a scripting framework"
    :tags ["perl"]))
(hoarder:record "wentasah/novaboot"
  '(:description "A tool for booting various operating systems on various hardware or in qemu"
    :tags ["perl"]))
(hoarder:record "manakai/perl-web-css"
  '(:description "CSS, Selectors, and Media Queries"
    :tags ["perl"]))
(hoarder:record "manakai/perl-web-dom"
  '(:description "A pure-Perl DOM implementation"
    :tags ["perl"]))
(hoarder:record "wakaba/furuike"
  '(:description "A static file Web server"
    :tags ["perl"]))
(hoarder:record "wakaba/perl-promised-plackup"
  '(:tags ["perl"]))
(hoarder:record "wakaba/temma"
  '(:description "Temma - HTML + Perl template processor"
    :tags ["perl"]))
(hoarder:record "wakaba/perl-setupenv"
  '(:tags ["prolog"]))
(hoarder:record "fanf2/regpg"
  '(:description "safely store server secrets"
    :tags ["perl"]))
(hoarder:record "inkedsaber/perl-zip1"
  '(:description "Script that makes my life a little bit easier, but probably useless for most people. Created mostly for fun."
    :tags ["perl"]))
(hoarder:record "dram1964/Catalogue"
  '(:tags ["perl"]))
(hoarder:record "bywatersolutions/koha-plugin-ebook-deleter"
  '(:description "Plugin to delete ebooks"
    :tags ["perl"]))
(hoarder:record "stefansbv/Tpda3"
  '(:description "Tiny Perl Database Application with Perl Tk (and experimental wxPerl) front-end."
    :tags ["perl" "tk" "wk"]))
(hoarder:record "sitaramc/hashfile"
  '(:description "low-volume/low-load key-value store for shell use"
    :tags ["perl"]))
(hoarder:record "mr-mixas/Struct-Diff.pm"
  '(:description "Recursive diff for nested perl structures"
    :tags ["perl"]))
(hoarder:record "dotse/zonemaster"
  '(:description "The Zonemaster Project"
    :tags ["prolog"]))
(hoarder:record "moznion/Perl-PrereqScanner-Lite"
  '(:description "Lightweight Prereqs Scanner for Perl"
    :tags ["perl"]))
(hoarder:record "athreef/App-FilterUtils"
  '(:tags ["perl" "app-cmd"]
    :memo "[[https://metacpan.org/pod/App::FilterUtils][App::FilterUtils - Command-line filter utilities - metacpan.org]]"))
(hoarder:record "lockettnb/fix_filenames"
  '(:description "scripts to remove spaces and unwanted characters from filenames"
    :tags ["perl"]))
(hoarder:record "unstabler/App-Ephemeral"
  '(:description "twitter userstream => mastodon unidirectional bridge"
    :tags ["perl" "mastodon" "twitter"]))
(hoarder:record "vaeth/less-select"
  '(:description "This is a patch to provide selection support for the \"less\" program"
    :tags ["perl"]))
(hoarder:record "jwilk/https-everygit"
  '(:description "git config that enforces HTTPS for many repos"
    :tags ["perl"]))
(hoarder:record "vaeth/termcolors-mv"
  '(:description "256colors sample script and dircolors configuration for standard or 256 colors"
    :tags ["perl"]))
(hoarder:record "nickolasburr/git-follow"
  '(:description "Follow lifetime changes of a pathspec in Git."
    :tags ["git" "git-diff" "git-log" "history" "patch" "perl" "stat"]))
(hoarder:record "get-iplayer/get_iplayer"
  '(:description "A utility for downloading TV and radio programmes from BBC iPlayer"
    :tags ["perl"]))
(hoarder:record "wakaba/clipboard-server"
  '(:tags ["perl"]))
(hoarder:record "abbypan/gen_music_list"
  '(:description "generate music list html,  use audiojs mp3 player "
    :tags ["perl"]))
(hoarder:record "haje61/Wx-Perl-PluggableTextCtrl"
  '(:description "Text widget with plugins"
    :tags ["perl"]))
(hoarder:record "wakaba/perl-promised-command"
  '(:tags ["perl"]))
(hoarder:record "wakaba/perl-promised-timer"
  '(:tags ["perl"]))
(hoarder:record "theappleman/ella-rexipe"
  '(:description "Rexipes and playbooks for Gentoo Parallellas"
    :tags ["perl"]))
(hoarder:record "philippe44/LMS-CPlus"
  '(:description "Play Canal+ video in LMS"
    :tags ["perl"]))
(hoarder:record "i7c/cfm"
  '(:description "Free and open source listening tracker"
    :tags ["perl" "lastfm" "music" "musicbrainz" "tracking"]))
(hoarder:record "preaction/Yancy"
  '(:description "A tiny CMS / REST API using Mojolicious"
    :tags ["perl"]))
(hoarder:record "kurema/EpubResourceTEP"
  '(:description "「倫理と哲学のトピック」のepub作成様に作ったツール他。"
    :tags ["perl"]))
(hoarder:record "vaeth/comp"
  '(:description "compare files or directories, including metadata"
    :tags ["perl"]))
(hoarder:record "thejud/text-processing-cookbook"
  '(:description "A cookbook of tools and techniques for processing text and data at the linux command line"
    :tags ["perl"]))
(hoarder:record "charsbar/Perl-PrereqScanner-NotQuiteLite"
  '(:tags ["perl"]))
(hoarder:record "XANi/toolbox"
  '(:description "random crap and small/unfinished admin scripts"
    :tags ["perl"]))
(hoarder:record "philsmd/7z2hashcat"
  '(:description "extract information from password-protected .7z archives (and .sfx files) such that you can crack these \"hashes\" with hashcat"
    :tags ["perl"]))
(hoarder:record "gflohr/qgoda"
  '(:description "Qgoda (pronounce: yagoda!) is an extensible static site generator."
    :tags ["perl"]))
(hoarder:record "tententenshi/tenshiscripts"
  '(:description "tenshi's scripts"
    :tags ["perl"]))
(hoarder:record "sbakker/Adwaita-Steven"
  '(:description "Make Adwaita Great Again! (Or, at the very least, tweakable.)"
    :tags ["perl" "gtk"]))
(hoarder:record "UPC/ravada"
  '(:description "Remote Virtual Desktops Manager"
    :tags ["perl" "kvm" "libvirt" "vdi"]))
(hoarder:record "leyrer/rss-slideshow"
  '(:tags ["perl"]))
(hoarder:record "nigelhorne/CGI-Untaint-Twitter"
  '(:description "Validate a Twitter ID in a CGI script"
    :tags ["perl"]))
(hoarder:record "ttssdev/appflow"
  '(:description "Multitenant environment automation."
    :tags ["perl" "ansible" "appflow" "bedrock" "capistrano" "deploy" "provision" "tenant" "ubuntu" "vagrant" "virtualbox"]))
(hoarder:record "trieloff/githop"
  '(:description "Hop into your Development Environment from Git"
    :tags ["perl"]))
(hoarder:record "kazeburo/Gazelle"
  '(:description "Preforked Plack Handler for performance freaks"
    :tags ["c++"]))
(hoarder:record "harrisonlab/pseudomonas"
  '(:tags ["perl"]))
(hoarder:record "perfsonar/mesh-config"
  '(:description "Centralized configuration framework for measurement points and GUIs"
    :tags ["perl"]))
(hoarder:record "qiwzhang/esp"
  '(:description "Extensible Service Proxy"
    :tags ["perl"]))
(hoarder:record "olof/hacks"
  '(:description "Random small hacks/utilities that in themselves don't warrant their own repos"
    :tags ["perl"]))
(hoarder:record "perl5-utils/Hash-Merge"
  '(:description "Perl5 module which merges arbitrarily deep hashes into a single hash"
    :tags ["perl"]))
(hoarder:record "Qarj/WebInject"
  '(:description "A fast and free headless http level automated testing tool"
    :tags ["perl"]))
(hoarder:record "GAURANG-VYAS/OSL_Perl-Music-Player"
  '(:description "A simple music player in Perl"
    :tags ["perl" "tk"]))
(hoarder:record "glgraca/PiFrame"
  '(:tags ["perl"]))
(hoarder:record "YasuakiOmokawa/MojoKaiseki01"
  '(:tags ["javascript" "perl"]
    :memo "[[https://qiita.com/omokawa_yasu/items/dfa09a1a30c512f993ea][Mojoliciousで、Selenium + PhantomJS を使った簡単なスクレイピングツールを作る - Qiita]]"))
(hoarder:record "nrdvana/perl-Data-RecordExtractor"
  '(:tags ["perl"]))
(hoarder:record "jwittkoski/comcheck"
  '(:description "Watch video directories and run commmercial detection on new videos"
    :tags ["perl"]))
(hoarder:record "dallaylaen/perl-mvc-neaf"
  '(:description "[BETA] Not Even A Framework - for the laziest"
    :tags ["perl" "framework" "mvc"]))
(hoarder:record "skrp/THESIS"
  '(:description "MKRX unix archive network "
    :tags ["perl"]))
(hoarder:record "matrix-org/sytest"
  '(:description "Black-box integration testing for Matrix homeservers"
    :tags ["perl"]))
(hoarder:record "holcapek/perl5-Perl-Critic-Policy-ProhibitSmartmatch"
  '(:description "Perl::Critic policies which help to avoid both explicit and implicit smartmatching"
    :tags ["perl"]))
(hoarder:record "acidvegas/irssi"
  '(:description " A backup of my irssi config, theme, & scripts."
    :tags ["perl" "backup" "chat" "config" "internet-relay-chat" "irc" "irssi" "settings" "theme"]))
(hoarder:record "IvanHito/Perl_task_pool"
  '(:tags ["perl"]))
(hoarder:record "arstercz/sys-toolkit"
  '(:description "Common utilities for sysadmin/dba"
    :tags ["perl" "mysql" "sysadmin" "toolkit"]))
(hoarder:record "sni/Webinject"
  '(:description "Webinject"
    :tags ["perl"]))
(hoarder:record "vyuh/twitter-txtr"
  '(:description "command line twitter client. tool for customized analyses of twitter data"
    :tags ["perl" "twitter"]))
(hoarder:record "kouamano/XMLOP"
  '(:description "xml"
    :tags ["perl"]))
(hoarder:record "skrp/MKRX"
  '(:description "Anarchist Archives"
    :tags ["perl" "deduplication" "mass-storage" "obfuscation" "zfs"]))
(hoarder:record "roganhamby/Prague"
  '(:tags ["perl"]))
(hoarder:record "sysread/AnyEvent-ProcessPool"
  '(:description "An asynchronous process pool for Perl using AnyEvent"
    :tags ["perl"]))
(hoarder:record "wakaba/perl-test-x1"
  '(:description "Test::X1 Perl test module"
    :tags ["perl"]))
(hoarder:record "dod38fr/config-model-tk-ui"
  '(:description "Perl/Tk graphical interface for Config::Model"
    :tags ["perl"]))
(hoarder:record "ispyhumanfly/mpavutils"
  '(:description "A collection of useful audio and video endcoding utilities. "
    :tags ["perl"]))
(hoarder:record "cpan-testers/cpantesters-backend"
  '(:description "Backend data processing for CPAN Testers"
    :tags ["perl"]
    :memo "[[https://github.com/cpan-testers/cpantesters-backend/blob/master/Rexfile][cpantesters-backend/Rexfile at master · cpan-testers/cpantesters-backend · GitHub]]"))
(hoarder:record "laserbat/RogueNano"
  '(:description "A roguelike in 400 characters!"
    :tags ["code-golf" "fun" "game" "minimal" "minimalist" "perl" "roguelike"]))
(hoarder:record "p-alik/perl-Gearman"
  '(:tags ["perl"]))
(hoarder:record "anparker/api-mikrotik"
  '(:description "Non-blocking MikroTik API client."
    :tags ["perl"]))
(hoarder:record "vlcty/check_syncthing"
  '(:description "Monitor you syncthing daemon"
    :tags ["perl"]))
(hoarder:record "torrentkino/feuerland"
  '(:description "Geo-Blocking with iptables for desktops and servers"
    :tags ["perl"]))
(hoarder:record "kiwix/tools"
  '(:tags ["perl"]))
(hoarder:record "ericfischer/scanner-tools"
  '(:description "Tools for scanned PDFs"
    :tags ["perl"]))
(hoarder:record "wofr06/lesspipe"
  '(:description "lesspipe (formerly on sourceforge)"
    :tags ["perl"]))
(hoarder:record "c-hudson/teenymush"
  '(:description "TeenyMUSH Server"
    :tags ["perl"]))
(hoarder:record "KohaSuomi/kohasuomi"
  '(:description "Suomi-Kohasta kaikille jotain!"
    :tags ["perl"]
    :download nil))
(hoarder:record "zelurker/freebox"
  '(:description "Mon interface pour remplacer la freebox, basée sur mplayer/mplayer2, supporte cds, podcasts, youtube, chaines dvb, vidéos sur le réseau, etc..."
    :tags ["perl"]))
(hoarder:record "josiahbryan/appcorepl"
  '(:description "Toolkit of core routines for building web applications in Perl with Class::DBI"
    :tags ["perl"]))
(hoarder:record "Phoenix616/My-Irssi-Stuff"
  '(:description "Scripts'n'stuff from my Irssi setup others might find useful"
    :tags ["perl"]))
(hoarder:record "WowVeryLogin/PerlUtilities"
  '(:description "Messing up with Perl: some linux utilities and other stuff"
    :tags ["perl"]))
(hoarder:record "wilyarti/merge"
  '(:description "A simple directory merge script that uses file hashes."
    :tags ["perl"]))
(hoarder:record "dani/patrix"
  '(:description "Simple command line Matrix client written in perl"
    :tags ["matrix" "perl"]))
(hoarder:record "LanikSJ/ubo-filters"
  '(:description "Lanik's uBO Filters"
    :tags ["perl" "adblock" "adblock-list" "adblock-plus" "adblocking" "filterlist" "ublock" "ublock-filters-rules" "ublock-list" "ublock-origin" "ubo" "ubo-filters"]))
(hoarder:record "sipwise/data-hal"
  '(:description "JSON-HAL implementation for Perl"
    :tags ["perl"]))
(hoarder:record "davehhpnet/yoump3"
  '(:description "wrapper for youtube-dl"
    :tags ["perl"]))
(hoarder:record "carnager/clerk"
  '(:description "clerk - mpd client, based on rofi/fzf"
    :tags ["perl" "bash" "mpd" "rofi"]))
(hoarder:record "bagder/dns2doh"
  '(:description "DNS to DOH"
    :tags ["perl" "dns" "dns-over-https" "doh"]))
(hoarder:record "citronalco/FM4-7Tage-Download"
  '(:description "Download MP3 files from FM4's 7-Tage player"
    :tags ["perl" "7-tage" "download" "fm4" "mp3"]))
(hoarder:record "bergware/dynamix"
  '(:tags ["perl"]))
(hoarder:record "SebastianRose/org-psgi"
  '(:description "Simply browse your *.org files "
    :tags ["perl"]))
(hoarder:record "kjetilk/RDF-LinkedData"
  '(:description "RDF::LinkedData is a Perl module for setting up Linked Data server"
    :tags ["perl"]))
(hoarder:record "ChristianSi/lytspel"
  '(:description "A simple phonetic respelling for the English language"
    :tags ["perl"]))
(hoarder:record "speich/fotodb"
  '(:description "old GUI to fill sqlite photodb"
    :tags ["perl"]
    :download nil))
(hoarder:record "mr-mixas/Struct-Path.pm"
  '(:description "Path for nested structures where path is also a structure"
    :tags ["perl"]))
(hoarder:record "wlgq33092/perl_flow_control_practice"
  '(:description "practice for perl"
    :tags ["perl"]))
(hoarder:record "mysociety/fixmystreet"
  '(:description "This is mySociety's popular map-based reporting platform: easy to install in new countries and regions"
    :tags ["perl" "civic-tech" "civictech" "councils" "fixmystreet" "international" "map" "mysociety" "reporting"]))
(hoarder:record "mikaeld66/kelda"
  '(:description "Scripts to populate a local copy ofexternal repositories, files and other data"
    :tags ["perl"]))
(hoarder:record "mydimension/Class-Ref"
  '(:description "Class::Ref - Automatic OO wrapping of container references"
    :tags ["perl"]))
(hoarder:record "ajgraves/aneuch"
  '(:description "Aneuch is a wiki engine developed entirely in PERL."
    :tags ["perl"]))
(hoarder:record "derf/picomon"
  '(:description "lo-fi host monitoring"
    :tags ["perl"]))
(hoarder:record "skrp/HIVE"
  '(:description "perl unix daemon distributive computing"
    :tags ["perl" "archive" "daemon" "deduplication" "distributed-computing" "unix"]))
(hoarder:record "hexfusion/perl-net-etcd"
  '(:description "Net::Etcd grpc-proxy v3 Perl client"
    :tags ["perl" "etcd" "etcd-client" "perl5"]))
(hoarder:record "jdigory/interchange-extras"
  '(:description "Usertags, Filters, and other goodies for Interchange"
    :tags ["perl"]))
(hoarder:record "shlomif/perl-SQ"
  '(:description "Provide a string containing a single quote for perl -e '...' one-liner scripts."
    :tags ["perl"]))
(hoarder:record "logzilla/extras"
  '(:description "LogZilla NetOps Platform: Network Insight, Simplified"
    :tags ["perl" "automation" "cisco" "encore" "estreamer" "firepower" "logzilla" "netops" "network-admin" "network-analysis" "network-monitoring" "syslog" "trigger"]))
(hoarder:record "icanhazbroccoli/Data-Enumerable-Lazy"
  '(:description "Perl5 lazy flat enumerator/generator"
    :tags ["perl"]))
(hoarder:record "sympa-community/sympa"
  '(:description "Sympa, Mailing List Management Software"
    :tags ["perl" "mailing-list" "sympa"]))
(hoarder:record "sympa-community/p5-sympatic"
  '(:description "use every sympa good practices in one line, just use Sympatic"
    :tags ["perl"]))
(hoarder:record "foswiki/distro"
  '(:description "START HERE!  This is the Foswiki project \"Distribution\".  It is a monolith repository with the core + default extensions."
    :tags ["perl"]))
(hoarder:record "project-renard/curie"
  '(:description ":mag_right::book: Document reader (currently in pre-alpha)"
    :tags ["perl" "application" "cpan"]))
(hoarder:record "sullo/nikto"
  '(:description "Nikto web server scanner"
    :tags ["perl"]))
(hoarder:record "jacdhalina/jetsetradiolive"
  '(:tags ["perl"]))
(hoarder:record "chenglian/file-archiving-utility-scripts"
  '(:description "File archiving and purging utilities written in shell and perl script. "
    :tags ["perl"]))
(hoarder:record "vaeth/mv_perl"
  '(:description "mv_perl - A collection of perl scripts (replacement in files, syncing dirs etc)"
    :tags ["perl"]))
(hoarder:record "ideegeo/Daemonise"
  '(:description "Daemonise - a general daemoniser for anything..."
    :tags ["perl"]))
(hoarder:record "ArcticaProject/arctica-browser"
  '(:description "The Arctica Web Browser"
    :tags ["perl"]))
(hoarder:record "melmothx/text-amuse"
  '(:description "Text::Amuse parser"
    :tags ["perl"]))
(hoarder:record "noxxi/p5-net-inspect"
  '(:description "Net::Inspect perl library"
    :tags ["perl"]))
(hoarder:record "manakai/perl-streams"
  '(:tags ["perl"]))
(hoarder:record "ivanwills/File-CodeSearch"
  '(:description "Search file systems ignoring build files, version control file, back up files etc"
    :tags ["perl"]))
(hoarder:record "ivanwills/App-watch-do"
  '(:description "Run a command when watched files or directories change"
    :tags ["perl"]))
(hoarder:record "faiproject/fai"
  '(:description "non-interactive system to install, customize and manage Linux systems"
    :tags ["perl"]))
(hoarder:record "eprints/eprints"
  '(:description "EPrints Core"
    :tags ["perl"]))
(hoarder:record "gnustavo/Git-Hooks"
  '(:description "Framework for implementing Git (and Gerrit) hooks"
    :tags ["git" "hooks" "perl"]))
(hoarder:record "orangejenny/flavors"
  '(:description "Music data manager and playlist generator."
    :tags ["perl"]))
(hoarder:record "benkasminbullock/image-png-libpng"
  '(:tags ["perl"]))
(hoarder:record "LibreCat/Catmandu-MediaHaven"
  '(:description "Catmandu tools to communicate with the Zeticon MediaHaven asset management system"
    :tags ["perl"]))
(hoarder:record "stvnfx/brians-blacklist"
  '(:tags ["perl"]))
(hoarder:record "MG-RAST/authServer"
  '(:description "oAuth authentication server with rights management"
    :tags ["perl"]))
(hoarder:record "catenate/pfsh"
  '(:description "Methods and primitives for parallel functional shell programming."
    :tags ["perl"]))
(hoarder:record "stefanlk/Webmin_VBoxCtrl"
  '(:description "A Webmin Module for Controlling VirtualBox Environment"
    :tags ["perl"]))
(hoarder:record "manakai/data-web-impls"
  '(:tags ["perl"]))
(hoarder:record "jhthorsen/applify"
  '(:description "Write object oriented scripts with ease"
    :tags ["perl"]))
(hoarder:record "dk/Prima-OpenGL"
  '(:description "Prima extension for OpenGL drawing"
    :tags ["perl"]))
(hoarder:record "fmasclef/svgtree"
  '(:description "Render a git-like tree as SVG from a text file"
    :tags ["perl"]))
(hoarder:record "noris-network/retry"
  '(:description "A command line tool for retrying command execution"
    :tags ["perl"]))
(hoarder:record "Git-Mediawiki/Git-Mediawiki"
  '(:description "Gate between Git and Mediawiki"
    :tags ["perl"]))
(hoarder:record "gabrielmad/API-Instagram"
  '(:description "Perl OO Interface to Instagram REST API"
    :tags ["perl"]))
(hoarder:record "blukatstudios/PerlClicker"
  '(:description "This is an attempt to learn perl and make a video game while doing so."
    :tags ["perl"]))
(hoarder:record "hoytech/Session-Token"
  '(:description "Secure, efficient, simple random session token generation"
    :tags ["perl" "random" "random-string" "session-token" "sessions" "uuid" "uuid-generator"]))
(hoarder:record "cazador481/App-LanguageServer-Perl"
  '(:description "A language server for perl"
    :tags ["perl"]))
(hoarder:record "leejoneshane/samba-fs"
  '(:tags ["perl"]))
(hoarder:record "kiwiroy/ssh-key-db"
  '(:tags ["perl"]))
(hoarder:record "kaz-utashiro/MBPrintf"
  '(:description "printf type function for multi-byte characters"
    :tags ["perl"]))
(hoarder:record "Ramialison-Lab-ARMI/Trawler-2.0"
  '(:description "Motif discovery tool"
    :download nil
    :tags ["perl"]))
(hoarder:record "wakaba/perl-webservice-imageurls"
  '(:description "WebSevice::ImageURLs Perl module"
    :tags ["perl"]))
(hoarder:record "smfreegard/HashBL"
  '(:description "Mail::SpamAssassin::Plugin::HashBL - lookups to the msbl.org blacklists"
    :tags ["perl"]))
(hoarder:record "kidd/dupplot"
  '(:description "file comparison to detect copies"
    :tags ["perl"]))
(hoarder:record "webmin/webmin"
  '(:description "Webmin source code"
    :download nil
    :tags ["perl"]))
(hoarder:record "ispyhumanfly/prowler"
  '(:description "Query the web, extract data from the results, and transform that data into a format you can use."
    :tags ["perl" "ai" "analytics" "business" "cryptocurrency" "data" "extract-data" "machine-learning" "mining" "scraping" "web"]))
(hoarder:record "braph/yafu"
  '(:description "client for yafu-web"
    :tags ["perl"]))
(hoarder:record "clicktx/p5-Yetie"
  '(:tags ["perl"]))
(hoarder:record "uboslinux/macrobuild"
  '(:description "Macro build framework"
    :tags ["perl"]))
(hoarder:record "d3m0n4l3x/fatbee"
  '(:description "In low-interaction honeypot written by demonalex, namely Alex Huang."
    :tags ["perl"]))
(hoarder:record "ivanwills/Term-Colour256"
  '(:description "Simplify outputting 256 on terminals"
    :tags ["perl"]))
(hoarder:record "osfameron/MooX-Zippable"
  '(:description "helpers for immutable code"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=4KcX9wHjVTM][Functional Pe(a)rls: Huey's Zipper - osfameron - YouTube]]"))
(hoarder:record "Leont/const-fast"
  '(:description "Facility for creating read-only scalars, arrays, hashes"
    :tags ["perl"]))
(hoarder:record "wakaba/workaholicd"
  '(:tags ["perl"]))
(hoarder:record "jmaslak/Parallel-WorkUnit"
  '(:description "Perl5 module to provide easy-to-use forking with ability to pass back data"
    :tags ["perl"]))
(hoarder:record "jmaslak/Perl-Critic-Policy-BadStrings"
  '(:description "Perl::Critic policy to search for \"bad words\""
    :tags ["perl"]))
(hoarder:record "djjudas21/photography-database"
  '(:description "MySQL schema for a film photography database"
    :tags ["perl"]))
(hoarder:record "cade-vs/perl-decor"
  '(:description "DECOR is Perl-based infrastructure for building general purpose information systems/applications."
    :tags ["perl"]))
(hoarder:record "Qarj/WebInject-Framework"
  '(:description "Framework for running WebInject automated tests, plus organising and visualising results"
    :tags ["perl"]))
(hoarder:record "z-eos/umi"
  '(:description "Unified Management Interface"
    :tags ["perl"]))
(hoarder:record "Firedrake/yokosou"
  '(:description "A lightweight web interface to MPD"
    :tags ["perl"]))
(hoarder:record "shlomif/perl-Object-Declare"
  '(:description "The Object::Declare CPAN Distribution - originally by Audrey Tang (AUDREYT)"
    :tags ["perl"]))
(hoarder:record "mr-mixas/Test-LWP-Capture.pm"
  '(:description "Mock LWP requests using captured data"
    :tags ["perl"]))
(hoarder:record "shlomif/Term-Shell"
  '(:description "Release history of Term-Shell"
    :tags ["perl"]))
(hoarder:record "devpanel/serverlink"
  '(:description "Software stack that runs on the web servers"
    :tags ["perl"]))
(hoarder:record "reyjrar/eris-logging"
  '(:description "Order from chaos, well mostly more chaos."
    :tags ["perl"]))
(hoarder:record "reyjrar/WWW-Subsonic"
  '(:tags ["perl"]))
(hoarder:record "scoopex/scriptreplay_ng"
  '(:description "A improved implementation of scriptreplay"
    :tags ["perl"]))
(hoarder:record "grossvater/graft"
  '(:tags ["perl"]))
(hoarder:record "SebTalbot/comfy_guration"
  '(:description "IN PROGRESS dotfiles, scripts and everything I need to be comfy."
    :tags ["perl"]))
(hoarder:record "mmitch/soundconvert"
  '(:description "convert compressed sound formats"
    :tags ["perl"]))
(hoarder:record "AsocPro/far"
  '(:description "Find and Replace Tool - Perl"
    :tags ["perl"]))
(hoarder:record "4FriendsForum/Ffc"
  '(:description "small web based private communication platform"
    :tags ["perl"]))
(hoarder:record "quattor/configuration-modules-core"
  '(:description "Node Configuration Manager Components for Everyone"
    :tags ["perl"]))
(hoarder:record "tupinek/Error-Pure-ANSIColor"
  '(:description "Perl module for structured errors with Text::ANSIColor output."
    :tags ["perl"]))
(hoarder:record "XPanel/epp"
  '(:description "OpenSource Domain Name Registry Platform"
    :tags ["perl"]))
(hoarder:record "melmothx/amusewiki"
  '(:description "Text::Amuse-based publishing platform"
    :tags ["perl"]))
(hoarder:record "yoku0825/ytkit"
  '(:description "Yoku-san no Tool KIT"
    :tags ["perl"]))
(hoarder:record "phillid/idalius"
  '(:description "Extensible IRC bot born out of 🎺🎷🎺 emoji"
    :tags ["perl"]))
(hoarder:record "sunny256/utils"
  '(:description "My good old ~/bin directory with lots of utility scripts I use every day. Started version controlling it in 1999 with CVS and it has followed me around everywhere since then."
    :tags ["perl"]))
(hoarder:record "profplump/UberZach-Video"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-Git-Bunch"
  '(:tags ["perl"]))
(hoarder:record "Firedrake/aikakirja"
  '(:description "A static blogging engine based on Steve Kemp's Chronicle"
    :tags ["perl"]))
(hoarder:record "nigelhorne/pds"
  '(:description "Photography Display System"
    :tags ["perl" "album" "photographs" "photography-site"]))
(hoarder:record "nigelhorne/CGI-Allow"
  '(:description "Decide whether to allow a client to run a CGI script"
    :tags ["perl"]))
(hoarder:record "nigelhorne/File-pfopen"
  '(:description "Try hard to find a file"
    :tags ["perl"]))
(hoarder:record "clasclin/info-peliculas"
  '(:tags ["perl"]))
(hoarder:record "twinl/crawler"
  '(:description "crawler"
    :tags ["perl"]))
(hoarder:record "TakeAsh/p-RecRadiru"
  '(:description "Record NHK Net Radio らじる★らじる with rtmpdump"
    :tags ["perl"]))
(hoarder:record "beast-den/Be.pm"
  '(:description "Just a set of my favourite perl subroutines"
    :tags ["perl"]))
(hoarder:record "haukex/File-Replace"
  '(:description "File::Replace - Perl extension for replacing files by renaming a temp file over the original [See BitBucket for issue tracker!]"
    :tags ["file-replace" "perl" "perl-extension" "perl-module"]))
(hoarder:record "jib/archive-tar-new"
  '(:tags ["perl"]))
(hoarder:record "natalieronson/perl-widget"
  '(:tags ["perl" "tk"]))
(hoarder:record "addy-dclxvi/Xfwm4-Theme-Collections") 
(hoarder:record "ValeriyKr/procwatch"
  '(:description "Running processes viewer"
    :tags ["perl"]))
(hoarder:record "jmaslak/Range-Merge"
  '(:description "Perl Module to merge ranges (CIDR or Integer)"
    :tags ["perl"]))
(hoarder:record "wakaba/i401"
  '(:description "A Perl IRC bot module"
    :tags ["perl" "bot" "chatbot" "i401" "irc" "slack"]))
(hoarder:record "stevan/p5-HTML-MasonX-Inspector"
  '(:description "Introspection into HTML::Mason compiler and interpreter"
    :tags ["perl"]))
(hoarder:record "statgen/monitor-topmed"
  '(:tags ["perl"]))
(hoarder:record "ivanwills/WebService-SonarQube"
  '(:description "API for talking to SonarQube"
    :tags ["perl"]))
(hoarder:record "ivanwills/SVG-Calendar"
  '(:description "Perl module that generates calendars in SVG"
    :tags ["perl"]))
(hoarder:record "mnalis/ssh-line-mode"
  '(:description "Like a telnet line-by-line mode, but for ssh client (for high-latency links)"
    :tags ["perl"]))
(hoarder:record "jmaslak/App-NameChangeAssist"
  '(:description "Assists with changing a human's name (such as after marriage)"
    :tags ["perl"]))
(hoarder:record "b3o1/Snoop"
  '(:description "Aid in exploiting DNS servers that are susceptible to DNS cache snooping.  The script enumerates a list of domain names, obtained from a text file,  and verifies whether the remote DNS server contains a record for any given domain name."
    :tags ["perl"]))
(hoarder:record "jkeenan/cpan-mini-visit-simple"
  '(:description "Lightweight traversal of a minicpan repository"
    :tags ["perl"]))
(hoarder:record "sparkylinux/obmenu-generator"
  '(:tags ["perl"]))
(hoarder:record "jmaslak/IP-Random"
  '(:tags ["perl"]))
(hoarder:record "mr-mixas/NDTools"
  '(:description "CLI tools for nested data structures"
    :tags ["perl"]))
(hoarder:record "quietfanatic/make-pl"
  '(:description "Portable programmable build system"
    :tags ["perl"]))
(hoarder:record "charsbar/Test-CPANfile"
  '(:description "see if cpanfile lists every used modules"
    :tags ["perl"]))
(hoarder:record "jhthorsen/openapi-client"
  '(:description "A client for talking to an Open API powered server"
    :tags ["perl"]))
(hoarder:record "altomator/Image_Retrieval"
  '(:description "Image Retrieval in Digital Libraries - A Multicollection Experimentation of Machine Learning techniques"
    :tags ["perl" "alto-xml" "digital-library" "image-classification" "image-recognition" "image-retrieval" "inception-v3" "mets-xml" "ocr" "perl-script" "watson-visual-recognition"]))
(hoarder:record "rbaron/jk"
  '(:tags ["perl"]))
(hoarder:record "ccntrq/siggy"
  '(:description "siggy - use strictures 2 and turn on signatures"
    :tags ["perl"]))
(hoarder:record "shlomif/perl-XML-RSS"
  '(:description "The Repository for the CPAN XML::RSS module for parsing and generating various versions of RSS."
    :tags ["perl"]))
(hoarder:record "shlomif/Text-WrapAsUtf8"
  '(:description "Wrap output in the UTF-8 layer"
    :tags ["perl"]))
(hoarder:record "Alikzus/minion"
  '(:tags ["perl"]))
(hoarder:record "ddurdle/PERL-CloudSync"
  '(:description "A PERL implementation of Google Drive for cross-platform"
    :tags ["perl"]))
(hoarder:record "pip/Octology"
  '(:description "An ontology based on the power of 8."
    :tags ["perl"]))
(hoarder:record "sca21002/Atacama"
  '(:tags ["perl"]))
(hoarder:record "asbru-cm/asbru-cm"
  '(:description "Ásbrú Connection Manager is a user interface that helps organizing remote terminal sessions and automating repetitive tasks."
    :tags ["connection-manager" "perl" "remote-shell" "terminal-emulator" "tunnel-client"]))
(hoarder:record "Qarj/WebInject-Selenium"
  '(:description "Plugin to WebInject so it can drive a Chrome browser via Selenium"
    :tags ["perl"]))
(hoarder:record "MinecraftServerControl/msc-gui"
  '(:description "A web-based GUI for Minecraft Server Control (PROOF OF CONCEPT)"
    :tags ["perl"]))
(hoarder:record "grellopoulos/occurrences"
  '(:description "Sort documents by occurrences of some components mentioned within"
    :tags ["perl"]))
(hoarder:record "grellopoulos/despace"
  '(:tags ["perl"]))
(hoarder:record "monajemi/clusterjob"
  '(:description "ClusterJob: An automated system for painless and reproducible massive computational experiments"
    :tags ["perl"]))
(hoarder:record "wakaba/schemadb"
  '(:tags ["perl"]))
(hoarder:record "virtual-dark/ovh-Pub"
  '(:description "scripts with ovh action"
    :tags ["perl"]))
(hoarder:record "PLTGit/uuidb"
  '(:description "UUID based NoSQL document store in/for Perl, ideal for graph storage, JSON DBs, etc."
    :tags ["perl"]))
(hoarder:record "knowledgejunkie/XMLTV"
  '(:description "A git tracker of the XMLTV Project's CVS repository. No direct commits."
    :tags ["perl"]))
(hoarder:record "jmaslak/Acme-Unicodify"
  '(:tags ["perl"]))
(hoarder:record "kilobyte/vtgamma"
  '(:description "gamma correction for Linux console"
    :tags ["perl"]))
(hoarder:record "shlomif/catable"
  '(:description "CATAlyst BLog Engine - written by perl cats"
    :tags ["perl"]))
(hoarder:record "mrscotty/App-Executive"
  '(:description "menuexec - A simple console menu system for logged command execution"
    :tags ["perl"]))
(hoarder:record "skx/markdownshare.com"
  '(:description "The code behind http://markdownshare.com/"
    :tags ["cgi" "markdown" "perl" "website"]))
(hoarder:record "Aerdan/Chessa"
  '(:description "The code which underpins my personal IRC bot."
    :tags ["perl"]))
(hoarder:record "iwelch/sylspace"
  '(:description "course management and equizzing webapp"
    :tags ["perl"]))
(hoarder:record "vanstyn/RapidApp"
  '(:description "Turnkey ajaxy webapps"
    :tags ["perl"]))
(hoarder:record "borisveytsman/crossrefware"
  '(:tags ["perl"]))
(hoarder:record "leejoneshane/WAM"
  '(:tags ["perl"]))
(hoarder:record "NappyLand/TextGame"
  '(:tags ["perl"]))
(hoarder:record "DCIT/perl-CryptX"
  '(:tags ["perl"]))
(hoarder:record "yoe/sreview"
  '(:description "sreview review system"
    :tags ["perl" "review" "video" "webinterface"]))
(hoarder:record "reyjrar/Parse-Syslog-Line"
  '(:description "Flexible library for parsing syslog messages in Perl"
    :tags ["perl"]))
(hoarder:record "PhilterPaper/Perl-PDF-Builder"
  '(:description "fork of popular PDF::API2 Perl-based PDF library"
    :tags ["perl"]))
(hoarder:record "GouveaHeitor/nipe"
  '(:description "Nipe is a script to make Tor Network your default gateway."
    :tags ["anonymity" "anonymize" "iptables" "network" "nipe" "perl" "privacy" "tor" "tor-network"]))
(hoarder:record "jae-63/scrollscraper"
  '(:description "This is the source repo for the Virtual Tikkun at scrollscraper.adatshalom.net"
    :tags ["perl"]))
(hoarder:record "jhthorsen/applify"
  '(:description "Write object oriented scripts with ease"
    :tags ["perl"]))
(hoarder:record "fanf2/nsdiff"
  '(:description "create nsupdate script from zone file differences"
    :tags ["perl"]))
(hoarder:record "auduny/statpipe"
  '(:description "Poor mans splunk. Command line statistics real time statistcs while tailing logs"
    :tags ["perl"]))
(hoarder:record "pliablepixels/zmeventserver"
  '(:description "Secure Websocket based ZoneMinder event notification server. "
    :tags ["perl" "event-notifications" "websockets" "zmninja" "zoneminder" "zoneminder-server"]))
(hoarder:record "asmirn01/rrdpi"
  '(:description "Set of perl scripts for Raspberry PI monitoring"
    :tags ["perl"]))
(hoarder:record "yanick/Neovim-RPC"
  '(:tags ["perl"]))
(hoarder:record "yanick/Neovim-RPC-Plugin-Taskwarrior"
  '(:tags ["perl"]))
(hoarder:record "yanick/MsgPack-RPC"
  '(:tags ["perl"]))
(hoarder:record "autarch/Chloro"
  '(:description "Form Processing So Easy It Will Knock You Out"
    :tags ["perl"]))
(hoarder:record "solemnwarning/bike-music-player"
  '(:tags ["perl"]))
(hoarder:record "kawanet/XML-TreePP"
  '(:description "XML::TreePP -- Pure Perl implementation for parsing/writing XML documents"
    :tags ["perl"]))
(hoarder:record "SmartArray/MediaRename"
  '(:description "Perl script that renames pictures according to their actual exif recording date."
    :tags ["perl"]))
(hoarder:record "drq883/ripDVDs"
  '(:description "Perl script that uses python gem video_transcoding (and handbrake) to rip DVDs"
    :tags ["perl"]))
(hoarder:record "jonasbn/perl-workflow"
  '(:description "Simple, flexible system to implement workflows"
    :tags ["perl" "perl-module" "perl5" "state-machine" "workflow"]))
(hoarder:record "bels/voting_app"
  '(:tags ["perl"]))
(hoarder:record "bagder/everything-curl"
  '(:description "The book documenting the curl project, the curl tool, libcurl and everything related to this."
    :tags ["perl" "book" "curl" "documentation" "libcurl"]))
(hoarder:record "skozawa/Shachi"
  '(:tags ["perl"]))
(hoarder:record "mmitch/jamirdochegal"
  '(:description "listen to webradios via mplayer"
    :tags ["perl"]))
(hoarder:record "woodpeck/osm-revert-scripts"
  '(:description "A collection of Perl scripts to handle reverts on OpenStreetMap"
    :tags ["perl"]))
(hoarder:record "dushoff/makestuff"
  '(:tags ["perl"]))
(hoarder:record "regru/Net-Whois-Raw"
  '(:description "Get Whois information for domains"
    :tags ["perl"]))
(hoarder:record "pchristopher1275/cee-sequence-player"
  '(:description "C's Midi player software"
    :tags ["perl"]))
(hoarder:record "gaurav/tumblr-backup"
  '(:description "A backup of my Tumblr account from tumblr.ggvaidya.com"
    :tags ["perl"]))
(hoarder:record "mrbaseman/anfd"
  '(:description "Application Networking Firewall Daemon"
    :tags ["perl"]))
(hoarder:record "arioux/ExtractFace"
  '(:description "Dump Facebook stuff for analysis or reporting purposes"
    :tags ["perl"]))
(hoarder:record "eserte/Doit"
  '(:description "a scripting framework"
    :tags ["perl"]))
(hoarder:record "rev138/pod_feeder"
  '(:description "Publishes RSS/Atom feeds to Diaspora*"
    :tags ["perl"]))
(hoarder:record "kaoru/App-highlight"
  '(:description "A simple grep-like filter that highlights chosen words or lines rather than removing non-filtered lines"
    :tags ["perl"]
    :memo "[[https://metacpan.org/release/App-highlight][App-highlight-0.14 - A simple grep-like filter that highlights chosen words or lines rather than removing non-filtere...]]"))
(hoarder:record "toddr/IPC-Run"
  '(:description "Clone of http://svn.ali.as/cpan/trunk/IPC-Run"
    :tags ["perl"]))
(hoarder:record "apa-it/xml-newsml-g2"
  '(:description "XML::NewsML_G2 - generate NewsML-G2 news items"
    :tags ["perl"]))
(hoarder:record "ivanwills/App-PS1"
  '(:description "Command Prompt tool"
    :tags ["perl"]))
(hoarder:record "cv-library/WebDriver-Tiny"
  '(:description "Selenium 2.0 bindings for Perl"
    :tags ["perl"]))
(hoarder:record "guillaumezin/DomoticzControl"
  '(:description "Squeezebox / Logitech Media Server plugin for controling Domoticz devices"
    :tags ["perl"]))
(hoarder:record "kaz-utashiro/cdif"
  '(:description "cdif - context diff command"
    :tags ["perl"]))
(hoarder:record "kaz-utashiro/greple"
  '(:description "greple: grep type command with multiple keywords"
    :tags ["perl"]))
(hoarder:record "Hive13/HiveWeb"
  '(:description "The new Hive internal Web"
    :tags ["perl"]))
(hoarder:record "virtualmin/virtualmin-git"
  '(:description "Virtualmin plugin to manage git repository creation and hosting for domains"
    :tags ["perl"]))
(hoarder:record "jonathancross/pics.jonathancross.com"
  '(:description "🏝 JCDSee web photo gallery"
    :tags ["perl" "photo-gallery" "progressive-enhancement" "responsive-design" "web-application"]))
(hoarder:record "sysread/Ion"
  '(:description "A clear and concise API for writing TCP servers and clients in Perl"
    :tags ["perl"]))
(hoarder:record "Csson/p5-MoopsX-UsingMoose"
  '(:description "Make Moops use Moose instead of Moo"
    :tags ["perl"]))
(hoarder:record "toniher/wikipedia-scripts"
  '(:description "Repository for handy wikipedia scripts"
    :tags ["perl"]))
(hoarder:record "yanick/xml-xss"
  '(:description "XML Stylesheet System"
    :tags ["perl"]))
(hoarder:record "collinsp/perl-CGI-OptimalQuery"
  '(:description "CGI::OptimalQuery - dynamic SQL query viewer"
    :tags ["perl"]))
(hoarder:record "architek/WWW-FBX"
  '(:description "Freebox v6 perl interface using Moose"
    :tags ["perl"]))
(hoarder:record "ANTONC13/Data-Type-Digger"
  '(:description "digging types from data structures"
    :tags ["perl"]))
(hoarder:record "akiym/DD"
  '(:description "My own Data::Printer"
    :tags ["perl"]))
(hoarder:record "startsiden/pipr-ws"
  '(:description "Picture provider"
    :tags ["perl"]))
(hoarder:record "manwar/Syntax-Highlight-Engine-Kate"
  '(:tags ["perl"]))
(hoarder:record "boumenot/p5-Net-Amazon"
  '(:description "Perl framework for accessing amazon.com using REST."
    :tags ["perl"]))
(hoarder:record "sbakker/gnome-terminal-profile"
  '(:description " YAML-based GNOME Terminal colour schemes "
    :tags ["perl" "gnome-terminal-themes" "yaml" "zenburn"]))
(hoarder:record "tamochu/bj_buu"
  '(:description "blind justice黒豚鯖ソースコード"
    :tags ["perl"]))
(hoarder:record "sheratan17/findbot"
  '(:description "Search malware/spam/injected file. Originally from abuseat.org"
    :tags ["perl"]))
(hoarder:record "vrag86/perl-mailru-cloud-api"
  '(:description "Perl module for access to cloud.mail.ru"
    :tags ["perl"]))
(hoarder:record "bigio/tcp-proxy"
  '(:description "A simple tcp proxy that changes its source ip"
    :tags ["perl"]))
(hoarder:record "shivampatel887/spider-crack"
  '(:description "It is a perl script to hack Facebook."
    :tags ["facebook" "facebook-hack" "fun" "hacking" "hacking-tool" "perl" "script" "scripting"]))
(hoarder:record "skullhacker007/iplookup"
  '(:description "iplookup is a tool which is used to know Geolocation of IP "
    :tags ["perl"]))
(hoarder:record "lwindolf/multi-status"
  '(:description "Aggregator for status pages of online services. Know which of your 3rd party SaaS/PaaS are having issues right now."
    :tags ["perl"]))
(hoarder:record "dave-theunsub/clamtk"
  '(:description "An easy to use, light-weight, on-demand virus scanner for Linux systems"
    :tags ["gtk" "gui" "linux" "linux-desktop" "perl" "perl-gtk2" "security"]))
(hoarder:record "monsieurvideo/get-flash-videos"
  '(:description "Download or play videos from various Flash-based video hosting sites, without having to use the Flash player."
    :tags ["perl"]))
(hoarder:record "https://github.com/monsieurvideo/get-flash-videos.wiki.git")
(hoarder:record "skrp/ECHO"
  '(:description "Ghosts in the Machine"
    :tags ["perl"]))
(hoarder:record "evernote/serge"
  '(:description "Free, open-source solution for continuous localization"
    :tags ["perl" "ci" "continuous-localization" "l10n" "localization" "parser"]))
(hoarder:record "mgood7123/UPM"
  '(:description "Universal Package Manager"
    :download nil
    :tags ["perl"]))
(hoarder:record "voc/hls-relive"
  '(:description "An HLS stream timeshifting system"
    :tags ["perl"]))
(hoarder:record "gitpan/Tk-Thumbnail"
  '(:description "Read-only release history for Tk-Thumbnail"
    :tags ["perl"]))
(hoarder:record "https://kyber.io/git/tmblr"
  '(:tags ["perl" "tumblr"]
    :type :git))
(hoarder:record "Corion/app-scrape"
  '(:description "Simple HTML scraping from the command line"
    :tags ["perl"]))
(hoarder:record "ingydotnet/kwiki"
  '(:description "Kwiki Wiki Framework"
    :tags ["perl"]))
(hoarder:record "tyru/watchman"
  '(:description "2ch image downloader # DEPRECATED"
    :tags ["perl"]))
(hoarder:record "davorg/perlanet"
  '(:description "Simple Planet Clone in Perl"
    :tags ["perl"]))
(hoarder:record "arc/image-jpeg-size"
  '(:description "Perl 5 library for finding JPEG image sizes"
    :tags ["perl"]
    :memo "https://metacpan.org/pod/Image::JPEG::Size"))
(hoarder:record "batchmcnulty/killdupes"
  '(:description "Wordlist / text uniquifier which ignores trailing whitespace and cr/lf mismaches."
    :tags ["perl"]))
(hoarder:record "mad-ady/ffserver-trigger"
  '(:description "Trigger starting ffmpeg as a signal source when a clients connects to ffserver"
    :tags ["perl"]))
(hoarder:record "oleg-fiksel/perl_xmas"
  '(:description "Short perl script for drawing christmas tree in different size depending on the month and day."
    :tags ["perl"]))
(hoarder:record "ActiveDbSoft/webapi-active-query-builder-perl"
  '(:tags ["perl"]))
(hoarder:record "manwar/SVG"
  '(:description "Perl extension for generating Scalable Vector Graphics documents."
    :tags ["perl"]))
(hoarder:record "borisdaeppen/EBook--MOBI"
  '(:description "Ebook in MOBI format with Perl"
    :tags ["perl"]))
(hoarder:record "ardnew/pcp"
  '(:description "another file copy script with progress indicators and other stuff"
    :tags ["checksum" "file-copy" "file-io" "perl" "progress-indicators" "synchronous"]))
(hoarder:record "metabrainz/musicbrainz-server"
  '(:description "The official musicbrainz-server codebase"
    :tags ["perl"]))
(hoarder:record "marghidanu/werk"
  '(:description "DAG Workflows in Perl"
    :tags ["perl"]))
(hoarder:record "britannic/Adblock"
  '(:description "EdgeMax EdgeOS dnsmasq blacklisting"
    :tags ["perl"]))
(hoarder:record "chazmcgarvey/groupsecret"
  '(:description "A simple tool for maintaining a shared group secret"
    :tags ["ansible-vault" "encryption" "perl" "ssh"]))
(hoarder:record "nigelhorne/CGI-ACL"
  '(:description "Decide whether to allow a client to run this script"
    :tags ["perl"]))
(hoarder:record "donovan/har2sequence"
  '(:description "Convert HTTP Archive format (HAR) to websequencediagrams compatible output"
    :tags ["perl"]))
(hoarder:record "joshschmelzle/network-automation"
  '(:description "collection of scripts for network-automation. use at your own risk. "
    :tags ["perl"]))
(hoarder:record "fink/fink"
  '(:description "The fink package manager"
    :tags ["perl"]))
(hoarder:record "ardnew/perl-mod"
  '(:description "pure-perl modules for I/O, functional iterators, files, and list utilities"
    :tags ["files" "io" "iterators" "lists" "module" "perl" "util"]))
(hoarder:record "JGRennison/yarssr"
  '(:description "A fork of Yarssr (a RSS reader for the GNOME Tray) from http://yarssr.sf.net with various fixes."
    :tags ["perl"]))
(hoarder:record "bluefeet/GitLab-API-v3"
  '(:description "A complete GitLab API v3 client."
    :tags ["perl"]))
(hoarder:record "shortland/Youtube-Playlist-to-Text-List"
  '(:description "Get names of all videos in a playlist. Useful for playlists with several hundred videos. Output is a text file with each video name delimited with new line"
    :tags ["perl"]))
(hoarder:record "kronometrix/recording"
  '(:description "Data Recording Module"
    :tags ["perl" "iot" "performance-metrics" "weather-data"]))
(hoarder:record "ctrlo/GADS"
  '(:description "Globally Accessible Data Store"
    :tags ["perl"]))
(hoarder:record "adedomin/irssi-mac-notify"
  '(:description "macOS notifications for Irssi"
    :tags ["perl"]))
(hoarder:record "Furniel/Apk-Changer"
  '(:description "Command line program for modifying apk files"
    :download nil
    :tags ["perl" "apk" "apk-decompiler" "apk-editor" "apksigner-jarsigner" "apktool" "command-line" "dex" "jar" "smali" "windows"]))
(hoarder:record "patschbo/BaNG"
  '(:description "Backup Next Generation for Linux & Mac (using rsync and btrfs snapshots, Web-Frontend, Statistics, History-Merger)"
    :tags ["backup" "btrfs" "dar" "linux" "mac" "perl" "rsync" "snapshot"]))
(hoarder:record "sgivan/Convert2MP3"
  '(:description "Scripts to convert audio files to mp3"
    :tags ["perl"]))
(hoarder:record "quattor/CAF"
  '(:description "Perl Common Application Framework"
    :tags ["perl"]))
(hoarder:record "evansbenj/Ideas_for_Xue"
  '(:tags ["perl"]))
(hoarder:record "fbabetto/blinp"
  '(:tags ["perl"]))
(hoarder:record "trwyant/perl-Astro-SpaceTrack"
  '(:description "Download satellite orbital elements from Space Track and other sources"
    :tags ["aerospace" "perl" "perl-module" "satellite-prediction"]))
(hoarder:record "Corion/future-http"
  '(:description "provide the most appropriate HTTP client with a Future API"
    :tags ["perl"]))
(hoarder:record "masotime-sandboxes/heif-sandbox"
  '(:description "Figuring out how to convert files to the HEIC container"
    :download nil
    :tags ["perl"]))
(hoarder:record "selftaught/shodancli"
  '(:description "Shodan CLI client and API library wrappers"
    :tags ["perl"]))
(hoarder:record "ANSI-C/JSONP"
  '(:description "Perl module to build lightweight JSON web services"
    :tags ["perl"]))
(hoarder:record "sog-mud/sog-web"
  '(:tags ["perl"]))
(hoarder:record "paveljurca/i"
  '(:tags ["perl"]))
(hoarder:record "book/Git-Database"
  '(:description "http://metacpan.org/release/Git-Database"
    :tags ["perl"]))
(hoarder:record "Perl-Toolchain-Gang/File-Fetch"
  '(:tags ["perl"]))
(hoarder:record "Keith-S-Thompson/random-passwords"
  '(:description "Utilities for generating random passwords and passphrases"
    :tags ["perl"]))
(hoarder:record "kjpye/dnsdb"
  '(:description "Maintain a database copy of dns zones"
    :tags ["perl"]))
(hoarder:record "drmrgd/mocha_torrent_tools"
  '(:tags ["perl"]))
(hoarder:record "cvicente/Netdot"
  '(:description "Network Documentation Tool"
    :tags ["perl" "ipam"]))
(hoarder:record "HatsuZ/BitMiner-v3"
  '(:description "BitMiner is a malware to get virtual coins !"
    :tags ["perl"]))
(hoarder:record "keremgokhan/awesome-app"
  '(:description "My personal blog."
    :tags ["blog" "mojolicious" "mysql" "perl" "perl5"]))
(hoarder:record "jan-herout/Metadata-Powerdesigner"
  '(:tags ["perl"]))
(hoarder:record "jacob-jarick/copyflow"
  '(:tags ["perl"]))
(hoarder:record "mlude/usemod"
  '(:description "usemod wiki script"
    :tags ["perl"]))
(hoarder:record "jacob-jarick/rmplayer"
  '(:description "my humble random media player"
    :tags ["perl"]))
(hoarder:record "do-know/Crypt-LE"
  '(:description "Crypt::LE (ZeroSSL project) - Let's Encrypt client and library in Perl for getting free SSL certificates (inc. generating RSA/ECC keys and CSRs). HTTP/DNS verification is supported out of the box, easily extended with plugins."
    :tags ["certificate" "crypt" "crypt-le" "dns" "docker" "docker-ssl" "ecc" "ecdsa" "free-ssl-certificates" "pem" "perl" "pfx" "rsa" "security" "ssl" "windows-ssl" "zerossl"]))
(hoarder:record "phaidra/phaidra-api"
  '(:description "A lightweight web service API to Phaidra"
    :tags ["perl" "repository"]))
(hoarder:record "ericfischer/flickr-backup"
  '(:description "Script for backing up my Flickr account"
    :tags ["perl"]))
(hoarder:record "calvinm/ezproxy-abuse-checker"
  '(:description "Actively monitors ezproxy log file for vacuum attack."
    :tags ["perl"]))
(hoarder:record "philippe44/LMS-YouTube"
  '(:description "Play YouTube videos on LMS"
    :tags ["perl"]))
(hoarder:record "alihassane/script-perl"
  '(:description "simple perl scripts"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-ANSIColorUtils"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-App-rsynccolor"
  '(:tags ["perl"]))
(hoarder:record "jkeenan/perl-download-ftp"
  '(:description "Identify Perl releases and download the most recent"
    :tags ["perl"]))
(hoarder:record "rjbs/App-Cmd"
  '(:description "perl framework for testable, extensible command line apps"
    :tags ["perl"]))
(hoarder:record "AntiGov/ProxyGraper"
  '(:description "Get Free Proxy Using ProxyGraper"
    :tags ["perl"]))
(hoarder:record "koolshare/synology-easyexplorer"
  '(:description "EasyExplorer 跨设备、点对点文件传输同步工具 http://koolshare.cn/thread-129199-1-1.html"
    :tags ["perl"]))
(hoarder:record "XMLTV/xmltv"
  '(:description "Utilities to obtain and process TV listings data"
    :tags ["perl"]))
(hoarder:record "manwar/WWW-Google-KnowledgeGraphSearch"
  '(:description "Interface to Google Knowledge Graph Search API."
    :tags ["perl"]))
(hoarder:record "barefootcoder/perlx-bash"
  '(:description "Use bash syntax in your Perl scripts"
    :tags ["perl"]))
(hoarder:record "DOCGroup/MPC"
  '(:description "MPC (The Makefile, Project, and Workspace Creator)"
    :tags ["perl"]))
(hoarder:record "maros/Zway-HomelyAlarm"
  '(:description "Zway binding to HomelyAlarm server"
    :tags ["perl" "home-automation" "zwave" "zway"]))
(hoarder:record "s31tz/Prty"
  '(:description "Class Library in Perl"
    :tags ["perl"]))
(hoarder:record "trizen/perl-scripts"
  '(:description "A collection of day-to-day Perl scripts which prove some ideas or implement some useful practicability."
    :tags ["ideas" "math" "perl" "perl-scripts" "scripts" "utils"]))
(hoarder:record "DeaDBeeF-Player/deadbeef-plugin-builder"
  '(:description "DeaDBeeF Plugin Builder"
    :tags ["perl"]))
(hoarder:record "abbypan/Novel-Robot-Browser"
  '(:description "get/post url, return unicode content, auto detect CJK charset"
    :tags ["perl"]))
(hoarder:record "Megastardaboss/Jon_chatbot"
  '(:description "A chatbot for Jon the Raspberry PI, with some basic AI. He can recognize sentence types, and adjusts his use of words, sentence structures, types, repetitions, and plurality based on a user rating from 1-5."
    :tags ["perl"]))
(hoarder:record "hisaichi5518/p5-Perl-Critic-Policy-Operators-DontUseSmartMatch"
  '(:description "no smart match."
    :tags ["perl"]))
(hoarder:record "nguttman/Nagios-Checks"
  '(:description "A place for me to share simple Nagios checks scripts"
    :tags ["perl"]))
(hoarder:record "pitamatein/perlB"
  '(:description "perlB is a modern HTML5 fork of WebBBS, a Web-based bulletin board written in Perl."
    :tags ["perl"]))
(hoarder:record "eserte/srezic-misc"
  '(:description "Misc stuff"
    :tags ["perl"]))
(hoarder:record "backuppc/backuppc"
  '(:description "BackupPC is a high-performance, enterprise-grade system for backing up to a server's disk."
    :tags ["perl"]))
(hoarder:record "elmar/aptitude-robot"
  '(:tags ["perl"]))
(hoarder:record "tthaliath/pstree"
  '(:description "perl implementation of pstree tool"
    :tags ["perl"]))
(hoarder:record "slavoslav/rpc-rtorrent"
  '(:description "Perl module for communication with rtorrent"
    :tags ["perl"]))
(hoarder:record "majutsushi/urxvt-font-size"
  '(:description "Change the urxvt font size on the fly"
    :tags ["perl"]))
(hoarder:record "batchmcnulty/uberscan"
  '(:description "Security program for recovering passwords and pen-testing servers, routers and IoT devices using brute-force password attacks."
    :tags ["brute-force" "brute-force-attacks" "bruteforce" "hacking" "password-recovery" "passwordattack" "pentest" "pentest-tool" "perl"]))
(hoarder:record "abbypan/Novel-Robot-Parser"
  '(:description "get novel / bbs content from website,  小说站点解析引擎"
    :tags ["perl"]))
(hoarder:record "kbapana/Xlsx2CSV.pl"
  '(:description "This is being used to convert the files from .xls or .Xlsx to .CSV format"
    :tags ["perl"]))
(hoarder:record "tsubasaogawa/weatherkun"
  '(:tags ["perl"]))
(hoarder:record "v4p0r/Mass-Wordpress-BruteForce"
  '(:description "Script criado para rodar um ataque de força bruta em cms Wordpress"
    :tags ["perl"]))
(hoarder:record "markdootson/raspduino"
  '(:description "Random pieces interfacing Raspberry Pi using Perl with Arduino"
    :tags ["perl"]))
(hoarder:record "ibm-cloud-architecture/refarch-privatecloud"
  '(:description "This project provides guidance on how to deploy IBM Private Cloud"
    :tags ["perl"]))
(hoarder:record "mneudert/luxy"
  '(:description "Dynamic upstream selection (URI based) for NGINX"
    :tags ["perl"]))
(hoarder:record "creativearmy/caf"
  '(:description "Creativearmy App Framework"
    :tags ["perl"]))
(hoarder:record "citiususc/Linguakit"
  '(:description "Multilingual toolkit for NLP: dependency parser, PoS tagger, NERC, multiword extractor, sentiment analysis, etc. "
    :download nil
    :tags ["perl"]))
(hoarder:record "andrewbasterfield/logger"
  '(:description "Small utility that allows a shell command to be run, captures STDOUT and STDERR and logs them to STDOUT with timestamp"
    :tags ["perl"]))
(hoarder:record "taskboy3000/desktop_cheerlights"
  '(:description "A perl Tk client for the ThingSpeak Cheerlights channel"
    :tags ["cheerlights" "perl" "tk"]))
(hoarder:record "tkuchiki/alp"
  '(:description "Access Log Profiler"
    :tags ["go" "access-logs" "golang" "ltsv" "profiler"]
    :memo "[[http://sfujiwara.hatenablog.com/entry/2017/12/04/115006][alp と Plack::Middleware::QueryCounter を合わせて使うと捗る - 酒日記 はてな支店]]"))
(hoarder:record "acidlemon/p5-Plack-Middleware-QueryCounter"
  '(:description "Plack::Middleware::QueryCounter"
    :tags ["perl" "middleware" "perl5" "plack"]
    :memo "[[http://sfujiwara.hatenablog.com/entry/2017/12/04/115006][alp と Plack::Middleware::QueryCounter を合わせて使うと捗る - 酒日記 はてな支店]]"))
(hoarder:record "p-frolov/torrents_perl"
  '(:description "Загрузчик торрент файлов из ПК в удаленный Transmission клиент"
    :tags ["perl"]))
(hoarder:record "ology/Food-Recipe"
  '(:description "Recipe Search Tool"
    :tags ["perl"]))
(hoarder:record "wheelybird/templater"
  '(:description "A very basic templating engine, ideal for use with Docker Swarm"
    :tags ["perl"]))
(hoarder:record "neo1ite/p5-Digest-Perl-MD6"
  '(:description "Perl implementation of MD6 Algorithm"
    :tags ["perl"]))
(hoarder:record "ruittenb/p-f-m"
  '(:tags ["perl"]))
(hoarder:record "Aircloak/diffix-attacks"
  '(:tags ["perl"]))
(hoarder:record "ybrliiu/hirakata_papark"
  '(:description "ひらかたパパーク"
    :tags ["perl"]))
(hoarder:record "ldidry/lstu"
  '(:description "Lightweight URL shortener"
    :tags ["perl"]))
(hoarder:record "xexpanderx/cilia"
  '(:description "Fluxbox theme"
    :tags ["perl" "fluxbox" "theme"]))
(hoarder:record "kaz-utashiro/sdif-tools"
  '(:description "Repository for sdif family commands, including cdif and watchdiff."
    :tags ["perl"]))
(hoarder:record "plandes/synconf"
  '(:description "Synchronize disconnected directories (i.e. laptops, USB memory pens)."
    :tags ["perl" "mnemonic" "rsync" "xml-configuration"]))
(hoarder:record "borekl/nhs"
  '(:description "NetHack Scoreboard"
    :tags ["perl"]))
(hoarder:record "sjdy521/Mojo-Webqq"
  '(:description "使用Perl语言（不会没关系）编写的smartqq/webqq客户端框架（非GUI），可通过插件提供基于HTTP协议的api接口供其他语言或系统调用"
    :tags ["api" "bot" "chat" "chatbot" "cli" "docker" "irc" "mojo" "perl" "qq" "qqbot" "smartqq" "webqq"]))
(hoarder:record "binary-com/perl-Data-Validate-Sanctions"
  '(:description "Validate a name against sanctions lists"
    :tags ["perl"]))
(hoarder:record "coreybrenner/grace"
  '(:tags ["perl"]))
(hoarder:record "loleron/perl-scripts"
  '(:tags ["perl" "danbooru"]))
(hoarder:record "koitsu/errno"
  '(:description "Perl-based errno lookup utility (similar to MySQL perror)"
    :tags ["errno" "perl" "perror"]))
(hoarder:record "shortland/Laundry-View"
  '(:description "My own version of LaundryView w/text alerts. Can work w/multiple locations"
    :tags ["perl"]))
(hoarder:record "bapike/cookbook_generator"
  '(:description "A Perl script that generates a cookbook (in LaTeX) from a directory tree of recipes, and some metadata"
    :tags ["perl"]))
(hoarder:record "geostarling/rex-gentoo-host"
  '(:description "Rex module for basic management of Gentoo-based hosts"
    :tags ["perl"]))
(hoarder:record "geostarling/rex-gentoo-install"
  '(:description "Rex module for installation of Gentoo host"
    :tags ["perl"]))
(hoarder:record "geostarling/rex-gentoo-xorgserver"
  '(:tags ["perl"]))
(hoarder:record "gms8994/boincview-web"
  '(:description "Aim to replicate BOINCView in an open source, perl script utilizing a browser to interact with clients"
    :tags ["perl"]))
(hoarder:record "xtaran/wApua"
  '(:description "web browser for WAP WML pages"
    :tags ["browser" "libwww-perl" "lwp" "perl" "tk" "wap" "wml"]))
(hoarder:record "phrounz/mini-perl-neural-network"
  '(:description "Minimal learning neural network coded in Perl - for me to understand how it works"
    :tags ["perl"]))
(hoarder:record "geostarling/rex-gentoo-tvheadend"
  '(:tags ["perl"]))
(hoarder:record "geostarling/rex-gentoo-awesomewm"
  '(:tags ["perl"]))
(hoarder:record "CrimsonGlory/ncmpcpp2scrbblr"
  '(:description "ncmpcpp2scrobblr is a last.fm/audioscrobbler song submission script for ncmpcpp"
    :tags ["perl"]))
(hoarder:record "oalders/html-restrict"
  '(:description "HTML::Restrict - Strip away unwanted HTML tags"
    :tags ["parse" "perl" "strip-html" "unwanted-html-tags"]))
(hoarder:record "slavoslav/rpc-rtorrent"
  '(:description "Perl module for communication with rtorrent"
    :tags ["perl"]))
(hoarder:record "nephri/FreeNas-DiskList"
  '(:description "FreeNas \"Disklist\" script for report informations about installed hard drives"
    :tags ["perl"]))
(hoarder:record "MonolithInd/suicideCrypt"
  '(:description "A toolset for creating cryptographically strong volumes that destroy themselves upon tampering or via issued command"
    :tags ["perl"]))
(hoarder:record "zentyal/zentyal"
  '(:description "Linux Small Business Server"
    :tags ["perl"]))
(hoarder:record "tbaltrushaitis/gsbot"
  '(:description "More than chatbot for \"Cossacks Back to War\" Game Server hosted by GameSpy"
    :tags ["perl" "bot" "bot-helper" "bot-logger" "chatbot" "cossacks" "gamespy" "irc-bot" "messenger"]))
(hoarder:record "bennettpeter/mythscripts"
  '(:description "Scripts for MythTV"
    :tags ["perl"]))
(hoarder:record "nickaubert/i3movon"
  '(:tags ["perl"]))
(hoarder:record "mneudert/sass-nginx-module"
  '(:description "Syntactically Awesome NGINX Module"
    :tags ["perl"]))
(hoarder:record "Spauldo/misc-utilities"
  '(:description "Various UNIX utilities"
    :tags ["perl"]))
(hoarder:record "andre-st/irssi-plugins"
  '(:description "Plugins for the IRC textmode client Irssi, such as a channel recommender on the basis of aggregated whois-data of other users"
    :tags ["perl" "addons" "chat" "collaborative-filtering" "extensions" "irc" "irssi" "plugins" "recommendation-system" "recommender" "social"]))
(hoarder:record "kugijp/fswiki"
  '(:description "FreeStyle Wiki 3.x系 保守"
    :tags ["perl"]))
(hoarder:record "AbsurdMagpieScrutinies/mass-googler"
  '(:tags ["perl"]))
(hoarder:record "vjp/fcms"
  '(:description "perl cms framework"
    :tags ["perl"]))
(hoarder:record "jjn1056/Template-Lace"
  '(:description "No Logic Templates and View Components for Catalyst"
    :tags ["perl"]))
(hoarder:record "aferreira/cpan-Kevin-Command-kevin"
  '(:description "Minion job queue alternative commands"
    :tags ["perl"]))
(hoarder:record "solitaryr/xymon_notes"
  '(:description "A web-based editor for modifying your server notes files in Xymon.  Xymon's built-in notes viewer will pick up any changes you make."
    :tags ["perl"]))
(hoarder:record "dferrero/matcher"
  '(:description "Multiregex checker against logs"
    :tags ["perl"]))
(hoarder:record "chadeadams/inspkt"
  '(:description "Inspect Packet - FTN Packet command line inspection tool for Windows or Linux"
    :tags ["perl"]))
(hoarder:record "nigelhorne/CGI-Info"
  '(:description "Information about the CGI environment"
    :tags ["perl"]))
(hoarder:record "mnott/csvdb"
  '(:description "Treat CSV files like a database."
    :tags ["perl"]))
(hoarder:record "taskula/portfolio"
  '(:tags ["perl"]))
(hoarder:record "moose/intro-to-moose"
  '(:description "Intro to Moose class"
    :tags ["perl"]))
(hoarder:record "Grinnz/maverick"
  '(:description "Perl Mojo::IRC Bot framework"
    :tags ["perl"]))
(hoarder:record "melezhik/outthentic"
  '(:description "Multipurpose scenarios framework"
    :tags ["perl" "outthentic-stories" "outthentic-suites" "scenario" "story" "story-runner"]))
(hoarder:record "justinnamilee/YAPLM"
  '(:description "Yet Another Perl Logging Module is a dead-simple logging module based on the TIE::SCALAR Perl definition."
    :tags ["logging" "perl"]))
(hoarder:record "rabbitmq/github-multirepos"
  '(:description "Manage multiple repositories at once"
    :tags ["perl"]))
(hoarder:record "wp-seth/textre"
  '(:description "replaces strings in one or many text-files in-place and recursively using regexps"
    :tags ["perl"]))
(hoarder:record "christian-roggia/vndb"
  '(:description "Unofficial vndb.org (Visual Novel Database) source code repository."
    :tags ["perl" "database" "novel" "unofficial" "visual" "visual-novel" "vndb" "vndb-org"]))
(hoarder:record "rumbero71/pihole-shallalist"
  '(:description "PiHole as a parental filter using Shalla's blacklist"
    :tags ["perl"]))
(hoarder:record "UIM-Community/static_enrichment"
  '(:description "CA UIM - Static message enrichment"
    :tags ["perl"]))
(hoarder:record "multiblogfront/mbfsv-updater"
  '(:description "An update-manager developed for multiblogfront but which other projects can use as well"
    :tags ["perl"]))
(hoarder:record "robrwo/File-Rotate-Simple"
  '(:description "No-frills file rotation"
    :tags ["perl"]))
(hoarder:record "mvgrimes/AnyEvent-Filesys-Notify"
  '(:description "Module to monitor a file system for modifications which is AnyEvent compatible "
    :tags ["perl"]))
(hoarder:record "JaSei/photo_sorter"
  '(:description "simple script to categorize your media (photo/video) to chronology tree "
    :tags ["perl"]))
(hoarder:record "Farow/hexchat-scripts"
  '(:description "Perl scripts for HexChat"
    :tags ["perl"]))
(hoarder:record "briandfoy/module-extract-namespaces"
  '(:description "(Perl) This is what the module does"
    :tags ["perl"]))
(hoarder:record "ildar-shaimordanov/perl-utils"
  '(:description "Set of text-oriented utilities for processing paragraphs and piping"
    :tags ["grep" "logfile-parser" "multilined-entries" "perl" "pipeline" "piping" "processing-paragraphs" "sort" "sponge" "transpose"]))
(hoarder:record "Nordaaker/convos"
  '(:description " Convos :busts_in_silhouette: is the simplest way to use IRC in your browser"
    :tags ["chat" "irc" "irc-client" "mojolicious" "perl" "web-app"]))
(hoarder:record "prasidmitra/infoextract"
  '(:description "Event Information Extraction System"
    :tags ["perl"]))
(hoarder:record "wtoorop/Net-DNS"
  '(:description "Export of the official subversion repository on https://www.net-dns.org/svn/net-dns/"
    :tags ["perl"]))
(hoarder:record "sgsax/sgbot"
  '(:description "Collection of scripts used by an irssi-based IRC bot"
    :tags ["perl"]))
(hoarder:record "haum/TwitterBot"
  '(:description "A simple bridge between Twitter and IRC"
    :tags ["perl"]))
(hoarder:record "dskoumpourdis/facebook_video_downloader"
  '(:description "A collection of javascript, bash and php scripts able to download videos and their statistics from facebook."
    :tags ["perl"]))
(hoarder:record "KikyTokamuro/4chanImg"
  '(:description "4chan.org image downloader"
    :tags ["perl"]))
(hoarder:record "shutterstock/Net-Statsd-Client"
  '(:tags ["perl"]))
(hoarder:record "sitemason/SitemasonPl"
  '(:description "A collection of Perl modules to handle common functions."
    :tags ["perl"]))
(hoarder:record "NoritomoTaba/BBS_mojo"
  '(:tags ["perl"]))
(hoarder:record "zigdon/xkcd-Bucket"
  '(:description "Bucket is the channel bot for #xkcd"
    :tags ["perl"]))
(hoarder:record "plume-lib/checklink"
  '(:description "Variant of the W3C Link Checker"
    :tags ["perl"]))
(hoarder:record "mattijk/pingtest"
  '(:description "Pingtest is a small utility for logging network outages."
    :tags ["perl"]))
(hoarder:record "Grinnz/Alt-File-HomeDir-Tiny-Pretty"
  '(:tags ["perl"]))
(hoarder:record "smpb/dedup-organizer"
  '(:description "Simple script to deduplicate (and organize in a dir tree) source dirs with images."
    :tags ["deduplication" "perl" "perl5"]))
(hoarder:record "Ovid/keyword-development"
  '(:description "Use DEVELOPMENT blocks which literally don't exist at compile-time in production code"
    :tags ["perl"]))
(hoarder:record "masakyst/dancer2-Daikufile"
  '(:description "Daikufile for perl dancer2"
    :tags ["perl"]))
(hoarder:record "oyvindstegard/nrkrip"
  '(:description "Command line utility to rip video streams from Norwegian national broadcasting service NRK"
    :tags ["perl"]))
(hoarder:record "zxzharmlesszxz/p5-dhcp-server-oop"
  '(:tags ["perl"]))
(hoarder:record "leafybear/together-video"
  '(:description "A perl script to joiner a few or many mp4 files losslessly using ffmpeg."
    :tags ["perl"]))
(hoarder:record "wikimedia/mediawiki-extensions-timeline"
  '(:description "Github mirror of MediaWiki extension timeline - our actual code is hosted with Gerrit (please see https://www.mediawiki.org/wiki/Developer_access for contributing)"
    :tags ["perl"]))
(hoarder:record "ivanwills/Group-Git"
  '(:description "Perform actions against a group of git repositories (helpers for use with Github, Bitbucked, Stash or Gitosis repositories)"
    :tags ["perl"]))
(hoarder:record "gugod/bin"
  '(:description "Basically my ~/bin folder."
    :tags ["perl"]))
(hoarder:record "gugod/p5iq"
  '(:description "Perl 5 code index / query /search"
    :tags ["perl"]))
(hoarder:record "ingydotnet/spiffy-pm"
  '(:description "Spiffy Perl Interface Framework For You"
    :tags ["perl" "oop"]))
(hoarder:record "gugod/sitebrew"
  '(:description "static site generator"
    :tags ["perl"]))
(hoarder:record "gugod/perl-app-pack"
  '(:description "A collection of standalone perl programs"
    :tags ["perl" "fatpack"]))
(hoarder:record "necrodraco/MissingSeriesFinder"
  '(:tags ["perl" "kodi"]))
(hoarder:record "jeteve/l4p-appender-chunk"
  '(:description "A Log4Perl appender that stores chunks of logs"
    :tags ["perl"]))
(hoarder:record "sgeos/oauth-api-example"
  '(:description "Example of 2-legged OAuth web API in perl."
    :tags ["perl"]))
(hoarder:record "culugyx/tinc-graph"
  '(:tags ["perl" "tinc"]))
(hoarder:record "rolanday/File-EasyFind"
  '(:description "File::Find made easy, with support for regex filename pattern matching and caller specified callback method."
    :tags ["perl"]))
(hoarder:record "binary-com/perl-Date-Utility"
  '(:tags ["perl"]))
(hoarder:record "openerserver/openerserver_perl"
  '(:description "Http Container for run any code with http server."
    :tags ["perl"]))
(hoarder:record "fayland/perl-WebService-DeathByCaptcha"
  '(:description "DeathByCaptcha recaptcha API"
    :tags ["perl"]))
(hoarder:record "joycetipping/tomato"
  '(:description "A minimalistic command-line recipe manager"
    :tags ["perl"]))
(hoarder:record "polizoto/segment_transcript"
  '(:description "This script segments a plain text file into \"caption-ready\" chunks. It then aligns the text file with audio, using Aeneas. (On a Mac)"
    :tags ["perl"]))
(hoarder:record "bk2204/muter"
  '(:description "tool for converting data to and from various formats"
    :tags ["perl"]))
(hoarder:record "Grinnz/Syntax-Each-PerOp"
  '(:description "Syntax::Each::PerOp - A per-op each function"
    :tags ["perl"]))
(hoarder:record "interchange/interchange"
  '(:description "Interchange"
    :tags ["perl"]))
(hoarder:record "goose121/initify"
  '(:description "Convert systemd services to OpenRC init-scripts"
    :tags ["perl"]))
(hoarder:record "userbrett/jukebox"
  '(:description "A project to create a diskless jukebox."
    :tags ["perl"]))
(hoarder:record "tomaszg7/gallery"
  '(:description "Fork of static gallery generator http://sgallery.sourceforge.net/"
    :tags ["perl"]))
(hoarder:record "NZRS/Data-Extract-Facility"
  '(:tags ["perl"]))
(hoarder:record "ThomasAdam/tmux-dotty"
  '(:description "Generates a dot(1) graph of tmux's windows, sessions, and panes"
    :tags ["perl" "dotty" "graphviz-dot" "tmux"]))
(hoarder:record "dolmen/github-keygen"
  '(:description "Easy creation of secure SSH configuration for your GitHub account(s)"
    :tags ["perl" "cli-app" "github" "ssh" "ssh-client" "ssh-config" "tool"]))
(hoarder:record "Tux/Spreadsheet-Read"
  '(:description "Meta-Wrapper for reading spreadsheet data with perl5"
    :tags ["perl"]))
(hoarder:record "arunbear/Mic"
  '(:description "A Perl5 class builder focused on Modularity and Loose coupling"
    :tags ["perl"]))
(hoarder:record "siusoon/n.a.g"
  '(:description "net.art.generator ver5b"
    :tags ["perl"]))
(hoarder:record "w5xd/diysha"
  '(:description "Do it yourself secure home automation"
    :tags ["perl"]))
(hoarder:record "mvduin/bbb-pin-utils"
  '(:description "Pin utilities for BeagleBone Black"
    :tags ["perl"]))
(hoarder:record "shirkdog/pulledpork"
  '(:description "Pulled Pork for Snort and Suricata rule management (from Google code)"
    :tags ["perl" "ruleset" "snort" "suricata"]))
(hoarder:record "Grinnz/cpan-meta-browser"
  '(:description "CPAN Meta Browser"
    :tags ["perl"]))
(hoarder:record "hippietrail/wiktdump"
  '(:description "Extract information straight from a Mediawiki XML dump file"
    :tags ["perl"]))
(hoarder:record "rocky/Perl-Device-Cdio"
  '(:description "Perl bindings for libcdio"
    :tags ["perl"]))
(hoarder:record "mongodb/mongo-perl-bson"
  '(:description "Perl implementation of the BSON Specification http://bsonspec.org  "
    :tags ["perl"]))
(hoarder:record "jberger/MyWeatherApp"
  '(:description "A demo app for Mojolicious.io"
    :tags ["perl"]))
(hoarder:record "jettero/term--gentoofunctions"
  '(:description "ebegin, eend, einfo, etc ... for perl ... on any platform."
    :tags ["perl"]))
(hoarder:record "AXDOOMER/malware-db"
  '(:description "A file fetcher"
    :tags ["perl"]))
(hoarder:record "shortland/LazyUpload"
  '(:description "Needed a quick way to upload a file to my server via command line... Too lazy to go into FTP/SSH... So here's this... Definitely not safe, not recommended to try at home."
    :tags ["perl"]))
(hoarder:record "ShaunR/bind2nictool"
  '(:description "Script to remotely sync bind zones into a NicTool server using the API."
    :tags ["perl"]))
(hoarder:record "poizon/BoilerPlate"
  '(:description "Boilerplate project for Mojolicious"
    :tags ["perl"]))
(hoarder:record "doriantaylor/p5-store-digest"
  '(:description "Store::Digest provides an interface to a store of arbitrary data, keyed by cryptographic digest."
    :tags ["perl"]))
(hoarder:record "ingydotnet/bytebeat-pm"
  '(:tags ["perl" "bytebeat"]))
(hoarder:record "gugod/app-logbook"
  '(:description "A multi-purpose personal logging software"
    :tags ["perl"]))
(hoarder:record "gugod/Imager-Filter-Statistic"
  '(:tags ["perl"]))
(hoarder:record "runarbu/PerlImageHash"
  '(:description "Perceptual image hashing in Perl"
    :tags ["perl" "perceptual_hashing"]))
(hoarder:record "gugod/Keeper"
  '(:description "personal media stash"
    :tags ["perl"]))
(hoarder:record "gugod/Doorman"
  '(:tags ["perl"]))
(hoarder:record "tokuhirom/Web-ChromeLogger"
  '(:tags ["perl"]))
(hoarder:record "gugod/img"
  '(:tags ["perl"]))
(hoarder:record "gugod/uni"
  '(:description "uni unicode search http://uni.gugod.org/"
    :tags ["perl"]))
(hoarder:record "gugod/Test-Continuous"
  '(:description "(Perl) Run your tests suite continusouly when developing."
    :tags ["perl"]))
(hoarder:record "gugod/Social"
  '(:tags ["css"]))
(hoarder:record "gugod/rubyish-perl"
  '(:description "For writting perl code with some ruby feeling."
    :tags ["perl"]))
(hoarder:record "gugod/Test-Cukes"
  '(:description "A BBD test tool inspired by Cucumber"
    :tags ["perl"]))
(hoarder:record "lulzlabs/AirChat"
  '(:description "Free Communications For Everyone."
    :tags ["perl"]))
(hoarder:record "gugod/catifdiff"
  '(:tags ["perl"]))
(hoarder:record "gugod/App-jt"
  '(:tags ["perl"]))
(hoarder:record "gonzoua/EBook-EPUB"
  '(:description "EBook::EPUB perl module for generating EPUB document"
    :tags ["perl"]))
(hoarder:record "tokuhirom/Web-Query"
  '(:tags ["perl"]))
(hoarder:record "gugod/px"
  '(:description "path exchange"))
(hoarder:record "gugod/youtube-download-bookmarklet"
  '(:tags ["perl"]))
(hoarder:record "gugod/markapl"
  '(:description "(Perl) Markup as Perl"
    :tags ["perl"]))
(hoarder:record "gugod/EasyBoard"
  '(:description "This is an simple Dancer application as an example to run Dancer app on DotCloud."
    :tags ["css"]))
(hoarder:record "acme/net-vnc"
  '(:description "Net::VNC - A simple VNC client"
    :tags ["perl"]))
(hoarder:record "rafl/log-dispatch-desktopnotification"
  '(:description "send log messages to a desktop notification system"
    :tags ["perl"]))
(hoarder:record "gugod/perlrocks"
  '(:tags ["perl"]))
(hoarder:record "gugod/MojoX-Doorman"
  '(:tags ["perl"]))
(hoarder:record "vti/mojox-validator"
  '(:description "Main functionality moved to Input::Validator"
    :tags ["perl"]))
(hoarder:record "c9s/App-gh"
  '(:description "GitHub Command-line Utility."
    :tags ["perl"]))
(hoarder:record "gugod/retail"
  '(:description "An App to do simple retail store inventory management for small business."
    :tags ["javascript"]))
(hoarder:record "gugod/cpan-sets"
  '(:description "Manage multiple sets of local::lib in $HOME"))
(hoarder:record "bestpractical/config-gitlike"
  '(:tags ["perl"]))
(hoarder:record "p5sagit/Config-Any"
  '(:tags ["perl"]))
(hoarder:record "bestpractical/storage-box"
  '(:tags ["perl"]))
(hoarder:record "bestpractical/lwp-useragent-paranoid"
  '(:tags ["perl"]))
(hoarder:record "bestpractical/app-moduleshere"
  '(:tags ["perl"]))
(hoarder:record "gugod/railsish"
  '(:description "A perl webapp framework with rails-like convention-based coding style."
    :tags ["perl"]))
(hoarder:record "gugod/perl6ish"
  '(:description "(Perl) Some Perl6 programming in Perl5 code."
    :tags ["perl"]))
(hoarder:record "gugod/app-lazyd"
  '(:description "quick and lazy way to add delicious.com bookmarks."))
(hoarder:record "jrockway/net-emacsclient"
  '(:tags ["perl"]))
(hoarder:record "thorko/buildserver"
  '(:description "Build server - to compile software from source"
    :tags ["perl"]))
(hoarder:record "Vivtek/Iterator-Simple"
  '(:description "CPAN's Iterator::Simple: Simple iterator and utilities (forked due to a problem with later Perls)"
    :tags ["perl"]))
(hoarder:record "hjmangalam/parsyncfp"
  '(:description "follow-on to parsync (parallel rsync) with better startup perf"
    :tags ["perl"]))
(hoarder:record "olearyryan29/Perl-Fortune-Teller"
  '(:description "Same logic as the Python FT, but in Perl5!"
    :tags ["perl"]))
(hoarder:record "athreef/App-lsiommu"
  '(:tags ["perl"]))
(hoarder:record "athreef/App-lsnic"
  '(:tags ["perl"]))
(hoarder:record "ewolf/Yote"
  '(:description "perlish Application Server"
    :tags ["perl"]))
(hoarder:record "sunnypp/AliasManager"
  '(:description "Perl Based Alias Manager for Quick and Dirty Setup in macOS"
    :tags ["perl"]))
(hoarder:record "githubmatumoto/ipfw-dns-kanshi"
  '(:tags ["perl"]))
(hoarder:record "libwww-perl/HTTP-Message"
  '(:description "The HTTP-Message distribution contains classes useful for representing the messages passed in HTTP style communication."
    :tags ["perl"]))
(hoarder:record "PaulGWebster/p5-App-mmpd"
  '(:description "The Modular Multiplexing Perl Daemon (non blocking extendable generic network)"
    :tags ["perl"]))
(hoarder:record "mongodb/mongo-perl-driver"
  '(:description "Perl driver for the MongoDB"
    :tags ["perl"]))
(hoarder:record "ollyg/Net-Appliance-Session"
  '(:description "Development of Net::Appliance::Session Perl distribution"
    :tags ["perl"]))
(hoarder:record "jahagirdar/SVG-Timeline-Compact"
  '(:description "Perl Module to draw SVG Timeline Graphs."
    :tags ["perl"]
    :memo "https://metacpan.org/pod/SVG::Timeline::Compact"))
(hoarder:record "sparkylinux/rootactions-servicemenu"
  '(:tags ["perl"]))
(hoarder:record "iopsmon/port_scan"
  '(:description "Scans common ports "
    :tags ["perl"]))
(hoarder:record "a6502/JSON-RPC2-TwoWay"
  '(:description "Transport-independent bidirectional JSON-RPC 2.0"
    :tags ["perl"]))
(hoarder:record "openerserver/openerserver_perl"
  '(:description "Http Container for run any code with http server."
    :tags ["perl"]))
(hoarder:record "adobe-apiplatform/api-gateway-request-validation"
  '(:description "API Request Validation framework"
    :tags ["perl"]))
(hoarder:record "oflimm/openbib"
  '(:description "OpenBib discovery platform"
    :tags ["perl"]))
(hoarder:record "nedbass/xattrtest"
  '(:description "An xattr test utility"
    :tags ["perl"]))
(hoarder:record "jhthorsen/mojo-redis2"
  '(:description "Pure-Perl non-blocking I/O Redis driver"
    :tags ["perl" "mojolicious" "redis"]))
(hoarder:record "sitaramc/gitolite"
  '(:description "Hosting git repositories -- Gitolite allows you to setup git hosting on a central server, with very fine-grained access control and many (many!) more powerful features."
    :tags ["perl"]))
(hoarder:record "jimsalterjrs/sanoid"
  '(:description "Policy-driven snapshot management and replication tools.  Currently using ZFS for underlying next-gen storage, with explicit plans to support btrfs when btrfs becomes more reliable.  Primarily intended for Linux, but BSD use is supported and reasonably frequently tested."
    :tags ["perl" "replication" "snapshot" "zfs-filesystem"]))
(hoarder:record "jkeenan/CPAN-cpanminus-reporter-RetainReports"
  '(:description "Retain reports on disk rather than transmitting them"
    :tags ["perl"]))
(hoarder:record "StefanoBelli/ezpkg"
  '(:description "A perl module to easily handle package managment"
    :tags ["perl"]))
(hoarder:record "johnnylak/Perl-Diff"
  '(:description "A diff utility written in Perl"
    :tags ["perl"]))
(hoarder:record "ryoukura/sockmonit"
  '(:tags ["perl"]))
(hoarder:record "ghlin/puild"
  '(:description "simple Makefile generator"
    :tags ["perl"]))
(hoarder:record "mrscotty/connector"
  '(:tags ["perl"]))
(hoarder:record "DiabloDz/Backdoor_Scanner"
  '(:description "A Backdoor scanner (shells-mailers-chekkers.....) perl script "
    :tags ["perl"]))
(hoarder:record "quattor/CCM"
  '(:description "Configuration Cache Manager"
    :tags ["perl"]))
(hoarder:record "tomk3003/mojo-server-threaded"
  '(:description "Perl module Mojo::Server::Threaded and elzar webserver"
    :tags ["perl"]))
(hoarder:record "wilyarti/hashtree"
  '(:description "S3 compatible data deduplication script written in Perl"
    :tags ["perl"]))
(hoarder:record "Logitech/slimserver"
  '(:description "Server for Logitech Squeezebox players. This server is also called Logitech Media Server"
    :download nil
    :tags ["perl"]))
(hoarder:record "yayitserica/yayitserica.github.io"
  '(:description "This file is the repo to Yay it's Erica's 🌮 website."
    :tags ["perl"]))
(hoarder:record "smartcatai/SmartCatPlugin"
  '(:tags ["perl"]))
(hoarder:record "a6502/rpc-switch"
  '(:tags ["perl"]))
(hoarder:record "a6502/RPC-Switch-Client"
  '(:tags ["perl"]))
(hoarder:record "wfso/Mojolicious-Services"
  '(:description "为Mojolicious框架提供了Service支持"
    :tags ["perl"]))
(hoarder:record "wfso/Mojolicious-Plugin-DBIxCustom"
  '(:description "链接DBIx::Custom到Mojolicious的插件"
    :tags ["perl"]))
(hoarder:record "troxel/WebFrame"
  '(:tags ["perl"]))
(hoarder:record "dr-iman/Ip-GetInformation"
  '(:description "Get Ip Information Tool"
    :tags ["perl" "get" "information" "ip" "tool"]))
(hoarder:record "hjmangalam/scut"
  '(:description "scut is a better (if slower) cut, extracts arbitrary columns to be selected based on regexes, also has join fn()."
    :tags ["perl"]))
(hoarder:record "wilhelmy/fdupes"
  '(:description "find (and later exterminate) duplicate files using sqlite"
    :tags ["perl"]))
(hoarder:record "vti/protocol-websocket"
  '(:description "Protocol::WebSocket"
    :tags ["perl"]))
(hoarder:record "timn/webmin-nettools"
  '(:description "Webmin Network Utilities (not maintained)"
    :tags ["perl"]))
(hoarder:record "JohnMarkOckerbloom/onlinebooks"
  '(:description "Selected code and data for The Online Books Page and related applications"
    :tags ["perl"]))
(hoarder:record "goodind1/slurm"
  '(:description "PSGI app using Mason for dispatching and templating"
    :tags ["perl"]))
(hoarder:record "whindsx/Bitcoin-RPC-Client"
  '(:description "A Perl module for connecting to Bitcoin Core nodes via RPC"
    :tags ["bitcoin" "cpan" "json" "perl" "rpc-client"]))
(hoarder:record "prbldeb/ParallelShellExecution"
  '(:description "For executing any Linux Commands in Parallel - A Perl based setup"
    :tags ["perl"]))
(hoarder:record "ShyanJMC/suite_winter"
  '(:description "This suite_winter is a proyect (by Joaquin Crespo and Ivan Oudkerk) for automatications, forensics and reversing tools for the EkoLinux team and InviernoSO. All this code are licensed in GPLv3."
    :download nil
    :tags ["perl" "android" "android-app" "c" "dockerfile" "eko" "eko-team" "ekolinux" "exif" "forensics" "git" "invierno" "invierno-team" "linux" "opensource" "programming" "python" "suite-winter" "winter" "winter-terminal"]))
(hoarder:record "candyapplecorn/sydl.pl"
  '(:description "personal wrapper script for youtube-dl"
    :tags ["perl"]))
(hoarder:record "ap/Plack-Middleware-RedirectSSL"
  '(:tags ["perl"]))
(hoarder:record "CandyAngel/perl-mojo-useragent-cookiejar-role-persistent"
  '(:description "Role for persistent cookies in cookie jar"
    :tags ["perl"]))
(hoarder:record "LiKneu/Zombihunter"
  '(:description "Collection of perl scripts to organize huge sets of folders and files."
    :tags ["perl"]))
(hoarder:record "vti/crafty"
  '(:description "CI server :camel:"
    :tags ["perl" "async" "ci" "server"]))
(hoarder:record "ap/Plack-Middleware-SignedCookies"
  '(:description "accept only server-minted cookies"
    :tags ["perl"]))
(hoarder:record "CoffeeSec/tor_indexer"
  '(:description "So this is a series of programs and scripts that generate a tor address than test if the address is valid."
    :tags ["perl"]))
(hoarder:record "kilobyte/tran"
  '(:description "transcription between character scripts"
    :tags ["perl"]))
(hoarder:record "team-at-cpan/Net-Async-Redis"
  '(:description "Perl module"
    :tags ["perl"]))
(hoarder:record "rolanday/String-Assist"
  '(:description "String helper methods"
    :tags ["helper" "perl" "regex" "string" "utility"]))
(hoarder:record "vicyang/Console-Wiki"
  '(:description "Creaet/Edit Wiki in Win32 Console"
    :tags ["perl"]))
(hoarder:record "thewml/latemp"
  '(:description "The Latemp static site generator and some related code"
    :tags ["perl"]))
(hoarder:record "27escape/WebColors"
  '(:description "WebColors"
    :tags ["perl"]))
(hoarder:record "poyhsiao/exiftool-kit"
  '(:description "This is a ExifTool node.js wrapped version. Help you can read / write / create exif, iptc and more information of media"
    :tags ["perl"]))
(hoarder:record "onoie/flashback"
  '(:description "ImageCache"
    :tags ["perl"]))
(hoarder:record "skaji/build.pl"
  '(:tags ["perl"]))
(hoarder:record "fayland/perl-net-github"
  '(:description "Perl interface to GitHub"
    :tags ["perl"]))
(hoarder:record "Silluinglin/Anansi"
  '(:tags ["perl"]))
(hoarder:record "kba/git-url"
  '(:description ":tractor: Work with remote repositories on the Command line with ease."
    :tags ["perl"]))
(hoarder:record "pplu/www-amazon-checkip-perl"
  '(:description "Returns your ip address using http://checkip.amazonaws.com"
    :tags ["perl"]))
(hoarder:record "tomfy/SvgPatternMaker"
  '(:description "Perl modules and scripts for generating svg for various patterns (e.g. honeycomb)"
    :tags ["perl"]))
(hoarder:record "ivanwills/Group-Git-Cmd-SinceRelease"
  '(:description "Gets the number of commits each repository is ahead of the last release"
    :tags ["perl"]))
(hoarder:record "dallaylaen/perl-AE-AdHoc"
  '(:description "[CPAN] Simplified interface for testing AnyEvent-related code"
    :tags ["perl"]))
(hoarder:record "s2ch/cBot"
  '(:description "btc ticker bot for #s2ch irc channel"
    :tags ["bitcoin" "bot" "irc" "perl" "s2ch"]))
(hoarder:record "hamnetdb/hamnetdb"
  '(:description "This is the sourcecode of the hamnetdb, changes and new versions are published here."
    :tags ["perl"]))
(hoarder:record "geekism/DataURIToolKit"
  '(:tags ["perl"]
    :download nil))
(hoarder:record "johnlepikhin/org-to-garmin-style"
  '(:description "Simple perl script which generates Garmin styles from org-mode documents"
    :tags ["perl"]))
(hoarder:record "garnetius/STEAMbox"
  '(:description "Steambox desktop environment [deprecated]"
    :tags ["perl"]))
(hoarder:record "musetronstar/tagd-dictionary"
  '(:description "A Simple English dictionary in the TAGL language"
    :tags ["perl" "dictionary" "github-tsv" "semantics" "voa"]))
(hoarder:record "marcusramberg/Mojolicious-Plugin-RenderSteps"
  '(:tags ["perl"]))
(hoarder:record "marcusramberg/Mojolicious-Plugin-OAuth2"
  '(:description "OAuth support for Mojolicious"
    :tags ["perl"]))
(hoarder:record "Grinnz/Mojolicious-Plugin-Log-Any"
  '(:description "Mojolicious::Plugin::Log::Any - Use other loggers in a Mojolicious application"
    :tags ["perl"]))
(hoarder:record "prbldeb/Logparser"
  '(:description "For parsing any logs , example catalina.out for Java related exception"
    :tags ["perl"]))
(hoarder:record "PerlDancer/Dancer2-Plugin-OpenAPI"
  '(:description "OpenAPI plugin for Dancer2"
    :tags ["perl"]))
(hoarder:record "Corsay/TechnoAtom-2017-2_Tc"
  '(:description "Copyes of hometask's realization"
    :download nil
    :tags ["perl"]))
(hoarder:record "Ashishkr007/Data-Cleaner"
  '(:description "If you have some csv file and having CRLF, LF in between data and you want to create some table (Hive table). You will face issue that some of column have null value.  It’s because line terminator in hive is \\n and if and \\n or \\r coming between data it treating as line terminator before actual line terminator and rest for column is getting null value. I tried multiple option like spark, hive serde and many more but I found good with perl. Today I a sharing my Perl script to remove all newline and special characters."
    :tags ["perl" "crlf" "csv-parser" "datacleaner" "datacleaning" "newline" "newline-character-sequences" "perl-script"]))
(hoarder:record "bmajoros/perl"
  '(:description "useful perl scripts and modules"
    :tags ["perl"]))
(hoarder:record "jmaslak/App-Batcher"
  '(:description "Batch Processing System"
    :tags ["perl"]))
(hoarder:record "sog-mud/sog-web"
  '(:tags ["perl"]))
(hoarder:record "ivanwills/App-bitbucket-cli"
  '(:description "Library and command line tool for talking to BitBucket Server (or Stash)"
    :tags ["perl"]))
(hoarder:record "mohawk2/Mojolicious-Command-bulkget"
  '(:description "bulkget command for Mojolicious"
    :tags ["perl"]))
(hoarder:record "project-renard/p5-Renard-Incunabula-Glib"
  '(:tags ["perl"]))
(hoarder:record "rolanday/ImportPix"
  '(:description "Import Pictures Utility"
    :tags ["perl"]))
(hoarder:record "AndrewJeremyx/technoatom-perl"
  '(:tags ["perl"]))
(hoarder:record "koorchik/Validator-LIVR"
  '(:description "Lightweight Perl validator supporting Language Independent Validation Rules Specification (LIVR)"
    :tags ["perl"]))
(hoarder:record "mquin/irssi-scripts"
  '(:description "Scripts to extend and enhance irssi"
    :tags ["perl"]))
(hoarder:record "unixtools/perllib"
  '(:description "Perl Utility Module Library"
    :tags ["perl"]))
(hoarder:record "danny0838/git-store-meta"
  '(:description "Simple file metadata storing and applying for git."
    :tags ["perl"]))
(hoarder:record "3scale/Test-APIcast"
  '(:description "APIcast testing framework using Test::Nginx"
    :tags ["perl"]))
(hoarder:record "bvr/experiments"
  '(:description "Various code snippets, mostly perl"
    :tags ["perl"]))
(hoarder:record "stockholmuniversity/SU-API-Vault-perl"
  '(:description "A perl lib that interacts with Hashicorp Vault"
    :tags ["perl"]))
(hoarder:record "hadfl/Illumos-Zones"
  '(:description "A Perl Module to administrate illumos/Solaris Zones"
    :tags ["perl"]))
(hoarder:record "holmanbph/gig-finder"
  '(:description "Project for finding job opportunities based on user defined configurations."
    :tags ["perl" "perl5" "webscraping"]))
(hoarder:record "nanorkyo/certmgr"
  '(:description "SSL Certificate Manager"
    :tags ["perl"]))
(hoarder:record "silnrsi/font-ttf-scripts"
  '(:description "Font::TTF::Scripts perl module"
    :tags ["perl"]))
(hoarder:record "kwwette/fmdtools"
  '(:description "File MetaData Tools"
    :tags ["perl"]))
(hoarder:record "jhthorsen/mojolicious-plugin-openapi"
  '(:description "OpenAPI / Swagger plugin for Mojolicious"
    :tags ["perl"]))
(hoarder:record "bombsimon/noll-9-noll"
  '(:description "Yet another IRC bot"
    :tags ["perl"]))
(hoarder:record "Grasia/wikia_census"
  '(:description "A perl script to generate a census of all the wikis hosted in wikia"
    :tags ["census" "corpus" "crawler" "perl" "wikia"]))
(hoarder:record "jhthorsen/app-git-ship"
  '(:description "Git command for shipping your project"
    :tags ["perl"]))
(hoarder:record "nigelhorne/Geo-Coder-XYZ"
  '(:description "Provides a geocoding functionality using http:://geocoder.xyz"
    :tags ["perl"]))
(hoarder:record "kronometrix/mon"
  '(:description "Platform Monitor Module"
    :tags ["perl"]))
(hoarder:record "Jeryia/StarD"
  '(:description "A server wrapper around the starmade server offering the ability to load plugins, and manage it beyond what would normally be possible"
    :tags ["perl"]))
(hoarder:record "Manisso/Xshell"
  '(:description "~ Shell Finder By Ⓜ Ⓐ Ⓝ Ⓘ Ⓢ Ⓢ Ⓞ  ☪ ~"
    :tags ["perl"]))
(hoarder:record "sipwise/bulk-processor"
  '(:description "Infrastructure for parallel and distributed row processing"
    :tags ["perl"]))
(hoarder:record "phoenixctms/bulk-processor"
  '(:description "Bulk Processor Framework"
    :tags ["perl"]))
(hoarder:record "packy/filter-npr-news"
  '(:description "A perl tool to provide a week's worth of NPR hourly news episodes, filtered to only include particular hours."
    :tags ["perl"]))
(hoarder:record "nigelhorne/Geo-Coder-List"
  '(:description "Call many geocoders"
    :tags ["perl"]))
(hoarder:record "stevan/p5-Method-Traits"
  '(:description "Annotations for methods"
    :tags ["perl"]))
(hoarder:record "geocol/data-jp-areas"
  '(:tags ["perl"]))
(hoarder:record "proxeeus/plugins"
  '(:description "My EQEmu plugins"
    :tags ["perl" "everquest"]))
(hoarder:record "bluefeet/GitLab-API-v4"
  '(:description "A complete GitLab API v4 client."
    :tags ["perl"]))
(hoarder:record "ExtremeModerate/archiveimap"
  '(:description "Automatically move old IMAP messages into a structured archive or delete them."
    :tags ["perl"]))
(hoarder:record "umezawatakeshi/kancolle-dic"
  '(:description "艦これIME辞書"
    :tags ["perl"]))
(hoarder:record "quattor/cdp-listend"
  '(:description "Configuration Distribution Protocol Notification Listener Daemon"
    :tags ["perl"]))
(hoarder:record "quattor/aii"
  '(:description "Automated Installation Infrastructure"
    :tags ["perl"]))
(hoarder:record "git://git.shadowcat.co.uk/scpubgit/DKit.git"
  '(:tags ["perl" "devops" "shadowcat"]
    :memo "[[https://www.youtube.com/watch?v=Rk3wgF1ZZtg][GPW2014 S2E10: Devops Logique - Matt S Trout - YouTube]]"))
(hoarder:record "git://git.shadowcat.co.uk/scpubgit/DX.git"
  '(:tags ["perl"]))
(hoarder:record "kaimi-io/yandex-music-download"
  '(:description "Yandex Music downloader"
    :tags ["perl"]))
(hoarder:record "oalders/http-browserdetect"
  '(:description "Determine the Web browser, version, and platform from an HTTP user agent string"
    :tags ["perl"]))
(hoarder:record "iph0/AnyEvent-Stomper"
  '(:description "Flexible non-blocking STOMP client"
    :tags ["perl"]))
(hoarder:record "lwindolf/lpvs"
  '(:description "Linux Package Vulnerability Scanner"
    :tags ["perl"]))
(hoarder:record "KorAP/Krawfish-prototype"
  '(:description ":balloon: Experimental Search backend, to test design concepts"
    :tags ["perl"]))
(hoarder:record "yoctu/libJobSaver-perl5"
  '(:tags ["perl"]))
(hoarder:record "f20/folder-control"
  '(:description "A set of Perl scripts for file cataloguing, backup and file-level deduplication"
    :tags ["perl"]))
(hoarder:record "scastlara/expression_to_graph"
  '(:description "Scripts to map expression information onto an svg graph"
    :tags ["perl"]))
(hoarder:record "OCSInventory-NG/UnixAgent"
  '(:description "This is the OCS unified agent for Unix operating systems"
    :tags ["perl" "agent" "deployment" "ocs" "ocs-deployment" "ocs-inventory" "ocsinventory" "unix"]))
(hoarder:record "iamcal/perl-Flickr-API"
  '(:description "Perl interface to the Flickr API"
    :tags ["perl"]))
(hoarder:record "karenetheridge/Plack-Middleware-LogErrors"
  '(:description "Map psgi.errors to psgix.logger or other logger"
    :tags ["perl"]))
(hoarder:record "moose/MooseX-Types-URI"
  '(:description "URI related types and coercions for Moose"
    :tags ["perl"]))
(hoarder:record "autodl-community/autodl-irssi"
  '(:description "A community-driven fork of autodl-irssi"
    :tags ["perl" "autodl-irssi" "bittorrent" "irc" "irssi" "p2p" "terminal" "torrent"]))
(hoarder:record "maxcoinage/jc-scripts"
  '(:tags ["perl"]))
(hoarder:record "moose/MooseX-Types-Path-Tiny"
  '(:description "Path::Tiny types and coercions for Moose"
    :tags ["perl"]))
(hoarder:record "caianrais/dots"
  '(:description "A collection of all my dotfiles and custom configurations."
    :tags ["perl" "cli" "dotfiles" "rice" "unixporn" "zsh"]))
(hoarder:record "kberov/Mojolicious-Command-generate-routes"
  '(:description "Routes from database for your application"
    :tags ["command" "crud" "generator" "mojolicious" "mojolicious-command" "perl" "rest" "web" "web-framework"]))
(hoarder:record "steveschnepp/pmptools"
  '(:description "Poor Man's Perl Tools (clone of my google code project)"
    :tags ["perl"]))
(hoarder:record "dboehmer/coocook"
  '(:description "Web application for collecting recipes and making food plans"
    :tags ["catalyst" "dbix-class" "food" "hosted" "markdown" "perl" "self-hosted" "template-toolkit" "web-application"]))
(hoarder:record "abetar0/logmon"
  '(:description "log monitoring scripts"
    :tags ["perl"]))
(hoarder:record "wakaba/dongry"
  '(:description "Dongry, a Perl object-oriented interface for MySQL databases"
    :tags ["anyevent" "database" "dbi" "dongry" "mysql" "orm" "perl" "promise" "sql"]))
(hoarder:record "renormalist/app-dpath"
  '(:description "Command-line tool to filter files with Data::DPath"
    :tags ["perl"]))
(hoarder:record "shortland/Random-Cat-Picture"
  '(:description "Redirects you to a random cat picture; being used for a Discord Bot"
    :tags ["perl"]))
(hoarder:record "plicease/AnyEvent-WebSocket-Client"
  '(:description "WebSocket client for AnyEvent"
    :tags ["perl"]))
(hoarder:record "jonmatifa/zfsmanager"
  '(:description "ZFS administration tool for Webmin"
    :tags ["perl" "webmin" "zfs" "zfs-administration" "zfs-snapshots" "zfsonlinux"]))
(hoarder:record "kasei/perlrdf"
  '(:description "Official releases of RDF::Query may be found on CPAN: http://search.cpan.org/dist/RDF-Query/"
    :tags ["perl"]))
(hoarder:record "mateu/Mojito"
  '(:description "Web document engine"
    :tags ["perl"]))
(hoarder:record "thedarkwinter/Net-DRI"
  '(:description "Perl EPP Client: Net-DRI-0.X_tdw based on Net-DRI-0.96_09"
    :tags ["perl"]))
(hoarder:record "nevral/string-statistics"
  '(:tags ["perl"]))
(hoarder:record "lojban/jiten"
  '(:description "Jay Kominek's Perl RFC 2229 dict server"
    :tags ["perl"]))
(hoarder:record "astj/WebHookNotifier"
  '(:tags ["perl"]))
(hoarder:record "CTSIatUCSF/EasyJSON"
  '(:description "Server to convert Profiles RNS VIVO JSON-LD into a simplified JSON representation"
    :tags ["perl" "profiles-rns" "research-networking"]))
(hoarder:record "skington/lingua-en-segment"
  '(:tags ["perl"]
    :memo "https://metacpan.org/pod/Lingua::EN::Segment"))
(hoarder:record "ioanrogers/Log-Any-Adapter-LinuxJournal"
  '(:tags ["journald" "log-any-adapter" "logging" "perl" "perl-module"]))
(hoarder:record "kaoru/File-CleanupTask"
  '(:description "File-CleanupTask"
    :tags ["perl"]))
(hoarder:record "Su-Shee/talks"
  '(:description "slides and code"
    :tags ["html" "perl"]
    :memo "[[https://www.youtube.com/watch?v=ePy7KDlFQa0][MVC-templates-routes web frameworks - is that all there is? - Susanne Schmidt (Su-Shee) - YouTube]]"))
(hoarder:record "erengy/vndb"
  '(:description "A clone of vndb.org git repository"
    :tags ["perl" "visual-novel" "vndb"]))
(hoarder:record "nekokak/p5-Teng"
  '(:description "simple DBI wrapper/ORMapper"
    :tags ["perl"]))
(hoarder:record "ronsavage/WWW-Garden-Design"
  '(:description "Flower Database, Search Engine and Garden Design"
    :tags ["perl" "flower" "garden" "garden-design"]))
(hoarder:record "TBSliver/Test-Instance-DNS"
  '(:tags ["perl"]))
(hoarder:record "dshumko/OpenEPG"
  '(:description "Electronic Program Guide (EPG) Generator for Digital Video Broadcasting (DVB)"
    :tags ["perl"]))
(hoarder:record "kberov/Mojolicious-Command-generate-resources"
  '(:description "Routes from database for your application"
    :tags ["command" "crud" "generator" "mojolicious" "mojolicious-command" "perl" "rest" "web" "web-framework"]))
(hoarder:record "kaz-utashiro/Getopt-EX"
  '(:description "Getopt::EX - Getopt Extender"
    :tags ["perl"]))
(hoarder:record "dod38fr/config-model"
  '(:description "Perl module to create configuration editor wtih semantic validation"
    :tags ["cme" "perl" "validation-engine"]))
(hoarder:record "cngarrison/HTML-Navigation"
  '(:tags ["perl"]))
(hoarder:record "FGasper/p5-Net-WebSocket"
  '(:description "CPAN’s Net::WebSocket"
    :tags ["perl"]))
(hoarder:record "kjetillll/Acme-Tools"
  '(:description "Perl, lots of more or less useful general functions"
    :tags ["perl"]))
(hoarder:record "zabiralov/hwstat"
  '(:description "Tool for display main hw info in compact view (like vmstat)"
    :tags ["perl"]))
(hoarder:record "houseabsolute/List-SomeUtils"
  '(:description "Provide the stuff missing in List::Util"
    :tags ["perl"]))
(hoarder:record "mei23/msttstgen"
  '(:description "MastdonのAtomフィードを遡って時間とステータスIDの対応表を作ります"
    :tags ["perl"]))
(hoarder:record "krimdomu/linuxtag-examples"
  '(:description "Some demonstration rexfiles for the LinuxTag"
    :tags ["perl" "rex"]))
(hoarder:record "trapd00r/ls--"
  '(:description "ls on steroids"
    :tags ["bash" "commandline" "coreutils" "filesystem" "linux" "ls" "perl" "terminal" "zsh"]))
(hoarder:record "trapd00r/utils"
  '(:description "Small useful utilities for everyday work"
    :tags ["perl"]))
(hoarder:record "trizen/youtube-viewer"
  '(:description "A lightweight application for searching and streaming videos from YouTube."
    :tags ["perl" "youtube-viewer"]))
(hoarder:record "yuki-kimoto/gitprep"
  '(:tags ["github" "perl" ]))
(hoarder:record "xtetsuji/encoreutils"
  '(:tags ["perl" "coreutils" "xargs" "rm" "rmdir"]
    :memo "[[http://post.tetsuji.jp/2016/06/gentle_unlink/][穏やかな速度でファイルを削除するプログラム gentle_unlink を書いた | #interest_ae]]"))
(hoarder:record "libwww-perl/URI"
  '(:tags ["uri" "url" "uri-heuristic" "perl"]
    :memo " URI::Heuristic https://github.com/libwww-perl/URI/blob/master/lib/URI/Heuristic.pm"))
(hoarder:record "cafe01/xml-libxml-jquery"
  '(:tags ["xml" "libxml" "jquery" "perl"]))
(hoarder:record "gfx/p5-Mouse"
  '(:tags ["perl" "oop" "mouse" "type" "constraints"]
    :memo "[[https://github.com/gfx/p5-Mouse/blob/master/lib/Mouse/Util/TypeConstraints.pm][p5-Mouse/TypeConstraints.pm at master · gfx/p5-Mouse · GitHub]]"))
(hoarder:record "tokuhirom/Smart-Args"
  '(:tags ["perl" "validation" "type"]))
(hoarder:record "nkh/P5-App-Asciio"
  '(:tags ["perl" "ascii_art"]))
(hoarder:record "benbernard/RecordStream"
  '(:tags ["perl" "json" "csv"]))
(hoarder:record "davehodg/perlcolour"
  '(:tags ["perl" "color" "terminal"]))
(hoarder:record "kan/p5-acme-prettycure"
  '(:tags ["perl" "precure"]))
(hoarder:record "soprano1125/radiko-noa"
  '(:description "radiko.jp NOW ON AIR tweet"
    :tags ["radio" "radiko" "perl"]
    :memo "[[http://qiita.com/soprano1125/items/8ec1fefb932acc354e41][ラジオの「(非公式な)オンエア曲 BOT」を気が向いて作った話 - Qiita]]"))
(hoarder:record "jonathanstowe/Term-Screen"
  '(:description "High level terminal handling access via termcap for Perl"
    :tags ["terminal" "termcap" "perl"]))
(hoarder:record "trapd00r/screenfo"
  '(:description "Screenshot info tool"
    :tags ["perl" "screenfetch" "screenshot" "linux"]))
(hoarder:record "yama-natuki/2chproxy.pl"
  '(:tags ["perl" "2ch" "navi2ch"])) 
(hoarder:record "atrodo/App-MechaCPAN"
  '(:description " Mechanize the installation of CPAN things"
    :site "https://metacpan.org/pod/release/ATRODO/App-MechaCPAN-0.11/lib/App/MechaCPAN.pm"
    :tags ["perl" "cpan" "local::lib"]))
(hoarder:record "bookingcom/pakket"
  '(:description "An Unopinionated Meta-Packaging System"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=aiNRbQKX9iU][Sawyer X - \"Pakket - An Unopinionated Meta-Packaging System\" - YouTube]]"))
(hoarder:record "exodist/Import-Box"
  '(:description "Box up imports into an object or unified function."
    :tags ["perl"]))
(hoarder:record "kentaro/perl-project-libs"
  '(:description "Include modules libs automatically"
    :tags ["perl"]
    :memo "[[http://blog.kentarok.org/entry/20101123/1290530162][いい感じに@INCにあれこれ追加するProject::Libsというのを書いた - Kentaro Kuribayashi's blog]]"))
(hoarder:record "sago35/Getopt-Kingpin"
  '(:description "perl command line and flag parser (like golang kingpin)"
    :tags ["cli" "perl" "getopt"]))
(hoarder:record "miyagawa/Carmel"
  '(:description "CPAN Artifact Repository Manager"
    :tags ["perl"]))
(hoarder:record "perl-carton/carton"
  '(:description "Bundler or pip freeze for Perl"
    :tags ["perl" "bundlr"]))
(hoarder:record "domm/lib-projectroot"
  '(:description "easier loading of local libs"
    :tags ["perl"]))
(hoarder:record "tobyink/p5-type-tiny"
  '(:description "tiny, yet Moo(se)-compatible type constraint"
    :tags ["perl" "type" "constraint"]))
(hoarder:record "Abigail/Regexp--Common"
  '(:description "Common patterns"
    :tags ["regexp" "perl"]
    :memo "[[http://end0tknr.hateblo.jp/entry/20080901/1220272146][Regexp::Commonによる正規表現で数値やurlの書式チェック - end0tknr's kipple - 新web写経開発]]"))
(hoarder:record "Roliga/urxvt-xresources-256"
  '(:description "Perl extension for rxvt-unicode that allows setting all 256 colors via X resources"
    :memo "[[https://www.reddit.com/r/unixporn/comments/6nzetn/oc_set_color_16255_via_x_resources_in_urxvt/][Too Many Requests]]"))
(hoarder:record "omniti-labs/mungo"
  '(:description "The anti-framework for perl on the web."
    :tags ["apache-httpd" "performance" "perl" "scalability"]))
(hoarder:record "marcbradshaw/app-oath"
  '(:description "Simple command line OATH authenticator written in Perl"
    :tags ["perl"]))
(hoarder:record "sdondley/Dancer2-Plugin-DebugDump"
  '(:description "Dumps debug output with Dumper"
    :tags ["perl"]))
(hoarder:record "shicks/repoline"
  '(:description "Prompt helper tool for working in multiple similar DVCS repos"
    :tags ["perl"]))
(hoarder:record "tirveni/Taipan"
  '(:tags ["perl"]))
(hoarder:record "mnjrupp/perl-utility-scripts"
  '(:description "A compilation of useful perl scripts"
    :tags ["perl"]))
(hoarder:record "manwar/Dancer2-Plugin-Res"
  '(:description "Dancer2 add-on for setting status/response."
    :tags ["perl"]))
(hoarder:record "clustericious/Yars"
  '(:description "Yet-another ARchive Service"
    :tags ["perl"]))
(hoarder:record "medrbx/kibini"
  '(:description "Kibini - collecter, visualiser et diffuser les données d'usages de la Médiathèque"
    :tags ["perl"]))
(hoarder:record "badalex/Rand-Urandom"
  '(:tags ["perl"]))
(hoarder:record "ronsavage/SVG-Grid"
  '(:description "Address SVG images using cells of $n1 x $n2 pixels"
    :tags ["perl"]))
(hoarder:record "belden/perl-functional-iterator"
  '(:description "Build iterators which may encapsulate other iterators"
    :tags ["perl"]))
(hoarder:record "ollyg/edible-reading"
  '(:description "Mapping Edible Reading Reviews"
    :tags ["perl"]))
(hoarder:record "Grinnz/lib-relative"
  '(:description "lib::relative"
    :tags ["perl"]))
(hoarder:record "ajs/rando"
  '(:description "A random Perl code generator"
    :memo "[[https://www.reddit.com/r/perl/comments/6obxq3/random_perl_code/][Too Many Requests]]"))
(hoarder:record "preaction/Log-Any"
  '(:description "Simple, fast Perl logging API compatible with any logging system"
    :memo "[[http://blogs.perl.org/users/preaction/2017/08/logany---now-with-structured-logging.html][Log::Any - Now With Structured Logging | preaction {blogs.perl.org}]]"))
(hoarder:record "s31tz/Prty"
  '(:description "Class Library in Perl"))
(hoarder:record "houseabsolute/Specio"
  '(:description "Type constraints and coercions for Perl"
    :tags ["moose" "perl"]))
(hoarder:record "benkasminbullock/Date-Qreki"
  '(:tags ["perl"])) 
(hoarder:record "l333k0/torrtux"
  '(:description "Torrtux is a terminal-based program, written in perl for downloading torrents from The Pirate Bay."))
(hoarder:record "https://bitbucket.org/earth-tone/reddit-client"
  '(:type :hg
    :memo "[[https://www.reddit.com/r/perl/comments/7b7rdl/redditclient_is_still_here/][Too Many Requests]]"))
(hoarder:record "maros/Homely"
  '(:tags ["perl"]))
(hoarder:record "rkitover/net-ssh2"
  '(:description "Net::SSH2 perl module using libssh2"
    :tags ["c"]))
(hoarder:record "gauravkohli/Druid"
  '(:description "PerlDruid - Perl client to Druid.io (http://druid.io)"
    :tags ["perl"]))
(hoarder:record "pauldenijs/ipmanage"
  '(:description "Web Based IP management which generates hosts file and DNS files"
    :tags ["perl"]))
(hoarder:record "ivanwills/App-TemplateCMD"
  '(:description "Command line templating program using Template Toolkit"
    :tags ["perl"]))
(hoarder:record "kensanata/gomphotherium"
  '(:description "A mastodon server written in Perl 5 using Mojolicious"
    :tags ["perl"]))
(hoarder:record "yon2kong/poseidon"
  '(:description "Poseidon server for openkore-cro"
    :tags ["perl"]))
(hoarder:record "ildar-shaimordanov/indent-pm"
  '(:description "Lightweight indent handling"
    :tags ["indent" "indentation" "perl" "perl-module"]))
(hoarder:record "slashbeast/soup-io-archiver"
  '(:description "A soup.io image scraper, in case the soup.io crew will be unhappy with another year too."
    :tags ["perl"]))
(hoarder:record "waaeer/perl-www-easy"
  '(:description "Extra minimalistic mod_perl based web framework"
    :tags ["perl"]))
(hoarder:record "faraco/WebService-Pixabay"
  '(:description "Perl 5 interface to Pixabay REST API."
    :tags ["perl"]))
(hoarder:record "teddywing/irssi-vimput"
  '(:description "Edit Irssi messages in Vim"
    :tags ["perl"]))
(hoarder:record "kaz-utashiro/optex"
  '(:description "optex command repository"
    :tags ["perl"]))
(hoarder:record "KaneRoot/dnsmanager"
  '(:description "DNS zones manager. Configure your own dns zone in your browser, get a name on the Internet!"
    :tags ["perl"]))
(hoarder:record "GPHemsley/WHATWG-URL"
  '(:description "A Perl implementation of the WHATWG URL standard"
    :tags ["perl" "url" "whatwg" "whatwg-url"]))
(hoarder:record "perlsaiyan/termpeg"
  '(:tags ["perl"]))
(hoarder:record "FGasper/p5-IO-SigGuard"
  '(:description "CPAN IO::SigGuard"
    :tags ["io" "perl" "signal"]))
(hoarder:record "rsrpsinr/pep"
  '(:tags ["perl"]))
(hoarder:record "ronsavage/Tree-Simple"
  '(:description "A simple tree object"
    :tags ["perl"]))
(hoarder:record "onoie/wer"
  '(:description "BashManager"
    :tags ["perl"]))
(hoarder:record "kfdm/irssi-nohilight"
  '(:description "Ignore hilights from certain nicks"
    :tags ["perl"]))
(hoarder:record "reidlevesque/media-organising"
  '(:description "Collection of scripts to group pictures and videos"
    :tags ["perl"]))
(hoarder:record "quattor/ncm-ncd"
  '(:description "Node Configuration Dispatcher Framework for Components"
    :tags ["perl"]))
(hoarder:record "rapilodev/stream-schedule"
  '(:description "schedule audio stream playout using liquidsoap and google calendar"
    :tags ["perl"]))
(hoarder:record "nigelhorne/vwf"
  '(:description "Versatile Web Framework - easily build a website to support different languages and client platforms"
    :tags ["fcgi" "mvc" "perl" "rapid-development" "responsive-web-design"]))
(hoarder:record "rapilodev/racalmas"
  '(:description "radio calendar management system"
    :tags ["perl"]))
(hoarder:record "mrclksr/update_obmenu"
  '(:description "Creates and updates your Openbox menu"
    :tags ["perl" "openbox"]))
(hoarder:record "sophos/WebService-LogicMonitor"
  '(:description "Interact with LogicMonitor through their API"
    :tags ["api-client" "convenience-wrappers" "logicmonitor" "perl" "perl-module" "perl5"]))
(hoarder:record "ePages-de/Mockify"
  '(:description "minimal mocking framework for perl"
    :tags ["perl"]))
(hoarder:record "jhthorsen/mojolicious-plugin-pager"
  '(:description "Pagination plugin for Mojolicious"
    :tags ["perl"]))
(hoarder:record "sanger-pathogens/deployment"
  '(:tags ["perl"]))
(hoarder:record "kronostar/flacsplit"
  '(:description "A perl script to split a flac using a cue sheet into other formats/individual tracks"
    :tags ["perl"]))
(hoarder:record "Grinnz/Mojolicious-Plugin-Subprocess"
  '(:description "Mojolicious::Plugin::Subprocess"
    :tags ["perl"]))
(hoarder:record "PoringUniverse/iro-restart-repo"
  '(:description "Ultimate Bot"
    :tags ["perl"]))
(hoarder:record "kazeburo/Kurado"
  '(:description "monitor metrics"
    :tags ["perl"]))
(hoarder:record "shortland/Spotify-Interface"
  '(:description "Small interface for accessing some parts of Spotifys Web API. Mainly going to use this to get a playlists song list."
    :tags ["perl"]))
(hoarder:record "teodesian/Selenium-Remote-Driver"
  '(:description "Perl Bindings to the Selenium Webdriver server"
    :tags ["perl" "selenium" "selenium-webdriver" "webdriver-3"]))
(hoarder:record "ksyz/chbs"
  '(:description "Yet another xkcd/936 passphrase generator"
    :tags ["perl"]))
(hoarder:record "alick/vit"
  '(:description "A mirror of vit, a vi-style ncurse based task warrior todo manager frontend"
    :tags ["perl"]))
(hoarder:record "yusukebe/WebService-Simple"
  '(:description "Simple Interface To Web Services APIs"
    :tags ["perl"]))
(hoarder:record "yusukebe/Kirino"
  '(:description "OreOre minmal Web Application Framework"
    :tags ["perl"]))
(hoarder:record "yusukebe/Kutter"
  '(:description "A Web Application displays the tweets about everyone eating. It's sample of Catalyst, DBIx::Class, and Moose."
    :tags ["perl"]))
(hoarder:record "yusukebe/Noe"
  '(:description "true tears on web application framework."
    :tags ["perl"]))
(hoarder:record "yusukebe/Hitagi"
  '(:description "Shall we talk about stars and micro web application frameworks."
    :tags ["perl"]))
(hoarder:record "UoMCS/newsagent"
  '(:description "News and events feed authoring platform"
    :tags ["perl"]))
(hoarder:record "UoMCS/bigscreen"
  '(:description "Simple setup for the big screen display"
    :tags ["perl"]))
(hoarder:record "georou/irc-guard"
  '(:description "Guard against typing unwanted text into IRC by mistake!"
    :tags ["perl" "hexchat" "hexchat-addons" "irc"]))
(hoarder:record "vepeti/catalog"
  '(:description "Log file collation tool"
    :tags ["perl"]))
(hoarder:record "burnsoftnet/DeleteOldFiles-Perl"
  '(:description "This perl script was created to delete select file types that are x amount of days old."
    :tags ["perl"]))
(hoarder:record "hoytech/String-Compare-ConstantTime"
  '(:description "Timing side-channel protected string compare"
    :tags ["perl"]))
(hoarder:record "ikorolev72/watch_folder_overlay"
  '(:description "Process video files in specified folder (OS Windows ). Crop video, and overlay transparent image with ffmpeg."
    :tags ["perl"]))
(hoarder:record "dgholz/App-Embra"
  '(:description "embra - build a web site from parts"
    :tags ["perl" "static-site-generator"]))
(hoarder:record "ReneNyffenegger/about-Unicode"
  '(:description "about Unicode"
    :tags ["perl" "font" "unicode"]))
(hoarder:record "xsawyerx/dancer2-plugin-paramtypes"
  '(:description "Parameter type checking plugin for Dancer2"
    :tags ["perl"]))
(hoarder:record "OSSG/JubJub"
  '(:description "Tool for Jabber messages logging"
    :tags ["perl" "ejabberd" "jabber" "logger" "messages" "watchdog" "xmpp"]))
(hoarder:record "niczero/minion-backend-storable"
  '(:description "File-based backend for Minion job queues, using Storable"
    :tags ["perl"]))
(hoarder:record "smussmann82/file_converters"
  '(:description "A collection of file format converters to prepare input for several popular phylogenetic and population genetics software packages."
    :tags ["perl"]))
(hoarder:record "chrisice/base64"
  '(:description "Perl script to encode and decode base64"
    :tags ["perl"]))
(hoarder:record "rapilodev/stream-schedule-gsync"
  '(:description "google calendar plugin for stream scheduler"
    :tags ["perl"]))
(hoarder:record "rapilodev/freedns-update"
  '(:description "freedns update daemon supporting multiple keys for different LANs"
    :tags ["perl"]))
(hoarder:record "rapilodev/stream-schedule-webapp"
  '(:description "web interface for stream-schedule"
    :tags ["perl"]))
(hoarder:record "Grinnz/Mojo-IOLoop-Subprocess-Sereal"
  '(:description "Mojo::IOLoop::Subprocess::Sereal - Subprocesses with Sereal"
    :tags ["perl"]))
(hoarder:record "robert-impey/tidy-folder"
  '(:description "Tidy up unwanted files from a folder."
    :tags ["perl"]))
(hoarder:record "rapilodev/playout"
  '(:description "audio playout scheduler"
    :tags ["perl"]))
(hoarder:record "torbsd/tdp-onion-stats"
  '(:description "Tor Network Diversity Statistics based on OnionOO JSON Data"
    :tags ["perl"]))
(hoarder:record "FGasper/p5-Text-Control"
  '(:description "CPAN’s Text::Control"
    :tags ["perl"]))
(hoarder:record "FGasper/p5-Crypt-Perl"
  '(:description "CPAN’s Crypt::Perl"
    :tags ["perl"]))
(hoarder:record "kensanata/oddmuse"
  '(:description "A simple wiki engine written in Perl. No database required."
    :tags ["perl"]))
(hoarder:record "yusukebe/Shodo"
  '(:description "Auto-generate documents from HTTP::Request and HTTP::Response"
    :tags ["perl"]
    :memo "[[http://www.wada.fm/entry/ep011][11. 富豪的解決 - wada.fm]]"))
(hoarder:record "yusukebe/Test-JSON-RPC-Autodoc"
  '(:description "Generate documents automatically with the tests for JSON-RPC"
    :tags ["perl"]
    :memo "[[http://www.wada.fm/entry/ep011][11. 富豪的解決 - wada.fm]]"))
(hoarder:record "nigelhorne/CGI-Untaint-Facebook"
  '(:description "Validate a string is a valid Facebook URL or ID"
    :tags ["perl"]))
(hoarder:record "stevan/p5-HTML-MasonX-Critic"
  '(:description "Introspection into HTML::Mason compiler and interpreter"
    :tags ["perl"]))
(hoarder:record "xpeco/MPG"
  '(:description "Multi-Protocol-Gateway: PYME Communication Tool"
    :tags ["perl"]))
(hoarder:record "perlackline/perlack"
  '(:description "hello perl ..."
    :tags ["perl"]))
(hoarder:record "th3sha10wbr04rs/Blue-Thunder-IP-Locator-"
  '(:description "Trace your IP | Host | Domain 👁"
    :tags ["perl"]))
(hoarder:record "spook/init-service"
  '(:description "Enhances the 'service' command to support the big three inits: SystemV, upstart, and systemd; PLUS handles install, remove actions too"
    :tags ["perl"]))
(hoarder:record "kentnl-gentoo/Ogg-Vorbis-Header"
  '(:description "CPAN History + Gentoo patches for Ogg-Vorbis-Header"
    :tags ["perl"]))
(hoarder:record "https://gist.github.com/mix3/953572.git"
  '(:tags ["perl" "Mojolicious" "Teng" "SNBinder" "Xslate" "SQLite" "crud"]
    :memo "[[http://mix3.github.io/blog/2011/05/04/20110504_01/][Mojolicious::Lite + Teng + SNBinder + Xslate (+ SQLite/OnMemory) でCRUDアプリを作ってみた - 萌えキャラとは何だったのか]]"))
(hoarder:record "ctrlo/Brass"
  '(:description "Brass management system"
    :tags ["perl"]))
(hoarder:record "hpepper/idea-to-product"
  '(:description "Tools for capturing information for getting from idea to product"
    :tags ["perl"]))
(hoarder:record "pauldenijs/dhcptools"
  '(:description "Solaris DHCP 'pntadm' and 'dhtadm' commands for Linux"
    :tags ["perl"]))
(hoarder:record "mmoccaro/Home_Info_Hub"
  '(:description "A general information hub for your home."
    :tags ["perl"]))
(hoarder:record "webmin/usermin"
  '(:description "Usermin source code"
    :tags ["perl"]))
(hoarder:record "Kojimo/XAMPP-Anywhere"
  '(:description "Yet another XAMPP portable version"
    :tags ["perl" "apache" "apps" "cms" "portable" "portableapps" "webserver" "xampp"]))
(hoarder:record "ronsavage/Regexp-Parsertron"
  '(:description "Parse a Perl regexp into a Tree"
    :tags ["perl"]))
(hoarder:record "wakaba/perl-promised-docker-webdriver"
  '(:tags ["perl"]))
(hoarder:record "silug/cpanspec"
  '(:description "Generate a spec file for a CPAN module"
    :tags ["perl"]))
(hoarder:record "miyagawa/theschwartz-simple"
  '(:description "Lightweight TheSchwartz job dispatcher using plain DBI"
    :tags ["perl"]))
(hoarder:record "maxmind/minfraud-api-perl"
  '(:tags ["perl"]))
(hoarder:record "whofferbert/wiki-looper"
  '(:description "A perl script to poke through wikipedia pages and look at the loops"
    :tags ["perl"]))
(hoarder:record "wakaba/perl-json-functions-xs"
  '(:description "JSON::Functions::XS"
    :tags ["perl"]))
(hoarder:record "redhotpenguin/perl-Archive-Zip"
  '(:description "Archive::Zip from svn.ali.as repository history"
    :tags ["perl"]))
(hoarder:record "adobe-type-tools/perl-scripts"
  '(:description "Command-line Perl scripts"
    :tags ["perl"]))
(hoarder:record "plicease/Shell-Guess"
  '(:description "make an educated guess about the shell in use"
    :tags ["perl"]))
(hoarder:record "jamadam/Mojolicious-Plugin-Dispatch2Directory"
  '(:description "[DEPRECATED] Dispatch to directory Hierarchie"
    :tags ["perl"]
    :memo "[[https://www.slideshare.net/jamadam/mojolicious-12907706][Mojoliciousをウェブ制作現場で使ってみてる]]"))
(hoarder:record "whofferbert/colorize"
  '(:description "A perl-based utility with a framework for colorizing text on the command line based on regular expressions."
    :tags ["perl"]))
(hoarder:record "liske/needrestart"
  '(:description "Restart daemons after library updates."
    :tags ["perl"]))
(hoarder:record "GrantStreetGroup/gitc"
  '(:description "Git workflow management"
    :tags ["perl"]))
(hoarder:record "sonicepk/nginx-hypnotoad"
  '(:description "nginx-hypnotoad"
    :tags ["perl"]))
(hoarder:record "rurban/cannes-rurban.rhcloud.com"
  '(:description "Dancer app for collected film festival reviews and ratings"
    :tags ["perl"]))
(hoarder:record "kororaproject/kp-canvas"
  '(:description "Package for the Canvas client and server"
    :tags ["perl"]))
(hoarder:record "richardjharris/perl-Progress-Awesome"
  '(:description "Awesome progress bars that just work"
    :tags ["perl"]))
(hoarder:record "socv/barbarian_tools"
  '(:tags ["perl"]))
(hoarder:record "krab5/shplit"
  '(:description "Clipboard content splitter"
    :tags ["perl"]))
(hoarder:record "brendangregg/proc-profiler"
  '(:description "Linux /proc/PID/stack profiler"
    :tags ["perl"]))
(hoarder:record "27escape/Echelon"
  '(:description "A queueing system (pubsub/tasks etc) with a KV store and lock system built in"
    :tags ["perl"]))
(hoarder:record "datamuc/WWW-Shorten-URLchen"
  '(:description "WWW-Shorten plugin for URLchen.de"
    :tags ["perl"]))
(hoarder:record "karenetheridge/Dist-Zilla-Plugin-DynamicPrereqs"
  '(:description "Specify dynamic (user-side) prerequisites for your distribution"
    :tags ["perl"]))
(hoarder:record "cota/barchart"
  '(:description "a simple gnuplot (>= 5.0) front-end for generating bar charts"
    :tags ["perl"]))
(hoarder:record "anychart-integrations/perl-catalyst-mysql-template"
  '(:description "This example shows how to use Anychart library with the Perl programming language, Catalyst web framework and MySQL database."
    :tags ["perl"]))
(hoarder:record "uricle/tiarra-modules"
  '(:tags ["perl"]))
(hoarder:record "rsrchboy/reindeer"
  '(:description "Moose with more antlers"
    :tags ["perl"]))
(hoarder:record "bgoglin/lltag"
  '(:description "Automatic command-line mp3/ogg/flac file tagger and renamer"
    :tags ["audio-tag" "command-line-tool" "flac" "mp3" "ogg" "perl" "rename" "vorbis"]))
(hoarder:record "tupinek/Unicode-Block"
  '(:description "Class for unicode block manipulation."
    :tags ["perl"]))
(hoarder:record "Difegue/LANraragi"
  '(:description "Web manager for manga/doujinshi archives with built-in reader and tag support"
    :tags ["comics" "doujinshi" "management" "manga" "perl" "reader" "redis" "sadpanda" "server"]))
(hoarder:record "LudovicRousseau/pcsc-tools"
  '(:description "Some tools to be used with smart cards and PC/SC"
    :tags ["atr" "pcsc" "perl" "smartcard"]))
(hoarder:record "graphql-perl/GraphQL-Plugin-Convert-DBIC"
  '(:description "Plugin to convert DBIx::Class schema to GraphQL schema"
    :tags ["perl"]))
(hoarder:record "mirror12k/Pale-White-MVC"
  '(:description "an MVC framework with tools for modern web development"
    :tags ["perl"]))
(hoarder:record "mirror12k/Carbon2-Web-Server"
  '(:description "A high frequency web server with speed and efficiency in mind"
    :tags ["perl"]))
(hoarder:record "OSSG/RO"
  '(:description "Repository Observer"
    :tags ["perl" "rpm" "watchdog"]))
(hoarder:record "maxmind/GeoIP2-perl"
  '(:description "Perl API for MaxMind's GeoIP2 web services and databases"
    :tags ["perl"]))
(hoarder:record "OSSG/surma"
  '(:description "Tiny and simple web-interface for changing Samba passwords stored in smbpasswd file"
    :tags ["perl" "cgi" "samba" "samba-passwords" "web-interface"]))
(hoarder:record "Aurametrix/Alg-P"
  '(:description "Algorithms in Perl"
    :tags ["perl"]))
(hoarder:record "pgengler/GIR"
  '(:description "A multithreaded IRC bot written in Perl"
    :tags ["perl"]))
(hoarder:record "Perl-Critic/Test-Perl-Critic"
  '(:description "Run Perl::Critic as a unit test"
    :tags ["perl"]))
(hoarder:record "robl95405/HomeAutomation-Perl"
  '(:description "Perl libraries and command line utilities to aid in home automation. Includes ISY and HTD whole house audio."
    :tags ["perl"]))
(hoarder:record "gnoling/UnlinkMKV"
  '(:description "Merges ordered chapters / segmented MKVs back into a single file."
    :tags ["perl"]))
(hoarder:record "karupanerura/Aniki"
  '(:description "The ORM as our great brother."
    :tags ["orm" "perl"]))
(hoarder:record "inway/mojo-rabbitmq-client"
  '(:description "Mojo::IOLoop based RabbitMQ (AMQP) client"
    :tags ["mojolicious" "perl" "rabbitmq" "rabbitmq-client"]))
(hoarder:record "oklas/cpanexec"
  '(:description "Execute application within local environment"
    :tags ["perl"]))
(hoarder:record "SpiderLabs/ModSecurity-apache"
  '(:description "ModSecurity v3 Apache Connector"
    :tags ["perl" "apache" "apache2" "libmodsecurity" "modsecurity" "waf"]))
(hoarder:record "elenst/mariadb-tests"
  '(:tags ["perl"]))
(hoarder:record "jodrell/treetools"
  '(:description "simple scripts for managing directory trees"
    :tags ["perl"]))
(hoarder:record "mikeykoelbl/raspberry-pi-kiosk-setup"
  '(:description "Scripts to setup a Raspberry PI to server as a kios"
    :tags ["perl"]))
(hoarder:record "gugod/BooHong"
  '(:description "模(ㆠㆦˊ)仿(ㄏㆲˋ) bôo‑hóng - 仿照別人的言行舉止去做，期使與之相同，稱為「模仿」。"
    :tags ["perl"]))
(hoarder:record "kjetilk/p5-rdf-trinex-compatibility-attean"
  '(:description "Compatibility layer between Attean and RDF::Trine"
    :tags ["perl"]))
(hoarder:record "fnp/librarian"
  '(:description "WLML Document multipurpose converter."
    :tags ["perl"]))
(hoarder:record "SvetikSchulman/autotest-on-Perl"
  '(:tags ["perl"]))
(hoarder:record "steve-m-hay/XML-Encoding"
  '(:tags ["perl"]))
(hoarder:record "steve-m-hay/PerlIO-via-QuotedPrint"
  '(:tags ["perl"]))
(hoarder:record "steve-m-hay/Class-Singleton"
  '(:tags ["perl"]))
(hoarder:record "steve-m-hay/Class-Data-Inheritable-Translucent"
  '(:tags ["perl"]))
(hoarder:record "steve-m-hay/Filter-Crypto"
  '(:tags ["perl"]))
(hoarder:record "steve-m-hay/Text-Balanced"
  '(:tags ["perl"]))
(hoarder:record "undertheseanlp/text_to_speech"
  '(:description "Vietnamese Text to Speech"
    :tags ["perl"]))
(hoarder:record "TTS-cdac-mumbai/TBT"
  '(:tags ["perl"]
    :download nil))
(hoarder:record "Tlhts/mdpublisher"
  '(:description "Publication sur le web basée sur des fichiers Markdown"
    :tags ["perl"]))
(hoarder:record "mr-mixas/Struct-Path-PerlStyle.pm"
  '(:description "Struct::Path::PerlStyle - Perl-style Path syntax frontend for Struct::Path."
    :tags ["perl" "data-structures" "nested-structures" "perl-module"]))
(hoarder:record "openwebwork/webwork2"
  '(:description "Course management front end for WeBWorK"
    :tags ["perl"]))
(hoarder:record "wakaba/testdataparser"
  '(:tags ["perl"]))
(hoarder:record "gcd-union/Ransomware-reinvent"
  '(:tags ["perl"]))
(hoarder:record "afolson/irssi-antisajoin"
  '(:description "An irssi script to part you from channels you're sajoined to. Works on UnrealIRCd but could work on others with minor tweaks."
    :tags ["perl"]))
(hoarder:record "krautcat/p5-App-FatPacker-Script"
  '(:description "FatPacker app for creating standalone scripts"
    :tags ["perl"]))
(hoarder:record "shildenbrand/NetHostWiki"
  '(:tags ["perl"]))
(hoarder:record "shildenbrand/NetHostScriptTool"
  '(:tags ["perl"]))
(hoarder:record "Grinnz/Role-EventEmitter"
  '(:description "Role::EventEmitter - Event emitter role"
    :tags ["perl"]))
(hoarder:record "warewulf/warewulf3"
  '(:description "Warewulf is a scalable systems management suite originally developed to manage large high-performance Linux clusters."
    :tags ["perl"]))
(hoarder:record "stevieb9/mock-sub"
  '(:description "Mock subroutines, with ability to add return values and side effects."
    :tags ["perl"]))
(hoarder:record "pkolano/shift"
  '(:description "High performance/reliability local/remote file transfers with sync and tar capabilities"
    :tags ["perl"]))
(hoarder:record "TamberP/Klompen"
  '(:description "Klompen - A static blog generator."
    :tags ["perl"]))
(hoarder:record "DRVTiny/Redis--BCStation"
  '(:description "Listen to your Redis!"
    :tags ["perl"]))
(hoarder:record "maxmind/webservice-paypal-paymentsadvanced"
  '(:description "A simple wrapper around the PayPal Payments Advanced web service"
    :tags ["perl"]))
(hoarder:record "hmmr/python-hate-made-useful"
  '(:description "Bulk crop images to a certain aspect ratio"
    :tags ["perl"]))
(hoarder:record "qashqao/iplocator"
  '(:description "Free IP-Geolocation script"
    :tags ["perl"]))
(hoarder:record "major/MySQLTuner-perl"
  '(:description "MySQLTuner is a script written in Perl that will assist you with your MySQL configuration and make recommendations for increased performance and stability."
    :tags ["perl"]))
(hoarder:record "thephilwells/LogEntries-Query"
  '(:description "A client for getting logs from LogEntries"
    :tags ["perl"]))
(hoarder:record "lucastheisen/template-resolver"
  '(:tags ["perl"]))
(hoarder:record "Alhadis/Alphabet-Soup"
  '(:description "Fun little toy I wrote to generate chaotic, garbled HTML using randomly-offset CSS transforms."
    :tags ["perl"]))
(hoarder:record "mauke/Quote-Code"
  '(:tags ["perl"]
    :memo "[[https://www.nntp.perl.org/group/perl.perl5.porters/2017/12/msg248290.html][{perl #127640} RFE: \"qqw( $var/x $var/y word3 $var4=word4)\" - nntp.perl.org]]"))
(hoarder:record "mauke/Quote-Ref"
  '(:description "qw for references"
    :tags ["perl"]
    :memo "[[https://www.nntp.perl.org/group/perl.perl5.porters/2017/12/msg248290.html][{perl #127640} RFE: \"qqw( $var/x $var/y word3 $var4=word4)\" - nntp.perl.org]]"))
(hoarder:record "karenetheridge/List-Gather"
  '(:description "Construct lists procedurally without temporary variables"
    :tags ["c++"]
    :memo "[[https://www.youtube.com/watch?v=3M9GhP0siJQ][Nelo Onyiah - things I'm surprised don't get more use - YouTube]]"))
(hoarder:record "perl5-utils/Hash-MoreUtils"
  '(:description "Provide the stuff missing in Hash::Util"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=3M9GhP0siJQ][Nelo Onyiah - things I'm surprised don't get more use - YouTube]]"))
(hoarder:record "skinnyjeans/Schedule-LongSteps"
  '(:description "Manage long term processes over arbitrary large spans of time."
    :tags ["perl"]))
(hoarder:record "akreal/Proc-Daemon"
  '(:description "Run Perl program(s) as a daemon process"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=qMyj0Yujb8k][Becoming a Daemon - YouTube]]"))
(hoarder:record "mgoodnight/storenvy-api-public-client"
  '(:description "Client module to interface with the public JSON API from Storenvy"
    :tags ["perl"]))
(hoarder:record "rrasch/book-publisher"
  '(:tags ["perl"]))
(hoarder:record "jberger/Wishlist"
  '(:description "A wishlist web app using Mojolicious"
    :tags ["perl"]))
(hoarder:record "katyannflowergirl/shitpost-generator"
  '(:description "forked from automatic-insurrection"
    :tags ["perl"]))
(hoarder:record "vk2cot/OAT-Unix-Linux-scripts"
  '(:description "Perl Scripts for Operations Acceptance Testing"
    :tags ["perl"]))
(hoarder:record "MajkiIT/polish-ads-filter"
  '(:description "CertyficateIT - Oficjalne polskie filtry do Adblock, uBlock Origin, Adguard"
    :tags ["perl" "ad-blocker" "adblock" "adblock-plus" "adguard" "adguard-windows" "blocker" "ciasteczka" "cookies" "filter" "filtry" "pl" "polish-ads-filters" "polish-filters" "reklamy" "ublock" "ublock-origin"]))
(hoarder:record "damil/List-Categorize-Multi"
  '(:description "A clone of List-Categorize with support for multiple subcategories."
    :tags ["perl"]))
(hoarder:record "vaba17/Simple-Network-management-Protocol"
  '(:tags ["perl"]))
(hoarder:record "maxmind/App-CISetup"
  '(:description "Command line tools to generate and update Travis and AppVeyor configs for Perl libraries"
    :tags ["perl"]))
(hoarder:record "petdance/html-lint"
  '(:description "HTML::Lint, the Perl module for HTML checking"
    :tags ["perl"]))
(hoarder:record "karupanerura/DBIx-TransactionManager-Extended"
  '(:description "extended DBIx::TransactionManager"
    :tags ["perl"]))
(hoarder:record "damil/List-Categorize"
  '(:description "Release history of List-Categorize"
    :tags ["perl"]))
(hoarder:record "schurshik/puzbl"
  '(:description "Puzbl - frontend interface to uzbl browser written on Perl + Gtk 2"
    :tags ["perl"]))
(hoarder:record "pgbackrest/pgbackrest"
  '(:description "Reliable PostgreSQL Backup & Restore"
    :tags ["archiving" "backup" "c" "checksum" "database" "differential-backups" "multi-process" "parallel" "perl" "postgresql" "restore" "s3" "tablespace"]))
(hoarder:record "shlomif/shlomif-perl-snippets"
  '(:description "My Collection of Random Perl Snippets"
    :tags ["perl"]))
(hoarder:record "houseabsolute/test-class-moose"
  '(:description "Serious testing for serious Perl"
    :tags ["perl"]))
(hoarder:record "pjrk/Jurahelfer"
  '(:description "Reddit-Bot, der Normen verlinkt"
    :tags ["perl"]))
(hoarder:record "cashmusic/rackspace-template"
  '(:description "A Vagrant environment for launching new CASH development instances."
    :tags ["perl"]))
(hoarder:record "brabect1/invest-utils-perl"
  '(:description "Misc perl utils for analysis of stock portfolio."
    :tags ["perl"]))
(hoarder:record "mig1024/autoform"
  '(:description "Appointment system for VMS CRM"
    :tags ["perl"]))
(hoarder:record "petersheridandodds/kitchentabletools"
  '(:description "An assortment of useful scripts"
    :tags ["perl"]))
(hoarder:record "openresty/resty-cli"
  '(:description "Fancy command-line utilities for OpenResty"
    :tags ["perl"]))
(hoarder:record "dkogan/feedgnuplot"
  '(:description "Tool to plot realtime and stored data from the commandline, using gnuplot. This is the repo for 'feedgnuplot' on CPAN"
    :tags ["perl"]))
(hoarder:record "dkogan/asciilog"
  '(:tags ["perl"]))
(hoarder:record "manwar/Map-Tube-Plugin-Graph"
  '(:description "Graph plugin for Map::Tube."
    :tags ["perl"]))
(hoarder:record "rjbs/rjbs-dots"
  '(:description "rjbs's misc. dotfiles"
    :tags ["perl"]))
(hoarder:record "samyk/samytools"
  '(:description "Simple tools to make console cowboying easier. Mostly *nix tools with an emphasis on OS X."
    :tags ["perl"]))
(hoarder:record "tsee/p5-Text-FindIndent"
  '(:description "Heuristically determine the indent style"
    :tags ["perl"]))
(hoarder:record "sdondley/Dancer2-Plugin-JSManager"
  '(:tags ["perl"]))
(hoarder:record "MullinsLab/postgres-fdw-generator"
  '(:description "PostgreSQL Foreign Data Wrapper (FDW) definition generator"
    :tags ["perl"]))
(hoarder:record "yanick/git-cpan-patch"
  '(:description "System to write patches against CPAN modules via Git"
    :tags ["perl"]))
(hoarder:record "drmuey/p5-File-Copy-Recursive"
  '(:description "Perl extension for recursively copying files and directories "
    :tags ["perl"]))
(hoarder:record "LotarProject/slackman"
  '(:description "SlackMan - Slackware Package Manager"
    :tags ["perl" "dbus" "package-manager" "repository" "slackbuilds" "slackware"]))
(hoarder:record "matt-mods/Security-Toolkit"
  '(:description "The repository for my secuirty toolkit, to be a more custom version of the metasploit framework."
    :tags ["perl"]))
(hoarder:record "mmitch/rrd"
  '(:description "my rrd statistic scripts"
    :tags ["perl" "monitoring" "rrd" "visualisation" "visualization"]))
(hoarder:record "kjetilk/p5-atteanx-compatibility-trine"
  '(:description "Compatibility layer between RDF::Trine and Attean"
    :tags ["perl"]))
(hoarder:record "Yoniwa-Mablo/perl-visual-log-analyzer"
  '(:description "A time based visual log analyzer"
    :tags ["perl"]))
(hoarder:record "ucam-cl-dtg/openroommap-static"
  '(:description "Static webtree for the OpenRoomMap webpages"
    :tags ["perl"]))
(hoarder:record "vlet/p5-Protocol-HTTP2"
  '(:description "HTTP/2 protocol implementation (RFC 7540)"
    :tags ["perl"]))
(hoarder:record "jschauma/jbot"
  '(:description "An Unreasonable HipChat Bot"
    :tags ["perl"]))
(hoarder:record "ddmitov/tabula"
  '(:description "Mojolicious framework for desktop applications"
    :tags ["perl" "desktop-application" "gui" "html" "mojolicious" "perl5"]))
(hoarder:record "tupinek/App-CPAN-Search"
  '(:description "Base class and script for CPAN searching."
    :tags ["perl"]))
(hoarder:record "bcattaneo/Facebook.pl"
  '(:description "This is a simple perl script that tries to collect functions for using Facebook without Graph API."
    :tags ["perl"]))
(hoarder:record "tupinek/Unicode-Block-List"
  '(:description "List of unicode blocks."
    :tags ["perl"]))
(hoarder:record "worthmine/Text-Password-AutoMigration"
  '(:description "Text::Password::AutoMigration - generate and verify Password with any contexts"
    :tags ["password-generator" "password-hash" "perl"]))
(hoarder:record "AbhinavMadahar/Workout-Tracker"
  '(:description "Tracks my workout progress"
    :tags ["perl"]))
(hoarder:record "VegGuide/VegGuide-site"
  '(:description "VegGuide.org website code"
    :tags ["perl"]))
(hoarder:record "anassar/HtmlToPdf"
  '(:description "An example Perl script to convert a whole website to one PDF file with the corresponding structure in the bookmarks panel. It is currently only designed to handle TensorFlow website, but should be easy to adapt to any other website. It relies on the use of wkhtmltopdf and ghostscript."
    :tags ["perl"]))
(hoarder:record "darviarush/miu"
  '(:description "miu - compile file width code and test on perl and documentation in markdown into more files"
    :tags ["perl"]))
(hoarder:record "AlexBurnes/Plack-App-URLMux"
  '(:description "Plack::App::URLMux is PSGI application that can dispatchs multiple applications based on URL path and host names and patterns"
    :tags ["perl"]))
(hoarder:record "inurlx/Fport"
  '(:description "A Perl tool which can scans single and multiple ports for either a specific site or list of sites."
    :tags ["perl"]))
(hoarder:record "jhthorsen/app-proxyforurl"
  '(:description "An online PAC file parser"
    :tags ["perl"]))
(hoarder:record "mokus0/deepbondi"
  '(:description "My personal shell environment, utility scripts, etc."
    :tags ["perl"]))
(hoarder:record "ldante86/Pspell"
  '(:description "A work-in-progress perl module for spell checking"
    :tags ["perl"]))
(hoarder:record "nazalislam/Perl-Console-Applications"
  '(:description "This repository contains Perl console applications I created during a college semester. Most important topics covered are: data-types, sorting hash, array, globbing, command-line argument interpolation, and file input-output"
    :tags ["globbing" "hash" "perl" "regex" "sorting"]))
(hoarder:record "jamadam/Marquee"
  '(:description "Yet another Mojo based web framework"
    :tags ["perl"]))
(hoarder:record "samis/dotfiles-weechat"
  '(:tags ["perl"]))
(hoarder:record "mones/clawsker"
  '(:description "This is a clone from main repository at http://git.claws-mail.org: Clawsker is a Perl-GTK2 applet to edit hidden preferences for Claws Mail, and to do it in a safe and user friendly way, preventing users from raw editing of configuration files."
    :tags ["perl"]))
(hoarder:record "vaeth/squashmount"
  '(:description "Init and management script for mounting rewritable squashfs-compressed data"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-WordList"
  '(:tags ["perl"]))
(hoarder:record "traes/getPodcasts"
  '(:description "Download latest editions of podcasts in various languages."
    :tags ["perl"]))
(hoarder:record "houseabsolute/Params-ValidationCompiler"
  '(:description "Build an optimized subroutine parameter validator once, use it forever"
    :tags ["perl"]))
(hoarder:record "philippe44/ShairTunes2"
  '(:description "Airtunes with LMS (fork of https://github.com/disaster123/shairport2_plugin)"
    :tags ["perl"]))
(hoarder:record "jberger/Mojolicious-Plugin-Multiplex"
  '(:description "A websocket multiplexing layer for Mojolicious applications"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-btcindo"
  '(:tags ["perl"]))
(hoarder:record "weechatter/weechat-scripts"
  '(:description "My personal scripts and scripts i am involved in for WeeChat (Wee Enhanced Environment for Chat)"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-wordlist"
  '(:tags ["perl"]))
(hoarder:record "Moham3dRiahi/XAttacker"
  '(:description "X Attacker Tool ☣ Website Vulnerability Scanner & Auto Exploiter"
    :tags ["perl" "auto-exploiter" "deface" "drupal" "exploit" "hack" "hacking" "hacking-tool" "joomla" "lokomedia" "prestashop" "prestashop-module" "scanner" "shell" "vulnerability" "vulnerability-scanner" "webshell" "website-vulnerability-scanner" "wordpress" "wordpress-plugin" "wordpress-theme"]))
(hoarder:record "mschout/perl-authen-u2f-tester"
  '(:description "FIDO/U2F client for testing U2F integration"
    :tags ["perl"]))
(hoarder:record "kyzn/mini-plerd"
  '(:description "A stripped clone of plerd the static blogger "
    :tags ["perl" "perl-script" "static-blog"]))
(hoarder:record "bollwarm/rex-fragment"
  '(:description "some fragments for rex auto operater platform(rex自动运维平台功能小集合)"
    :tags ["perl"]))
(hoarder:record "yulPa/iWal-AWstats"
  '(:tags ["perl"]))
(hoarder:record "noctux/igor"
  '(:description "A dotfilemanager that does some incredible stitching"
    :tags ["declarative" "dotfile-management" "dotfile-manager" "perl" "portable" "templates"]))
(hoarder:record "gulkily/duct"
  '(:tags ["perl"]))
(hoarder:record "jhthorsen/relier"
  '(:description "Connect with third party user catalogues, such as Google and Facebook"
    :tags ["perl"]))
(hoarder:record "wakaba/harusame"
  '(:description "Harusame - Multilingual Web site management"
    :tags ["perl"]))
(hoarder:record "tupinek/App-MetaTrans"
  '(:description "Perl/Tk frontend to MetaTrans."
    :tags ["perl"]))
(hoarder:record "rikvanriel/spamikaze"
  '(:description "Spamikaze spam blocking dnsbl maintenance tools"
    :tags ["perl"]))
(hoarder:record "satyap/dvdauthoring"
  '(:description "How to make a DVD of home movies in Linux using tovid and makedvd."
    :tags ["perl"]))
(hoarder:record "satyap/htgroupcontrol"
  '(:tags ["perl"]))
(hoarder:record "hitode909/APISchema"
  '(:description "Schema for API"
    :tags ["perl"]))
(hoarder:record "SEEDtk/ERDB"
  '(:tags ["perl"]))
(hoarder:record "MullinsLab/postgres-fdw-generator"
  '(:description "PostgreSQL Foreign Data Wrapper (FDW) definition generator"
    :tags ["perl"]))
(hoarder:record "jhthorsen/json-validator"
  '(:description "Validate data against a JSON schema"
    :tags ["perl"]))
(hoarder:record "inverse-inc/packetfence"
  '(:description "PacketFence is a fully supported, trusted, Free and Open Source network access control (NAC) solution. Boasting an impressive feature set including a captive-portal for registration and remediation, centralized wired and wireless management, powerful BYOD management options, 802.1X support, layer-2 isolation of problematic devices; PacketFence can be used to effectively secure networks small to very large heterogeneous networks."
    :tags ["perl" "nac" "network" "packetfence"]))
(hoarder:record "lightstar/anyjob"
  '(:description "Program system used to run arbitrary jobs on linux nodes"
    :tags ["perl"]))
(hoarder:record "mischapeters/minimalist"
  '(:tags ["perl"]))
(hoarder:record "clintongormley/Elastic-Model"
  '(:description "Use ElasticSearch as a NoSQL database in Perl"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=Lrrp4ZmZB44][To infinity and beyond 4164 - YouTube]]"))
(hoarder:record "jef-sure/dbix-struct-github"
  '(:description "DBIx::Struct"
    :tags ["perl"]))
(hoarder:record "wakaba/perl-mono"
  '(:description "Mono (or product or thing) Perl module"
    :tags ["perl"]))
(hoarder:record "wakaba/perl-charclass"
  '(:description "CharClass Perl modules"
    :tags ["perl"]))
(hoarder:record "zevanty/data-filterer"
  '(:description "Perl script to filter out lines from a text file based on specified filters."
    :tags ["perl"]))
(hoarder:record "zevanty/data-sorter"
  '(:description "Perl script to sort columns of CSV and TSV files."
    :tags ["perl"]))
(hoarder:record "hyphop/miZy-spi-image-builder"
  '(:description "SPI-flash firmware image builder (for sunxi Orange Pi Zero, another sunxi boards maybe work too )"
    :tags ["perl"]))
(hoarder:record "vyos/vyatta-cfg-system"
  '(:description "Vyatta system-level configuration templates/scripts"
    :tags ["perl"]))
(hoarder:record "damil/DBIx-DataModel"
  '(:description "UML-based Object-Relational Mapping (ORM) framework for Perl"
    :tags ["perl"]))
(hoarder:record "vitalif/bugzilla-4intranet"
  '(:description "Improved fork of Bugzilla with many new features"
    :tags ["perl"]))
(hoarder:record "ConnorSinnott/PerlNote"
  '(:description "Experiment with Perl and Catalyst"
    :tags ["perl"]))
(hoarder:record "Reed97123/plex_db_backup"
  '(:description "Backup Plex Database and Preferences"
    :tags ["perl"]))
(hoarder:record "bithalver/ThreadPictures"
  '(:tags ["perl"]))
(hoarder:record "naturalist/grumpycat-perl"
  '(:description "Perl implementation of the Grumpycat chatbot"
    :tags ["perl"]))
(hoarder:record "duncs/clusterssh"
  '(:description "Cluster SSH - Cluster Admin Via SSH"
    :tags ["perl"]))
(hoarder:record "gryphonshafer/exact"
  '(:description "Perl pseudo pragma to enable strict, warnings, features, mro, filehandle methods"
    :tags ["perl"]))
(hoarder:record "lordslair/untappd-map"
  '(:tags ["perl"]))
(hoarder:record "Grinnz/song-request-queue"
  '(:tags ["perl"]))
(hoarder:record "Akron/Mojolicious-Plugin-PubSubHubbub"
  '(:description "Publish and Subscribe to PubSubHubbub with Mojolicious"
    :tags ["perl"]))
(hoarder:record "umglurf/juleol"
  '(:description "Christmas beer rating applicationt"
    :tags ["perl"]))
(hoarder:record "NETWAYS/tkmon"
  '(:description "Build tools for tkmon"
    :tags ["perl"]))
(hoarder:record "hexchat/hexchat-addons"
  '(:description "Plugins and scripts made for HexChat"
    :tags ["perl"]))
(hoarder:record "HariSekhon/lib"
  '(:description "Perl Utility Library for my other repos"
    :tags ["ambari" "biginsights" "cassandra" "cloudera" "cloudera-manager" "datastax" "elasticsearch" "hbase" "library" "mapr" "mongodb" "perl" "redis" "riak" "solr" "zookeeper"]))
(hoarder:record "qbsonn/LinuxUserManagement"
  '(:description "Skrypt w jezyku perl służący do zarządzania użytkownikami systemu Linux. Umożliwia dodawanie, usuwanie oraz modyfikowanie użytkowników (pozwala konfigurować zmiene związane z kontem np. uid, shell, homedirectory, haslo itp). Może działać w trybie tekstowym lub graficznym (GUI w Perl/TK)"
    :tags ["perl"]))
(hoarder:record "djordje-kasagic/PgWI"
  '(:description "A simple web interface for PostgreSQL databases"
    :tags ["perl"]))
(hoarder:record "raykoo-expert/Tracer"
  '(:description "Trace Host - Domain - Ip"
    :tags ["perl"]))
(hoarder:record "Corion/App-m3udownload"
  '(:description "Download and join M3U / M3U8 streams"
    :tags ["perl"]))
(hoarder:record "c0demech/ween"
  '(:description "Perl IRC bot "
    :tags ["perl"]))
(hoarder:record "duckduckgo/zeroclickinfo-goodies"
  '(:description "DuckDuckGo Instant Answers based on Perl & JavaScript"
    :tags ["duckduckgo" "instant-answers" "javascript" "perl"]))
(hoarder:record "tancoro/PY3D"
  '(:description "perlで作った3Dレンダリングエンジン"
    :tags ["perl"]))
(hoarder:record "zakuArbor/budget"
  '(:description "A finance program that records your spendings"
    :tags ["budget" "perl"]))
(hoarder:record "lobkovs/autoLoadCasperJS"
  '(:description "CasperJS бот для автоматизированного выполнения рутинных задач"
    :tags ["perl"]))
(hoarder:record "Corion/App-drophandler"
  '(:description "drag-and-drop URL receiver"
    :tags ["perl"]))
(hoarder:record "jfcoz/postgresqltuner"
  '(:description "Simple script to analyse your PostgreSQL database configuration, and give tuning advice"
    :tags ["docker" "mem-buffer" "perl" "postgres" "postgresql" "postgresql-database" "ssh" "tuning"]))
(hoarder:record "wakaba/perl-anyevent-httpserver"
  '(:description "A broken HTTP server"
    :tags ["perl"]))
(hoarder:record "GeoffreyDB/Geoffrey"
  '(:description "Continuous Database Migration"
    :tags ["continuous-database-migration" "database" "perl"]))
(hoarder:record "MickeyLane/Views"
  '(:description "Cross-platform security camera software"
    :tags ["perl"]))
(hoarder:record "zonkeynet/ZonkeyNet"
  '(:description "RADIO Mesh Network"
    :tags ["perl" "bot" "fldigi" "internet" "irc" "news" "radio-mesh-network" "tor" "twitter"]))
(hoarder:record "tupinek/Unicode-Block-Ascii"
  '(:description "Ascii output of unicode block."
    :tags ["perl"]))
(hoarder:record "barnowl/barnowl"
  '(:description "A multi-protocol curses IM client."
    :tags ["perl"]))
(hoarder:record "alexmac131/torrentTagRemover"
  '(:tags ["perl"]))
(hoarder:record "jgilbert20/sensornet"
  '(:description "Arduino sensor library"
    :tags ["perl"]))
(hoarder:record "LiKneu/comics"
  '(:description "A text file based comic database"
    :tags ["perl"]))
(hoarder:record "only4cc/multidb"
  '(:description "multidb"
    :tags ["perl"]))
(hoarder:record "mmiddo2003/new-shell"
  '(:tags ["perl"]))
(hoarder:record "Merovius/shellex"
  '(:description "Shell-based launcher"
    :tags ["perl"]))
(hoarder:record "ekovegeance/admin"
  '(:description "easy finding login administrasi website "
    :tags ["perl" "hacking-tool" "penetration-testing" "website"]))
(hoarder:record "marcoarthur/gorjun-perl-cli"
  '(:tags ["gorjun" "perl" "rest"]))
(hoarder:record "greek-stasia/XDisc"
  '(:tags ["perl" "shodan-api"]))
(hoarder:record "suzutsuki0220/stocker"
  '(:description "共有サーバーのファイルをWebブラウザで操作するためのCGIです"
    :tags ["perl"]))
(hoarder:record "binary-com/perl-Data-Chronicle"
  '(:description "Chronicle storage system"
    :tags ["perl"]))
(hoarder:record "ccpro/web-data"
  '(:description "web scripts and data tables"
    :tags ["perl"]))
(hoarder:record "kazuho/p5-Server-Starter"
  '(:description "a superdaemon for hot-deploying server programs"
    :tags ["perl"]))
(hoarder:record "binary-com/perl-App-Config-Chronicle"
  '(:tags ["perl"]))
(hoarder:record "binary-com/perl-Cache-RedisDB"
  '(:description "RedisDB based cache system"
    :tags ["perl"]))
(hoarder:record "binary-com/perl-Data-CouchDB"
  '(:tags ["perl"]))
(hoarder:record "binary-com/perl-Mojo-Redis-Processor"
  '(:description "Mojo app task processor using Redis in backend"
    :tags ["perl"]))
(hoarder:record "binary-com/perl-pubnub-pubsub"
  '(:description "Perl library for rapid publishing of messages on PubNub.com"
    :tags ["perl"]))
(hoarder:record "hollie/misterhouse"
  '(:description "Perl open source home automation program. It's fun, it's free, and it's entirely geeky."
    :tags ["perl"]))
(hoarder:record "cPanelPeter/infection_scanner"
  '(:tags ["perl"]))
(hoarder:record "lausser/check_video_health"
  '(:description "A Nagios plugin which checks the health of video conferencing systems (starting with Polycom)"
    :tags ["perl"]))
(hoarder:record "jhthorsen/app-mojopaste"
  '(:description "Pastebin"
    :tags ["perl"]))
(hoarder:record "clubs-project/DBtranslator"
  '(:description "Scripts to download the information from the DB and translate it using pre-trained models"
    :tags ["perl"]))
(hoarder:record "grmano/shell-to-python-shpy-"
  '(:description "A shell to python script converter written in perl"
    :tags ["perl"]))
(hoarder:record "talhakum/File-Based-Database-Management-System"
  '(:description "Scripting Languages course project"
    :tags ["perl"]))
(hoarder:record "Akron/Mojolicious-Plugin-Util-RandomString"
  '(:description "Generate Secure Random Strings in Mojolicious"
    :tags ["perl"]))
(hoarder:record "suikawiki/perl-swml-parser"
  '(:description "An SWML parser"
    :tags ["perl"]))
(hoarder:record "naturalist/kelp"
  '(:description "A web framework light, yet rich in nutrients."
    :tags ["perl"]))
(hoarder:record "sra/roachize"
  '(:description "Convert a pg_dump file in sql format to work against cockroachdb"
    :tags ["perl" "cockroachdb" "postgresql"]))
(hoarder:record "jafrado/badges"
  '(:description "Event Badge Generator"
    :tags ["perl"]))
(hoarder:record "jayo3/Afraid-DynDNS"
  '(:tags ["perl"]))
(hoarder:record "sebastiannielsen/swehackbot"
  '(:description "IRC bot for swehack"
    :tags ["perl"]))
(hoarder:record "ivanwills/App-Usefull"
  '(:description "An eclectic collection of usefull scripts"
    :tags ["perl"]))
(hoarder:record "stevieb9/module-checkdep-version"
  '(:description "Automatically check whether your CPAN distributions require prereq version bumps"
    :tags ["perl"]))
(hoarder:record "crazy-camel/armadillo"
  '(:description "A perl centric git based repo - server goodness"
    :tags ["perl"]))
(hoarder:record "drmuey/p5-File-Path-Tiny"
  '(:description "recursive versions of mkdir() and rmdir() without as much overhead as File::Path"
    :tags ["perl"]))
(hoarder:record "team-at-cpan/Job-Async"
  '(:description "IO::Async background job support"
    :tags ["perl"]
    :memo "https://metacpan.org/pod/Job::Async"))
(hoarder:record "urizackhem/wlan_wakeup"
  '(:description "A simply Perl script to keep your WiFi ON"
    :tags ["perl"]))
(hoarder:record "team-at-cpan/JSON-MaybeUTF8"
  '(:description "Wrapper around JSON::MaybeXS for explicit Unicode/UTF-8 handling"
    :tags ["perl"]))
(hoarder:record "OrganicDesign/tools"
  '(:description "Useful scripts we use in our day-to-day server and site administration tasks."
    :tags ["perl"]))
(hoarder:record "toddfries/weather"
  '(:description "cli utility to compactly display weather info accessable from WWW::Wunderground::API"
    :tags ["perl"]))
(hoarder:record "Jerry12138/compass-program"
  '(:tags ["perl"]))
(hoarder:record "jazzdev/imdb"
  '(:description "API for serving IMDB data"
    :tags ["perl"]))
(hoarder:record "aggibb/geotagging"
  '(:description "Various scripts for playing around with geotags and other GPS data"
    :tags ["perl"]))
(hoarder:record "gryphonshafer/Bot-IRC"
  '(:description "Yet Another IRC Bot"
    :tags ["perl"]))
(hoarder:record "gryphonshafer/Filter-CommaEquals"
  '(:description "Adds support for ,= to any package or script"
    :tags ["perl"]))
(hoarder:record "d4t4king/nmap2db.pl"
  '(:description "nmap2db script(s) in perl"
    :tags ["perl"]))
(hoarder:record "project-renard/p5-Renard-Jacquard"
  '(:tags ["perl"]))
(hoarder:record "theluigiguy/RevChatStats"
  '(:description "A pisg website containing chat stats for RevScarecrow's chat. Manual updates for now, may be inaccurate if IRC chat logging stops unexpectedly"
    :tags ["perl"]))
(hoarder:record "PluginsOCSInventory-NG/uptime"
  '(:description "Retrieve Machine Uptime"
    :tags ["perl"]))
(hoarder:record "incognico/gus"
  '(:description "Gus - Discord bot for the twilightzone Sven Co-op server"
    :tags ["perl" "discord" "discord-bot" "svencoop"]))
(hoarder:record "derobert/Podist"
  '(:description "Podcatcher that generates m3u playlists"
    :tags ["perl"]))
(hoarder:record "googleads/googleads-perl-lib"
  '(:description "AdWords API Perl Client Library"
    :tags ["perl"]))
(hoarder:record "dwright/DBD-Multi"
  '(:description "DBD::Multi Perl Module "
    :tags ["perl"]))
(hoarder:record "aryanrtm/Remote-Shell"
  '(:description "Remote ur webshell with this fucking tools XD"
    :tags ["perl"]))
(hoarder:record "cperciva/freebsd-boot-profiling"
  '(:description "Userland code for profiling the FreeBSD boot"
    :tags ["perl"]))
(hoarder:record "agentzh/amazon-polly-batch"
  '(:description "Convert large plain text files to MP3 files via Amazon Polly"
    :tags ["perl"]))
(hoarder:record "gflohr/qgoda"
  '(:description "Qgoda (pronounce: yagoda!) is an extensible static site generator."
    :tags ["cms" "i18n" "perl" "static-site-generator"]))
(hoarder:record "abraxxa/Test-Portability-Files"
  '(:description "Test::Portability::Files CPAN module"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-Complete-Env"
  '(:tags ["perl"]))
(hoarder:record "j39m/qlqw"
  '(:description "qlqw is a (really bad) QuodLibet queue writer."
    :tags ["perl"]))
(hoarder:record "rsrchboy/vim-ducttape"
  '(:description "Perl and VimL: Perfect Together"
    :tags ["embedded-perl" "perl" "viml-library"]))
(hoarder:record "perlancar/perl-WordList-ID-Common"
  '(:tags ["perl"]))
(hoarder:record "amiri/Digest-PBKDF2"
  '(:description "Digest::base subclass with PBKDF2 algorithm"
    :tags ["perl"]))
(hoarder:record "eserte/travis-helper-cpan-pm"
  '(:description "install CPAN modules on travis-ci using CPAN.pm"
    :tags ["perl"]))
(hoarder:record "eserte/image-info"
  '(:description "the CPAN module Image::Info"
    :tags ["perl"]))
(hoarder:record "bluefeet/Perl-Critic-Policy-Moo-ProhibitMakeImmutable"
  '(:description "Makes sure that Moo classes do not contain calls to make_immutable."
    :tags ["perl"]))
(hoarder:record "LukasJocham/MakePerlGreateAgain"
  '(:description "This Repo is about Perl. If you like Perl, you will like this. If not thank you. "
    :tags ["makeperlgreateagain" "perl" "projects" "small-tools"]))
(hoarder:record "openwebwork/pg"
  '(:description "Problem rendering engine for WeBWorK"
    :tags ["perl"]))
(hoarder:record "mquinson/po4a"
  '(:description "Unofficial repository of po4a (PO for anything)"
    :tags ["perl"]))
(hoarder:record "mueschel/dhcpdformatter"
  '(:tags ["perl"]))
(hoarder:record "maxatome/layout"
  '(:description "POC: algorithms needed to integrate Xrandr in ctwm"
    :tags ["perl"]))
(hoarder:record "justingit/dada-mail"
  '(:description "Self-Hosted, Full Featured, Email Mailing List Manager. Announcement + Discussion Lists, Web-based Installer, Installs with minimal dependencies, sendmail/SMTP/Amazon SES supported"
    :tags ["perl"]))
(hoarder:record "fiferjanis/PerlCrumbs"
  '(:description "CGI HTML Breadcrumbs script written in perl"
    :tags ["perl"]))
(hoarder:record "sni/thruk_libs"
  '(:description "easy build thruk perl dependencies"
    :tags ["perl"]))
(hoarder:record "rolosworld/Pluton"
  '(:tags ["perl"]))
(hoarder:record "spurkis/TAP-Formatter-HTML"
  '(:description "Perl TAP::Formatter::HTML module"
    :tags ["perl"]))
(hoarder:record "Tekki/sql-ledger"
  '(:description "The official SQL-Ledger version, plus some additions."
    :tags ["perl"]))
(hoarder:record "skrp/GEN_SCRAPER"
  '(:description "generic perl scrape tools"
    :tags ["perl"]))
(hoarder:record "johnnyrenaissance/redirector"
  '(:description "Super small perl program to redirect users based on the url path value"
    :tags ["perl"]))
(hoarder:record "khrt/Raisin"
  '(:description "Raisin - a REST API micro framework for Perl 🐫 🐪"
    :tags ["openapi" "perl" "plack" "raisin" "rest" "swagger"]))
(hoarder:record "lejeunerenard/jiffy"
  '(:description "A minimalist time tracking app focused on precision and effortlessness."
    :tags ["perl"]))
(hoarder:record "vodkatad/syscid"
  '(:tags ["perl"]))
(hoarder:record "darold/squidanalyzer"
  '(:description "Squid Analyzer parses Squid proxy access log and reports general statistics about hits, bytes, users, networks, top URLs, and top second level domains. Statistic reports are oriented toward user and bandwidth control."
    :tags ["perl"]))
(hoarder:record "jpcsupplies/Frontier-Map"
  '(:description "Tool for live online updates of your world on a galaxy map"
    :tags ["perl"]))
(hoarder:record "aferreira/cpan-Carp-Always"
  '(:description "Warns and dies noisily with stack backtraces"
    :tags ["perl"]))
(hoarder:record "p5sagit/Devel-REPL"
  '(:tags ["perl"]))
(hoarder:record "git://git.shadowcat.co.uk/p5sagit/Eval-WithLexicals.git"
  '(:memo "tinyrepl"))
(hoarder:record "hoelzro/pod-minicpandoc"
  '(:description "A fork of Pod::Cpandoc that works on a minicpan"
    :tags ["perl"]))
(hoarder:record "binary-com/perl-Mojo-WebSocketProxy"
  '(:tags ["perl"]))
(hoarder:record "impostobot/impostobot"
  '(:tags ["perl"]))
(hoarder:record "schwern/Test-Sims"
  '(:description "Perl module to help build up complex, semi-random data for testing."
    :tags ["perl"]))
(hoarder:record "miramor/linux-customizing"
  '(:description "Scripts for customizing desktop Linux distros"
    :tags ["perl"]))
(hoarder:record "eserte/tk-histentry"
  '(:description "the CPAN module Tk::HistEntry"
    :tags ["perl"]))
(hoarder:record "bobpp/bobot"
  '(:description "bobpp's IRC bot"
    :tags ["perl"]))
(hoarder:record "bobpp/pastel"
  '(:description "pastel on Perl w/Amon2::Lite"
    :tags ["perl"]))
(hoarder:record "bobpp/perl-Log-Dispatch-TiarraSocket"
  '(:description "Log::Dispatch::TiarraSocket"
    :tags ["perl"]))
(hoarder:record "kazeburo/Kossy"
  '(:description "sinatra-ish simple waf"
    :tags ["perl"]))
(hoarder:record "kazeburo/GrowthForecast"
  '(:description "Lightning Fast Graphing/Visualization"
    :tags ["perl"]))
(hoarder:record "shlomif/string-random"
  '(:description "Perl String::Random module"
    :tags ["perl"]))
(hoarder:record "Csson/p5-String-Stomp"
  '(:description "Remove leading/trailing empty lines"
    :tags ["perl"]))
(hoarder:record "NexMirror/Shorewall"
  '(:description "Mirror of Shorewall"
    :tags ["perl"]))
(hoarder:record "markov2/perl5-Math-Polygon"
  '(:description "Basic polygon manipulations"
    :tags ["perl"]))
(hoarder:record "eserte/tk-pathentry"
  '(:description "the CPAN module Tk::PathEntry"
    :tags ["perl"]))
(hoarder:record "skaji/mi"
  '(:tags ["perl"]))
(hoarder:record "EmbedJournal/web-content"
  '(:description "EmebdJournal's public web content"
    :tags ["perl" "blog" "blogging" "diy" "embedded-systems" "markdown-blog" "programming" "robotics"]))
(hoarder:record "perlbot/Mojolicious-Command-nopaste-Service-perlbot"
  '(:description "A Mojolicious::Command::nopaste::Service for perlbot.pl"
    :tags ["perl"]))
(hoarder:record "jacquesg/p5-Git-Raw"
  '(:description "Perl bindings to the Git linkable library (libgit2)"
    :tags ["git" "perl" "perl-module" "perl5"]))
(hoarder:record "Tux/speedtest"
  '(:description "Perl CLI for speedtest.net"
    :tags ["perl"]))
(hoarder:record "team-at-cpan/Job-Async-Redis"
  '(:description "Redis support for Job::Async"
    :tags ["perl"]))
(hoarder:record "rurban/perl-compiler"
  '(:description "B::C - Moved over from googlecode"
    :tags ["perl"]))
(hoarder:record "redhotpenguin/perl-soaplite"
  '(:description "SOAP::Lite for Perl"
    :tags ["perl"]))
(hoarder:record "graphql-perl/GraphQL-Plugin-Convert-OpenAPI"
  '(:description "Plugin to convert OpenAPI schema to GraphQL schema"
    :tags ["perl"]))
(hoarder:record "oetiker/znapzend"
  '(:description "zfs backup with remote capabilities and mbuffer integration."
    :tags ["perl"]))
(hoarder:record "thruston/perl-agenda"
  '(:description "Source for a Perl calendar maker"
    :tags ["perl"]))
(hoarder:record "benkasminbullock/html-valid"
  '(:tags ["perl"]
    :memo "[[http://blogs.perl.org/users/ben_bullock/2017/12/an-alternative-to-htmltagset.html][An alternative to HTML::Tagset | The Incredible Journey {blogs.perl.org}]]"))
(hoarder:record "perlancar/perl-Acme-CPANLists-PERLANCAR-FooThis") 
(hoarder:record "perlancar/perl-App-DAVThis"
  '(:tags ["perl"]))
(hoarder:record "theias/ias_perl_script_infra"
  '(:description "A collection of libraries useful for making automation infrastructure"
    :tags ["perl"]))
(hoarder:record "frioux/Net-Async-Ping"
  '(:tags ["perl"]))
(hoarder:record "rubykat/File-Sticker"
  '(:description "stick tags onto files and add to a database"
    :tags ["perl"]))
(hoarder:record "akiym/Oden"
  '(:description "The ORM Mapper (Transmigration of Teng)"
    :tags ["perl" "database" "orm" "teng"]))
(hoarder:record "keydet89/RegRipper2.8"
  '(:description "RegRipper version 2.8"
    :tags ["perl"]))
(hoarder:record "perl5-dbi/DBD-CSV"
  '(:description "DBD::CSV - DBI driver for CSV files"
    :tags ["perl"]))
(hoarder:record "Tux/Config-Perl-V"
  '(:description "A module that will return you the output of 'perl -V' in a structure."
    :tags ["perl"]))
(hoarder:record "Tux/App-tkiv"
  '(:description "iv is an image viewer in Perl::Tk based on IrfanView"
    :tags ["perl"]))
(hoarder:record "bmintz/slashes"
  '(:description "code written in ///, yo"
    :tags ["perl"]))
(hoarder:record "krismatthews/homework-mojo-orders"
  '(:description "A very simplistic point of sale reporting application. You can upload a CSV of orders in the correct format and view a static report."
    :tags ["perl"]))
(hoarder:record "wakaba/perl-web-useragent-functions"
  '(:description "Web::UserAgent::Functions"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-Random-Any"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-App-CreateAcmeCPANListsImportModules"
  '(:tags ["perl"]))
(hoarder:record "Burnett01/webmin-notes"
  '(:description "A small module that allows you to create/edit/remove notes."
    :tags ["cgi" "notes" "perl" "webmin"]))
(hoarder:record "fwmechanic/file-collection-searcher"
  '(:description "Unsophisticated CGI-Perl webapp providing filename-based searching of a file collection."
    :tags ["perl"]))
(hoarder:record "wakaba/perl-json-ps"
  '(:tags ["perl"]))
(hoarder:record "yanick/Taskwarrior-Kusarigama"
  '(:tags ["perl"]))
(hoarder:record "tamouse/irssi-showtitle"
  '(:description "IRSSI script to display URL titles"
    :tags ["perl"]))
(hoarder:record "ivanwills/Group-Git-Cmd-Todo"
  '(:description "Group-Git tool to show combined markdown TODOs"
    :tags ["perl"]))
(hoarder:record "pharaun/oneManga-gtk-viewer"
  '(:description "It is a oneManga GTK+ based viewer, orginally written in Perl, and now being ported and re-written in ruby"
    :tags ["perl" "ruby"]))
(hoarder:record "voc/hls-relive"
  '(:description "An HLS stream timeshifting system"
    :tags ["perl"]))
(hoarder:record "mr-mixas/Log-Log4Cli.pm"
  '(:description "Lightweight perl logger for command line tools"
    :tags ["perl"]))
(hoarder:record "obo/trainable-detokenizer"
  '(:description "A trainable detokenizer relying on NameTag"
    :tags ["perl"]))
(hoarder:record "sheratan17/findbot.github.io"
  '(:description "Search malware/spam/injected file. Originally from abuseat.org"
    :tags ["perl"]))
(hoarder:record "nickandrew/xbee-controller"
  '(:description "Daemon to control a network of XBee devices through TCP"
    :tags ["perl"]))
(hoarder:record "abbypan/Novel-Robot-Parser"
  '(:description "get novel / bbs content from website,  小说站点解析引擎"
    :tags ["perl"]))
(hoarder:record "jpducassou/perl-WebService-CDNetworks-Purge"
  '(:description "WebService::CDNetworks::Purge - A client for the CDNetworks's Cache Flush Open API"
    :tags ["cache" "cache-service" "cpan" "perl" "perl5"]))
(hoarder:record "hohahuho/Vim-Perl"
  '(:description "Personal gVim configuration for Perl programming"
    :tags ["vim script" "gvim" "perl" "personal" "vimrc" "vimrc-settings" "windows"]))
(hoarder:record "worthmine/Text-MeCab-More"
  '(:description "parsing more lazy"
    :tags ["makefile" "mecab" "perl"]))
(hoarder:record "tusooa/scripts"
  '(:description "风儿和其它的一些东西"
    :tags ["mypcqq" "perl" "perl5" "qq" "smartqq" "windy"]))
(hoarder:record "hippietrail/wiktdump"
  '(:description "Extract information straight from a Mediawiki XML dump file"
    :tags ["perl"]))
(hoarder:record "OTRS/GeneralCatalog"
  '(:description "The GeneralCatalog is a reference table tool. You can add new items or update existing items in the Admin-Interface."
    :tags ["perl"]))
(hoarder:record "martinweck/photoadmin"
  '(:description "Software to search photos and to display them in a photo show"
    :tags ["perl"]))
(hoarder:record "kjhermans/purebred_ill"
  '(:description "Purebred Ill is an anagram of perl builder. It is an alternative for make."
    :tags ["perl"]))
(hoarder:record "Tux/Tk-Clock"
  '(:description "Clock widget for Perl/Tk with analog and/or digital display"
    :tags ["perl"]))
(hoarder:record "FelixJacobi/ipv6chdetectd"
  '(:description "IPv6 change detection daemon"
    :tags ["perl"]))
(hoarder:record "OCSInventory-NG/UnixAgent"
  '(:description "This is the OCS unified agent for Unix operating systems"
    :tags ["perl" "agent" "deployment" "ocs" "ocs-deployment" "ocs-inventory" "ocsinventory" "unix"]))
(hoarder:record "timbunce/devel-nytprof"
  '(:description "Perl Devel::NYTProf"
    :tags ["perl"]))
(hoarder:record "JohnMarkOckerbloom/ftl"
  '(:description "Forward to Libraries service (selected code and data)"
    :tags ["perl"]))
(hoarder:record "bcattaneo/irssi-scripts"
  '(:description "My collection of irssi scripts"
    :tags ["perl"]))
(hoarder:record "metamorfosec/methc"
  '(:description "Metamorfosec Hash Checker (methc) is a command line tool to generate and verify a hash."
    :tags ["perl"]))
(hoarder:record "wikimedia/mediawiki-extensions-timeline"
  '(:description "Github mirror of MediaWiki extension timeline - our actual code is hosted with Gerrit (please see https://www.mediawiki.org/wiki/Developer_access for contributing)"
    :tags ["perl"]))
(hoarder:record "jreisinger/have-done"
  '(:tags ["perl"]))
(hoarder:record "trizen/Math-AnyNum"
  '(:description "Transparent interface to Math::GMPq, Math::GMPz, Math::MPFR and Math::MPC."
    :tags ["perl" "gmp" "math" "math-anynum" "mpc" "mpfr" "perl-module" "perl5" "perl5-module" "transparent-interface"]))
(hoarder:record "holygeek/git-number"
  '(:description "Use numbers for dealing with files in git"
    :tags ["perl"]))
(hoarder:record "fockjef/magic-tag"
  '(:tags ["perl"]))
(hoarder:record "abars/YoloKerasFaceDetection"
  '(:description "Face Detection using YoloKeras"
    :tags ["perl"]))
(hoarder:record "skybet/informix-helpers"
  '(:tags ["perl"]))
(hoarder:record "mylesieong/myles-mobi"
  '(:description "My personal blog site"
    :tags ["perl"]))
(hoarder:record "phillid/idalius"
  '(:description "Extensible IRC bot born out of 🎺🎷🎺 emoji"
    :tags ["perl"]))
(hoarder:record "mlawren/p5-Proquint"
  '(:description "Convert to and from proquints - https://arxiv.org/html/0901.4016"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-Nodejs-Util"
  '(:tags ["perl"]))
(hoarder:record "aferreira/cpan-Module-Spec"
  '(:description "Module::Spec - Load modules based on specifications"
    :tags ["perl"]))
(hoarder:record "slegga/midi_record_compare"
  '(:description "Compare recorded midi with a fasit."
    :tags ["perl"]))
(hoarder:record "jdinan/smugmug-backup"
  '(:description "Simple program for maintaining a local backup of files in a smugmug account"
    :tags ["perl"]))
(hoarder:record "jeremy-habit/Metasya"
  '(:description "Library allowing the management of embarked metadatas on diverse types of files, to manage the import of metadatas in an information system and the synchronization of the data between the information system and files with exiftool."
    :tags ["perl"]))
(hoarder:record "sndrsmnk/irssibot"
  '(:description "IRC bot implementation based on irssi Perl scripting"
    :tags ["perl"]))
(hoarder:record "pdbogen/twipper"
  '(:description "A small perl-based CLI twitter client; works well with conky integration for reading, at least for my purposes."
    :tags ["perl"]))
(hoarder:record "plack/Plack-Middleware-Session"
  '(:description "A very minimalist session library for Plack"
    :tags ["perl"]))
(hoarder:record "mr-mixas/Hash-Merge-Extra.pm"
  '(:description "Collection of extra behaviors for Hash::Merge"
    :tags ["perl" "data-structrues" "nested-structures" "perl-module"]))
(hoarder:record "ericvaandering/DocDB"
  '(:description "Working repository for DocDB"
    :tags ["perl"]))
(hoarder:record "abw/Template2"
  '(:description "Perl Template Toolkit v2"
    :tags ["perl"]))
(hoarder:record "meamit/nepali-text-to-speech"
  '(:description "A light weight Nepali text to speech"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-Patch-rand-Secure"
  '(:tags ["perl"]))
(hoarder:record "JohnMarkOckerbloom/onlinebooks"
  '(:description "Selected code and data for The Online Books Page and related applications"
    :tags ["perl"]))
(hoarder:record "gonzoua/vicq"
  '(:description "Command-line ICQ client"
    :tags ["perl"]))
(hoarder:record "Tux/Text-OutputFilter"
  '(:description "Text::OutputFilter - Filter and modify output in perl5"
    :tags ["perl"]))
(hoarder:record "Tux/Text-CSV_XS"
  '(:description "perl5 module for composition and decomposition of comma-separated values"
    :tags ["perl"]))
(hoarder:record "Tux/System-Info"
  '(:description "System::Info - basic information about the system"
    :tags ["perl"]))
(hoarder:record "Grinnz/Perl-Critic-Freenode"
  '(:description "Perl::Critic::Freenode - Perl::Critic policies inspired by #perl on freenode IRC"
    :tags ["perl"]))
(hoarder:record "squentin/gmusicbrowser"
  '(:description "jukebox for large collections of music"
    :tags ["perl"]))
(hoarder:record "aboettger/gmusicbrowser-layouts"
  '(:description "Layouts for gmusicbrowser"
    :tags ["perl"]))
(hoarder:record "mklinga/gmusicbrowser-plugins"
  '(:tags ["perl"]))
(hoarder:record "bor/gmb-plugins"
  '(:description "gmusicbrowser extra plugins"
    :tags ["perl"]))
(hoarder:record "wakaba/sarze"
  '(:tags ["perl"]))
(hoarder:record "krakissi/rat"
  '(:description "Store links for later."
    :tags ["perl"]))
(hoarder:record "beatnik/exfil"
  '(:description "Some Exfil PoC scripts in Perl"
    :tags ["perl"]))
(hoarder:record "teleshoes/net"
  '(:tags ["perl"]))
(hoarder:record "avast/Stor"
  '(:description "HTTP API for SHA256 objects"
    :tags ["perl"]))
(hoarder:record "wilx/cite-website"
  '(:description "Simple Perl script to generate CSL YAML entry from given URL."
    :tags ["perl"]))
(hoarder:record "jimbolaya/1byone-myrecords.txt-converter"
  '(:description "Simple perl script to convert myrecords.txt to a csv."
    :tags ["perl"]))
(hoarder:record "fidian/webpage"
  '(:description "Webpage robot that serves as a gateway between email and the web"
    :tags ["perl"]))
(hoarder:record "jmacdotorg/plerd"
  '(:description "Ultralight Dropbox-friendly Markdown-based blogging."
    :tags ["perl"]))
(hoarder:record "Pear-Trading/Foodloop-Server"
  '(:tags ["perl"]))
(hoarder:record "dk/Prima"
  '(:tags ["perl"]))
(hoarder:record "s-andrews/AutoFTP"
  '(:description "An automated system for creating and managing temporary FTP sites"
    :tags ["perl"]))
(hoarder:record "Tux/Release-Checklist"
  '(:description "A checklist for releasing a CPAN module"
    :tags ["perl"]))
(hoarder:record "ctrlo/admonitor"
  '(:description "Server monitoring software"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=Bnf0HIpZlZM][Andy Beveraly: Admonitor, Simple Server Monitoring - YouTube]]"))
(hoarder:record "yanick/Class-Base"
  '(:description "The Class::Base Perl module"
    :tags ["perl"]))
(hoarder:record "xsawyerx/web-scraping"
  '(:description "Web scraping scripts"
    :tags ["perl"]))
(hoarder:record "ology/Music"
  '(:description "Music theory, algorithmic composition and experimentation"
    :tags ["perl"]))
(hoarder:record "ageldama/p5-timer-and-sig"
  '(:tags ["perl"]))
(hoarder:record "pavelsr/moo-google"
  '(:description "Perl library for working with all google services. Moose-based, uses Google API discovery"
    :tags ["google-apis" "perl"]))
(hoarder:record "ivanych/Test-BDD-Cucumber-Definitions"
  '(:description "Test::BDD::Definitions - a collection of step file definitions for Test Driven Development"
    :tags ["perl"]))
(hoarder:record "git://g.blicky.net/vndb.git"
  '(:depth nil))
(hoarder:record "taskboy3000/finke"
  '(:description "A protyping tool for card games"
    :tags ["perl"]))
(hoarder:record "jamhed/anki"
  '(:description "Anki flashcard tools"
    :tags ["perl"]))
(hoarder:record "shootnix/activerecord-simple"
  '(:description "ActiveRecord::Simple - Simple to use lightweight implementation of ActiveRecord pattern."
    :tags ["perl"]))
(hoarder:record "tomasz-warniello/Learnit"
  '(:description "Small app for reviewing phrases"
    :tags ["perl"]))
(hoarder:record "kuerbis/Term-TablePrint"
  '(:tags ["perl"]))
(hoarder:record "Corion/WWW-Mechanize-Chrome"
  '(:description "automate the Chrome browser"
    :tags ["chrome" "mechanize" "perl"]))
(hoarder:record "kuerbis/Term-Choose"
  '(:tags ["perl"]))
(hoarder:record "thorko/buildserver"
  '(:description "Build server - to compile software from source"
    :tags ["perl"]))
(hoarder:record "whohas/whohas"
  '(:tags ["perl"]))
(hoarder:record "faelin/text-summarizer"
  '(:description "Text auto-summarizer, built to incorporate the google Word2Vec system"
    :tags ["perl"]))
(hoarder:record "johnclute/EpubConvert"
  '(:description "Create epub files from text files from the internet."
    :tags ["perl"]))
(hoarder:record "jnse/tabbedex"
  '(:description "My personal hacks on top of the popular urxvt tabbedex extension."
    :tags ["perl"]))
(hoarder:record "abbypan/Novel-Robot"
  '(:description "download novel / forum thread, 小说/论坛下载器"
    :tags ["perl"]))
(hoarder:record "barefootcoder/music"
  '(:description "scripts to deal with my music collection"
    :tags ["perl"]))
(hoarder:record "bitboulder/plot.pl"
  '(:description "Small script to run gnuplot with piped data"
    :tags ["perl"]))
(hoarder:record "phdeniel/kvsns"
  '(:description "Implements a POSIX Name Space using the services of a Key-Value Store"
    :tags ["perl"]))
(hoarder:record "alid-wise/ghpower"
  '(:description "Бюджетная система учета электроэнергии в коттеджном поселке"
    :tags ["perl"]))
(hoarder:record "kouya/snowbox-perl"
  '(:description "Snowbox perl version. Ancient history!"
    :tags ["perl"]))
(hoarder:record "robrwo/Plack-Middleware-TimeOverHTTP"
  '(:description "time over HTTP middleware"
    :tags ["perl"]))
(hoarder:record "HayoBaan/File-stat-Extra"
  '(:description "An extension of the File::stat module, provides additional methods."
    :tags ["perl"]))
(hoarder:record "HayoBaan/File-Find-utf8"
  '(:description "Fully UTF-8 aware File::Find"
    :tags ["perl"]))
(hoarder:record "HayoBaan/Cwd-utf8"
  '(:description "Fully UTF-8 aware Cwd"
    :tags ["perl"]))
(hoarder:record "kjpye/P6-MIDI"
  '(:tags ["perl6"]))
(hoarder:record "asivapra/Singh"
  '(:description "Paul Singh's CGI to scrape remote websites. "
    :tags ["perl"]))
(hoarder:record "ronsavage/Regexp-Parsertron"
  '(:description "Parse a Perl regexp into a Tree"
    :tags ["perl"]))
(hoarder:record "dushoff/autorefs"
  '(:description "Collect reference information based on identifiers and make .bib files"
    :tags ["perl"]))
(hoarder:record "jeffmt/sakila"
  '(:description "Catalyst web application with MySQL backend."
    :tags ["catalyst" "dbix" "mysql" "perl" "vagrant"]))
(hoarder:record "BriseKael/Pixiv"
  '(:description "A perl to grab images from Pixiv 1~50 daily list. Only use in MacOs."
    :tags ["perl" "mysql"]))
(hoarder:record "fgouget/typos"
  '(:description "Scans files for common misspellings and case errors. Unlike real spellcheckers it is usable on source code."
    :tags ["perl"]))
(hoarder:record "lucastheisen/footprintless"
  '(:tags ["perl"]))
(hoarder:record "mschilli/usarundbrief"
  '(:description "Content of usarundbrief.com"
    :tags ["perl"]))
(hoarder:record "maxmind/App-GHPT"
  '(:description "A command line tool to simplify using Github and Pivotal Tracker for an agile workflow"
    :tags ["perl"]))
(hoarder:record "kjetilk/URI-NamespaceMap"
  '(:description "Managing a collection of namespaces"
    :tags ["perl"]))
(hoarder:record "acceso/X-Chat-selective-query"
  '(:tags ["perl"]))
(hoarder:record "schleprock/gitScripts"
  '(:tags ["perl"]))
(hoarder:record "isbheis/inetsim-ext"
  '(:description "Extend inetsim with interesting features, like dns white list, ip-redirection with kernel above 3.5. more functionalites are being developed "
    :tags ["perl"]))
(hoarder:record "marcbradshaw/Parallel-PreForkManager"
  '(:description "A manager for pre-forked child worker processes"
    :tags ["perl"]))
(hoarder:record "CelestianGC/FG--AD-D-Rules-Core-Importer"
  '(:description "Perl script to import AD&D Core Rules HTML files into something Fantasy Grounds can present (Story/books)"
    :tags ["perl"]))
(hoarder:record "petdance/scraps"
  '(:description "My code junk drawer"
    :tags ["perl"]))
(hoarder:record "rebelsky/samr-utils"
  '(:description "A variety of utility scripts that I use. "
    :tags ["perl"]))
(hoarder:record "pitamatein/perlb"
  '(:description "Fork of WebBBS."
    :tags ["perl" "bbs"]))
(hoarder:record "taskboy3000/otra"
  '(:description "A desktop RSS reader written in Perl/Tk"
    :tags ["perl"]))
(hoarder:record "asivapra/sdm"
  '(:description "Structured Data Markup"
    :tags ["perl"]))
(hoarder:record "yanick/DBIx-NoSQL-Store-Manager"
  '(:description "Stash Moose objects in a DBIx::NoSQL SQLite database"
    :tags ["perl"]))
(hoarder:record "vutral/blocklist"
  '(:description "blocklist scripts"
    :tags ["perl" "blocklist" "firewall" "ipfw" "ipset" "netfilter"]))
(hoarder:record "voice4net/freeswitch-scripts"
  '(:tags ["perl"]))
(hoarder:record "stargo/irssi2telegram"
  '(:description "Irssi to Telegram bridge"
    :tags ["perl"]))
(hoarder:record "icymoon/useless_tools"
  '(:description "Some tools that are used in daily working"
    :tags ["perl"]))
(hoarder:record "islandhopper81/UtilSY"
  '(:description "Set of general perl functions that I commonly use"
    :tags ["perl"]))
(hoarder:record "saifalcigeary/faceboker"
  '(:description "perl saif.pl mail wordlist"
    :tags ["perl"]))
(hoarder:record "jalvo2014/eventaud"
  '(:description "ITM6 Analyze and Report on Situation Status History table"
    :tags ["perl"]))
(hoarder:record "hjmangalam/parsyncfp"
  '(:description "follow-on to parsync (parallel rsync) with better startup perf"
    :tags ["perl"]))
(hoarder:record "starkandwayne/genesis"
  '(:description "A BOSH Deployment Paradigm"
    :tags ["perl"]))
(hoarder:record "xiujiao/vault-deployments"
  '(:tags ["perl"]))
(hoarder:record "mchehab/perltwiki"
  '(:description "Scripts to automatize Twiki's reports"
    :tags ["perl"]))
(hoarder:record "ghelfter/portfolio-site"
  '(:tags ["perl"]))
(hoarder:record "alexbigkid/exif_rename"
  '(:description "rename images according to date, time and camera model"
    :tags ["perl"]))
(hoarder:record "usit-gd/nivlheim"
  '(:description "A system for collecting key information from all your servers and presenting it through an easy-to-use web GUI with search and browse functions. The previous generation of this system is used in production at the University of Oslo, Norway."
    :tags ["perl"]))
(hoarder:record "Corion/promises-ratelimiter"
  '(:description "rate limit paths through promises"
    :tags ["perl"]))
(hoarder:record "rocky/Perl-Devel-Trepan"
  '(:description "Perl port of trepanning debugger "
    :tags ["perl"]))
(hoarder:record "maxmind/Net-Works"
  '(:description "Sane APIs for IP addresses and networks"
    :tags ["perl"]))
(hoarder:record "timbunce/WebAPI-DBIC"
  '(:description "A composable RESTful JSON API to DBIx::Class schemas using roles and Web::Machine. PLEASE NOTE This module is no longer under active development. If you're interested in helping to develop or maintain it please fork it."
    :tags ["perl"]))
(hoarder:record "gryphonshafer/Bible-OBML-Gateway"
  '(:description "Bible Gateway content conversion to Open Bible Markup Language (OBML)"
    :tags ["perl"]))
(hoarder:record "gryphonshafer/Bible-OBML"
  '(:description "Open Bible Markup Language (OBML) parser and renderer"
    :tags ["perl"]))
(hoarder:record "ykHakata/bokko"
  '(:description "短めのスクリプトを集めました"
    :tags ["perl"]))
(hoarder:record "faraco/p5-pong"
  '(:description "My Perl 5 + SDL Pong game."
    :tags ["arcade" "arcade-game" "game" "graphics" "perl" "perl5" "pong" "pong-game" "sdl"]))
(hoarder:record "CaptDaags/PerlScripts"
  '(:description "Pandora's box of Perl scripts - Use at your own risk - Intended for my us but happy to share"
    :tags ["perl"]))
(hoarder:record "libwww-perl/WWW-Mechanize"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-alias-module"
  '(:tags ["perl"]))
(hoarder:record "blreams/track_port"
  '(:tags ["perl"]))
(hoarder:record "Hugmeir/p5-nak"
  '(:description "Superthin libsodium wrapper"
    :tags ["perl"]))
(hoarder:record "syxanash/TODOWidget"
  '(:description "a TODO widget for GeekTool which interacts with  Reminder app"
    :tags ["perl"]))
(hoarder:record "yomon8/xsvutils"
  '(:description "Utilities for handling separated value data"
    :tags ["perl"]))
(hoarder:record "doherty/utf8-all"
  '(:description "turn on Unicode - all of it"
    :tags ["perl"]))
(hoarder:record "ReneNyffenegger/perl-Csound"
  '(:description "Create Csound scores, instruments and orchestras."
    :tags ["perl"]))
(hoarder:record "HayoBaan/File-Basename-Extra"
  '(:description "Extension to File::Basename, adds named access to file parts and handling of filename suffixes"
    :tags ["perl"]))
(hoarder:record "skaji/Carl"
  '(:tags ["perl"]))
(hoarder:record "skaji/Perl-PrereqDistributionGatherer"
  '(:tags ["perl"]))
(hoarder:record "aaronpriven/List-Flat-pm"
  '(:description "Perl functions to flatten a structure of array references"
    :tags ["perl"]
    :memo "[[https://metacpan.org/pod/List::Flat][List::Flat - Functions to flatten a structure of array references - metacpan.org]]"))
(hoarder:record "briandfoy/http-simplelinkchecker"
  '(:description "Perl module to check HTTP statuses"
    :tags ["http" "perl"]))
(hoarder:record "rra/net-duo"
  '(:description "API for Duo multifactor authentication service"
    :tags ["perl"]))
(hoarder:record "mohawk2/Test-Snapshot"
  '(:description "Snapshot-based testing for Perl 5"
    :tags ["perl"]))
(hoarder:record "ergoproxyDNS/Moddex"
  '(:description "Moddex, monero auto-miner"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-WordLists-CryptoCurrency-Catalog"
  '(:tags ["perl"]))
(hoarder:record "tjhope89/TechAlerts"
  '(:description "Parse and load TechAlerts"
    :tags ["perl"]))
(hoarder:record "patternMiner/rest_ws"
  '(:description "Perl based REST webservice."
    :tags ["perl"]))
(hoarder:record "zelurker/freebox"
  '(:description "Mon interface pour remplacer la freebox, basée sur mplayer/mplayer2, supporte cds, podcasts, youtube, chaines dvb, vidéos sur le réseau, etc..."
    :tags ["perl"]))
(hoarder:record "njdbickhart/perl_toolchain"
  '(:description "Backup for my personal perl scripts"
    :tags ["perl"]))
(hoarder:record "outtaspace/jip_daemon"
  '(:description "Perl module: JIP::Daemon - daemonize server process"
    :tags ["perl"]))
(hoarder:record "nonnymoose/xsr"
  '(:description "X Steps Recorder"
    :tags ["perl"]))
(hoarder:record "openresty/opsboy"
  '(:description "A rule-based sysadmin tool that helps setting up complex environment for blank machines"
    :tags ["perl"]))
(hoarder:record "ManocLabs/manoc"
  '(:description "Network monitoring and reporting tool"
    :tags ["perl"]))
(hoarder:record "arioux/XL-Parser"
  '(:description "Part of the XL-Toolkit, XL-Parser provides a bunch of functions for data extraction and analysis."
    :tags ["perl"]))
(hoarder:record "byterock/database-accessor"
  '(:description "A cross database accessor platform"
    :tags ["perl"]))
(hoarder:record "Rhialto/twiXt"
  '(:description "TwiXt - Templated Widgets for Xt"
    :tags ["perl"]))
(hoarder:record "bondar-pavel/rpi-tank"
  '(:description "Raspberry Pi Tanks"
    :tags ["perl"]))
(hoarder:record "foutaise/rrdreel"
  '(:description "Live data visualisation framework"
    :tags ["perl"]))
(hoarder:record "MauricioMiret/admin_move_table"
  '(:description "Perl script to automate the db2 sysproc.admin_move_table procedure "
    :tags ["perl"]))
(hoarder:record "domm/CtrlO-Crypt-XkcdPassword"
  '(:description "Yet another XKCD style password generator"
    :tags ["perl"]))
(hoarder:record "metabrainz/CAA-indexer"
  '(:description "A bot that watches MusicBrainz for changes and updates Cover Art Archive indexes"
    :tags ["perl"]))
(hoarder:record "fayland/perl-net-github"
  '(:description "Perl interface to GitHub"
    :tags ["perl"]))
(hoarder:record "Leont/file-slurp-sane"
  '(:description " A simple, sane and efficient file slurper"
    :tags ["perl"]))
(hoarder:record "Corion/Future-Scheduler"
  '(:description "provide helper functions for Future"
    :tags ["perl"]))
(hoarder:record "DaveSailors/FileMgr"
  '(:tags ["perl"]))
(hoarder:record "kuerbis/App-DBBrowser"
  '(:tags ["perl"]))
(hoarder:record "FGasper/p5-IO-Framed"
  '(:description "CPAN’s IO::Framed"
    :tags ["perl"]))
(hoarder:record "FGasper/p5-Net-WAMP"
  '(:description "CPAN’s Net::WAMP"
    :tags ["perl"]))
(hoarder:record "KzGaming/GM-Command-Plugins"
  '(:description "Project-K@Z"
    :tags ["perl"]))
(hoarder:record "dmgerman/cregit-utils"
  '(:tags ["perl"]))
(hoarder:record "ashishtiwari1993/perl-chat"
  '(:description "Simple perl chat script, allows bidirectional communication over the tcp / ip connection using socket. "
    :tags ["perl"]))
(hoarder:record "xic8hix/mock-server-openapi-3"
  '(:description "Mock server from Swagger2 and OpenAPI(OAS)"
    :tags ["perl"]))
(hoarder:record "kasei/attean"
  '(:description "A Perl Semantic Web Framework"
    :tags ["perl"]))
(hoarder:record "Zbot21/Raw-Photo-Scripts"
  '(:tags ["perl"]))
(hoarder:record "emceelam/Multi-Chat-Perl"
  '(:description "socket-based multi-client chat written with Perl code"
    :tags ["perl"]))
(hoarder:record "ccakes/p5-app-monastery"
  '(:description "Perl Language Server"
    :tags ["perl"]))
(hoarder:record "http://git.ieval.ro/git/convert-base91.git"
  '(:memo "https://metacpan.org/pod/Convert::Base91"))
(hoarder:record "PaulGWebster/p5-Data-Random-Flexible"
  '(:description "A more flexible library for random's"
    :tags ["makefile" "perl"]
    :memo "https://metacpan.org/pod/Data::Random::Flexible"))
(hoarder:record "git://git.imager.perl.org/imager.git"
  '(:memo "https://metacpan.org/pod/Imager"))
(hoarder:record "mr-mixas/Struct-Diff-MergePatch.pm"
  '(:description "JSON Merge Patch (rfc7396) for perl structures"
    :tags ["perl" "diff" "json-merge-patch" "nested-structures" "perl-module" "rfc7396"]
    :memo "https://metacpan.org/pod/Struct::Diff::MergePatch"))
(hoarder:record "tomk3003/mojo-ioloop-thread"
  '(:description "Threaded Replacement for Mojo::IOLoop::Subprocess"
    :tags ["perl 6" "perl"]
    :memo "https://metacpan.org/pod/Mojo::IOLoop::Thread"))
(hoarder:record "jhthorsen/mojolicious-plugin-lazyimage"
  '(:description "Lazy load images"
    :tags ["perl"]
    :memo "https://metacpan.org/pod/Mojolicious::Plugin::LazyImage"))
(hoarder:record "perlancar/perl-Pod-From-Acme-CPANModules"
  '(:tags ["perl"]))
(hoarder:record "dbsrgits/sql-translator"
  '(:description "SQL::Translator (SQLFairy)"
    :tags ["perl"]))
(hoarder:record "kjetilk/p5-rdf-linkeddata-rwhypermedia"
  '(:description "Experimental read-write hypermedia support for Linked Data"
    :tags ["perl"]))
(hoarder:record "rosorio/misc-tools"
  '(:tags ["perl" "fosdem"]))
(hoarder:record "huangzhongzhang/Mojo-Webqq-Docker"
  '(:description "使用 docker 启动 Mojo-Webqq。"
    :tags ["perl"]))
(hoarder:record "huangzhongzhang/Mojo-Webqq-Scripts"
  '(:description "Mojo-Webqq 使用脚本。"
    :tags ["perl" "mojo-webqq"]))
(hoarder:record "liosha/scripts"
  '(:description "simple one-file scripts"
    :tags ["perl"]))
(hoarder:record "dankogai/p5-encode"
  '(:description "Encode - character encodings (for Perl 5.8 or better)"
    :tags ["perl"]))
(hoarder:record "mr-mixas/Struct-Path-JsonPointer.pm"
  '(:description " JsonPointer (rfc6901) syntax frontend for Struct::Path"
    :tags ["perl" "data-structures" "json-pointer" "nested-structures" "perl-module" "rfc6901"]))
(hoarder:record "ocbroadband/localauth"
  '(:description "Local Authentication"
    :tags ["perl"]))
(hoarder:record "vadz/upmake"
  '(:description "Makefile::Update CPAN module: update sources in make- or project files."
    :tags ["perl"]))
(hoarder:record "lookee/ffdup"
  '(:description "Portable ultra fast light duplicate files finder written in Perl released as Free Software"
    :tags ["perl"]))
(hoarder:record "PerlPkgConfig/perl-PkgConfig"
  '(:description "pure-perl core-only pkg-config replacement"
    :tags ["perl"]))
(hoarder:record "huskyproject/pntstr"
  '(:tags ["perl"]))
(hoarder:record "damil/SQL-Abstract-More"
  '(:description "extension to SQL-Abstract"
    :tags ["perl"]))
(hoarder:record "Bertrandbenj/clickbot"
  '(:description "Click bot for elvenar"
    :tags ["perl"]))
(hoarder:record "softctrl/MovieLens_Data"
  '(:description "Well i will try to put all founded data here"
    :tags ["perl"]))
(hoarder:record "WendelHime/report_html_db"
  '(:description "Projeto de iniciação científica voltado ao desenvolvimento de um componente para geração de sítios web baseado nas anotações da plataforma EGene2"
    :tags ["catalyst" "egene2" "iniciacao-cientifica" "perl" "webservice" "website"]))
(hoarder:record "pavelrn/NetManage"
  '(:description "A tool to configure management protocols on network-attached devices"
    :tags ["perl"]))
(hoarder:record "plockaby/clone"
  '(:description "A system deployment tool."
    :tags ["perl"]))
(hoarder:record "vphantom/XML-LibXML-Proxy"
  '(:description "Force LibXML to use a proxy for HTTP/HTTPS external entities"
    :tags ["perl" "libxml" "perl-module" "proxy"]))
(hoarder:record "patschbo/StorMan"
  '(:description "Storage Manager (SAN)"
    :tags ["btrfs" "ext4" "iscsi" "perl" "storage" "storage-manager"]))
(hoarder:record "atomia/atomiadns"
  '(:description "Atomia DNS"
    :tags ["perl"]))
(hoarder:record "mswiecic/rawCleaner"
  '(:description "Clean my photo folders"
    :tags ["perl"]))
(hoarder:record "jeroenflvr/InfluxXymond"
  '(:description "Xymon sample perl worker that puts memory stats into an Influx db"
    :tags ["perl"]))
(hoarder:record "rmp/libclearpress-perl"
  '(:description "ClearPress"
    :tags ["perl"]))
(hoarder:record "Ensembl/cpanfiles"
  '(:description "A collection of additional cpanfiles that have no natural home with any project"
    :tags ["perl"]))
(hoarder:record "Corion/Future-Limiter"
  '(:description "Impose rate and resource limits"
    :tags ["perl"]))
(hoarder:record "OTRS/FAQ"
  '(:description "An FAQ module to manage FAQs and also used as knowledge base."
    :tags ["perl"]))
(hoarder:record "stefansbv/Tpda3"
  '(:description "Tiny Perl Database Application with Perl Tk (and experimental wxPerl) front-end."
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-cpanmodules"
  '(:tags ["perl"]))
(hoarder:record "tadzik/App-Socialdump"
  '(:tags ["perl"]))
(hoarder:record "aerjotl/wywrota-sample"
  '(:description "Dedicated Content Management System"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-genpw"
  '(:tags ["perl"]))
(hoarder:record "darold/pgFormatter"
  '(:description "A PostgreSQL SQL syntax beautifier that can work as a console program or as a CGI. On-line demo site at http://sqlformat.darold.net/"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-Task-CryptoExchange"
  '(:tags ["perl"]))
(hoarder:record "scVENUS/PeekabooAV-amavisd"
  '(:description "Fork of AMaViSd with additional patches for PeekabooAV."
    :tags ["perl" "amavisd" "anti-virus" "peekabooav"]))
(hoarder:record "bigio/rdpgui"
  '(:description "Rdp simple gui"
    :tags ["perl"]))
(hoarder:record "ChipwizBen/TheMachine"
  '(:tags ["perl"]))
(hoarder:record "architek/dnssec"
  '(:description "Dnssec misc tools"
    :tags ["perl"]))
(hoarder:record "vitalif/VMXTemplate"
  '(:description "Fast and powerful PHP and Perl template engine"
    :tags ["perl"]))
(hoarder:record "fusiondirectory/argonaut"
  '(:description "Communication layer between various software and the JSON-RPC Argonaut Server."
    :tags ["argonaut" "argonaut-fai-mirror" "argonaut-fuse" "argonaut-server" "argonaut-user-reminder" "client" "dovecot" "fai" "fai-server" "fusiondirectory" "json-rpc" "opsi" "perl" "quota" "samba-share" "server" "systems-management"]))
(hoarder:record "sni/Monitoring-Livestatus"
  '(:description "Livestatus Perl API to access runtime data from Nagios, Icinga and Shinken."
    :tags ["perl"]))
(hoarder:record "d-ash/perlpp"
  '(:description "PerlPP: Perl preprocessor"
    :tags ["perl"]))
(hoarder:record "jkister/Sys-HostAddr"
  '(:description "Provides perl methods to reteive IP address and interface information about a local host."
    :tags ["perl"]))
(hoarder:record "ScottDWebster/SplitChars"
  '(:description "Splits a text file into a csv file with each chatacter in a separate cell."
    :tags ["perl"]))
(hoarder:record "bfaist/webservice-musicbrainz"
  '(:description "Interface to Musicbrainz.org webservice API"
    :tags ["api-client" "mojolicious" "musicbrainz" "perl"]))
(hoarder:record "afiskon/p5-vk-mp3"
  '(:description "VK::MP3 - searches for mp3 on vkontakte.ru, also known as vk.com (ABANDONED!)"
    :tags ["perl"]))
(hoarder:record "lemonsqueeze/gitlogpretty"
  '(:description "Pretty git log, one commit per line with colors"
    :tags ["perl"]))
(hoarder:record "katahide100/cgi3"
  '(:tags ["perl"]))
(hoarder:record "aimdotsh/aim"
  '(:description "All In MySQL & Auto Install MySQL"
    :tags ["perl" "auto-install-mysql" "install-mysql" "mysql" "mysql-auto-slave" "slave"]))
(hoarder:record "jose1711/editphotos"
  '(:description "Tool which displays thumbnails of JPEG files in a graphical interface and enables the user to alter the Orientation EXIF tag (without actually rotating the pictures) and to add or edit comments within the files. (archived from sf.net)"
    :tags ["perl"]))
(hoarder:record "jbarrett/EvilHomer"
  '(:description "Another bad IRC bot"
    :tags ["perl"]))
(hoarder:record "wakaba/formatter"
  '(:tags ["perl"]))
(hoarder:record "DjangoChained/comanche"
  '(:description "Serveur HTTP en Perl au nom un poil inspiré d'Apache."
    :tags ["perl"]))
(hoarder:record "wazo-pbx/xivo-monitoring"
  '(:description ":chart_with_upwards_trend: Monit and Munin configuration for Wazo"
    :tags ["perl"]))
(hoarder:record "horacekj/apophis-old-web"
  '(:description "Apophis` personal web page."
    :tags ["perl"]))
(hoarder:record "wilyarti/nettop"
  '(:description "Simple perl curses based network grapher "
    :tags ["perl"]))
(hoarder:record "aryanrtm/Auto-SQLi"
  '(:description "Automated SQL injection Exploit"
    :tags ["perl"]))
(hoarder:record "naturalist/pod-markdown-github"
  '(:description "Pod::Markdown::Github"
    :tags ["perl"]))
(hoarder:record "pflanze/chj-bin"
  '(:description "My various command line scripts that I'm using on my Debian desktops and servers"
    :tags ["perl"]))
(hoarder:record "AlexandreFrolov/Net-Ethereum"
  '(:description "Perl Framework for Ethereum JSON RPC API."
    :tags ["perl"]))
(hoarder:record "major/MySQLTuner-perl"
  '(:description "MySQLTuner is a script written in Perl that will assist you with your MySQL configuration and make recommendations for increased performance and stability."
    :tags ["perl"]))
(hoarder:record "nyagoking/AutoCookieCliker"
  '(:description "Auto clicker for CookieClicker"
    :tags ["perl"]))
(hoarder:record "dlgoodr/podcast"
  '(:tags ["perl"]))
(hoarder:record "DK-Hostmaster/dsu-demo-client-mojolicious"
  '(:description "Basic demo client for the DK Hostmaster DSU (DS Upload) service "
    :tags ["demo-client" "dk-hostmaster" "dns" "dnssec" "dsrecord" "mojolicious" "perl" "proprietary" "protocol"]))
(hoarder:record "kuerbis/Term-Choose-Util"
  '(:tags ["perl"]))
(hoarder:record "JJ/Test-Text"
  '(:description "A module for testing and doing metrics on normal text. As in books or novels. "
    :tags ["perl"]))
(hoarder:record "jensbin/todo-notify"
  '(:description "i3blocks todo.txt notifier"
    :tags ["perl"]))
(hoarder:record "anozdba/processSkeleton"
  '(:description "perl package to process a skeleton file to generate output"
    :tags ["perl"]))
(hoarder:record "Hugmeir/p5-crypt-sodium-nitrate"
  '(:description "Superthin libsodium wrapper"
    :tags ["perl"]))
(hoarder:record "ElvishArtisan/x11vnc-auto"
  '(:description "Enable a VNC login for display :0"
    :tags ["perl"]))
(hoarder:record "kentnl-gentoo/Shell-EnvImporter"
  '(:description "CPAN History + Gentoo patches for Shell-EnvImporter"
    :tags ["perl"]))
(hoarder:record "aziugo/ssh_tunnels"
  '(:description "Simple script to enable ssh tunnels automatically using systemd"
    :tags ["perl"]))
(hoarder:record "wakaba/perl-promised-mysqld"
  '(:tags ["perl"]))
(hoarder:record "perlygatekeeper/glowing-robot"
  '(:tags ["perl"]))
(hoarder:record "chtimi59/git-template"
  '(:description "Use git as scaffold manager"
    :tags ["perl"]))
(hoarder:record "xic8hix/mock-server-rest-api"
  '(:description "Mock server from Swagger2(not now) and OpenAPI(OAS)"
    :tags ["perl"]))
(hoarder:record "rjust/defects4j"
  '(:description "A Database of Existing Faults to Enable Controlled Testing Studies for Java"
    :tags ["defects4j" "java" "perl"]))
(hoarder:record "rizen/Adventure"
  '(:description "A Perl single user game in the style of Zork based on the Parsely Adventures."
    :tags ["perl"]))
(hoarder:record "csmutz/pdfrate"
  '(:tags ["perl"]))
(hoarder:record "OTRS/ImportExport"
  '(:description "The Import/Export tool is a generic framework to import and export objects like tickets or config items in several formats like CSV or XML."
    :tags ["perl"]))
(hoarder:record "Corion/Archive-Warc"
  '(:description "read and write Web ARChive (WARC) files"
    :tags ["perl"]))
(hoarder:record "vti/text-apl"
  '(:description "Text::APL - non-blocking and streaming capable template engine"
    :tags ["perl"]))
(hoarder:record "spencertipping/ni"
  '(:description "APL for unstructured, streaming big data"
    :tags ["perl"]))
(hoarder:record "spencertipping/phi"
  '(:description "The world's finest vaporware"
    :tags ["perl"]))
(hoarder:record "http://git.shadowcat.co.uk/p5sagit/Import-Into.git"
  '(:memo "[[https://www.youtube.com/watch?v=kjnCBeezPCg][\"Modernising A Legacy Perl Application\" - Paul Johnson - YouTube]]
[[https://www.youtube.com/watch?v=wFXWV2yY7gE&t=46m05s][Lightning Talks Monday - YouTube]]"))
(hoarder:record "fstltna/bbs_utils"
  '(:description "Command-line utilities for the SBBS BBS software (1.0)"
    :tags ["perl"]))
(hoarder:record "AK6DN/xxdpdir"
  '(:description "DEC PDP-11 XXDP (DOS-11) file system manipulation program"
    :tags ["perl"]))
(hoarder:record "markov2/perl5-CPAN-Site"
  '(:description "local-site modules added to CPAN"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-SahUtils"
  '(:tags ["perl"]))
(hoarder:record "mojomojo/mojomojo"
  '(:description "A Catalyst & DBIx::Class powered Wiki. "
    :tags ["catalyst" "perl" "wiki"]))
(hoarder:record "rocky4546/script.xmltv.tvheadend"
  '(:description "scripts for generating xmltv.xml file supporting tvheadend genres"
    :tags ["perl"]))
(hoarder:record "gugod/junk"
  '(:description "some random junk"
    :tags ["perl"]))
(hoarder:record "brendangregg/wss"
  '(:description "Working Set Size tools"
    :tags ["perl"]))
(hoarder:record "TomTsagk/clumsy_engine"
  '(:description "a video game engine / scripting language"
    :tags ["perl"]))
(hoarder:record "wood9366/db-helper"
  '(:tags ["perl"]))
(hoarder:record "texh/cjk-unihan"
  '(:description "Node.js interface to Unihan database of CJK characters"
    :tags ["perl"]))
(hoarder:record "RandomDSdevel/PLibUDTU"
  '(:description "A Personal Library of Useful Development Tools and Utilities.  "
    :tags ["perl"]))
(hoarder:record "vpelss/twixt"
  '(:description "twixt"
    :tags ["perl"]))
(hoarder:record "karwiagent47/Perl-Protocol-Test"
  '(:description "script de troubleshooting Reseau Haut débit"
    :tags ["perl"]))
(hoarder:record "cngarrison/Catalyst-Model-Navigation"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-App-GoogleSearchUtils"
  '(:tags ["perl"]))
(hoarder:record "pberry/jwz-youtube"
  '(:description "A small collection of youtube related scripts by jwz (Yes, that jwz)"
    :tags ["perl"]))
(hoarder:record "arodland/CLI-Osprey"
  '(:tags ["perl" "cli" "moo"]
    :memo "[[https://www.youtube.com/watch?v=Pe9pEbUsYSY][Andrew Rodland - \"Fatpack it! Full featured Perl apps in a single file\" - YouTube]]"))
(hoarder:record "arodland/swr"
  '(:tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=Pe9pEbUsYSY][Andrew Rodland - \"Fatpack it! Full featured Perl apps in a single file\" - YouTube]]"))
(hoarder:record "zmughal/p5-Bash-Completion-Plugins-CLI-Osprey"
  '(:tags ["perl"]))
(hoarder:record "d3m0n4l3x/fatgirl"
  '(:description "A tool programmed by demonalex and dedicated to launching DHCP Denial of Service attack."
    :tags ["perl"]))
(hoarder:record "JRaspass/Plack-Middleware-Stats"
  '(:tags ["perl"]))
(hoarder:record "djordje-kasagic/ooo"
  '(:description "A terminal based one-on-one chat solution"
    :tags ["perl"]))
(hoarder:record "jmacdotorg/twitter-splitter"
  '(:description "Converts a textfile into Twitter-length bites, including a pager and hashtags."
    :tags ["perl"]))
(hoarder:record "cv-library/Perl-Format"
  '(:tags ["perl"]))
(hoarder:record "hoelzro/useful-scripts"
  '(:description "Scripts that I've found useful"
    :tags ["perl"]))
(hoarder:record "robrwo/Const-Exporter"
  '(:description "Declare constants to export in a declarative manner"
    :tags ["perl"]))
(hoarder:record "bagder/dns2doh"
  '(:description "DNS to DOH"
    :tags ["perl" "dns" "dns-over-https" "doh"]))
(hoarder:record "gugod/ppq"
  '(:tags ["perl"]))
(hoarder:record "Corion/IP-CloudHoster"
  '(:description "Determine VPSes and cloud hosting machines via their IP address"
    :tags ["perl"]))
(hoarder:record "ology/DPDA"
  '(:description "Dimensional Personality Disorder Inventory"
    :tags ["perl"]))
(hoarder:record "gglusman/data-fingerprints"
  '(:tags ["perl"]))
(hoarder:record "manwar/Term-Screen-Lite"
  '(:description "Platform independent interface to terminal screen."
    :tags ["perl"]))
(hoarder:record "hackingyseguridad/spoof"
  '(:description "Spoof IP IPv4 Tools ( hackingyseguridad.com )"
    :tags ["perl" "ipv4" "spoof" "testing"]))
(hoarder:record "skaji/AnyEvent-HTTP-Tiny"
  '(:tags ["perl"]))
(hoarder:record "hkoba/hktools"
  '(:description "Just my toolbox. Basically for small ones."
    :tags ["perl"]))
(hoarder:record "manwar/WWW-Google-Places"
  '(:description "Interface to Google Places API."
    :tags ["perl"]))
(hoarder:record "opsview/application-apache-http-server"
  '(:description "Monitors the performance and system health for all Apache servers"
    :tags ["perl"]))
(hoarder:record "boisvert42/ranking-wikipedia"
  '(:description "Perl scripts to rank Wikipedia page titles"
    :tags ["perl"]))
(hoarder:record "benizi/verman"
  '(:description "VerMan is a version manager"
    :tags ["perl"]))
(hoarder:record "nigelhorne/Geo-Coder-Free"
  '(:description "Provides a geocoding functionality using free databases"
    :tags ["perl"]))
(hoarder:record "hoehrmann/Graph-Feather"
  '(:description "Graph::Feather Perl module"
    :tags ["perl" "data-structures" "directed-graph" "graph-algorithms" "perl-module"]))
(hoarder:record "dbsrgits/sql-translator"
  '(:description "SQL::Translator (SQLFairy)"
    :tags ["perl"]))
(hoarder:record "frioux/DBIx-Class-DeploymentHandler"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-SHARYANTO-Proc-Util"
  '(:tags ["perl"]))
(hoarder:record "openzim/wikimedia_wp1_bot"
  '(:description "Wikipedia 1.0 bot"
    :tags ["perl"]))
(hoarder:record "cade-vs/perl-decor"
  '(:description "DECOR is Perl-based infrastructure for building general purpose information systems/applications."
    :tags ["perl"]))
(hoarder:record "nathalie-tate/tweetScraping"
  '(:tags ["perl"]))
(hoarder:record "preaction/Import-Base"
  '(:description "Import a set of modules into the calling module"
    :tags ["perl"]))
(hoarder:record "mjdominus/blosxom-hacks"
  '(:description "Blosxom hacks and plugins"
    :tags ["perl"]))
(hoarder:record "aindilis/freekbs2"
  '(:description "Free Software Knowledge Based System like SigmaKEE or Cyc"
    :tags ["perl"]))
(hoarder:record "vphantom/XML-LibXML-Ferry"
  '(:description "Marshall LibXML nodes and native objects"
    :tags ["perl" "libxml" "perl-module"]))
(hoarder:record "acollaguazo/Routing-and-Switching-Administration"
  '(:description "Administración y respaldos de  configuraciones en enrutadores y conmutadores usando Perl"
    :tags ["perl"]))
(hoarder:record "Dodotree/fish"
  '(:description "Fish is wrapper engine around Watir"
    :tags ["perl" "ruby" "watir"]))
(hoarder:record "ip2location/ip2location-perl"
  '(:description "This is IP2Location Perl Module that enables the user to find the country, region (state), city, latitude, longitude, zip code, time zone, ISP, domain name, connection type, area code, weather, mobile network, elevation, and usage type by IP address or hostname originates from."
    :tags ["geolocation" "ip-address-location" "ip-database" "ip-geolocation" "ip2location-perl" "perl"]))
(hoarder:record "raven-database/importtodb"
  '(:description "scripts to import to the databases"
    :tags ["perl"]))
(hoarder:record "ivanwills/Group-Git-Taggers-Perl"
  '(:description "Tag repositories as containing perl code for group-git"
    :tags ["perl"]))
(hoarder:record "andre-st/goodreads"
  '(:description "Tools for Goodreads.com, such as an Amazon buyback price monitor to discover sales opportunities, or a \"follow book\" implementation to discover quality users and libraries"
    :tags ["perl" "amazon" "goodreads" "monitor" "price-tracker" "ratings" "tracker"]))
(hoarder:record "mikaeld66/kelda"
  '(:description "Scripts to populate a local copy ofexternal repositories, files and other data"
    :tags ["perl"]))
(hoarder:record "hossbeast/autominer"
  '(:description "autoswitching cryptocurrency miner for linux"
    :tags ["perl" "bitcoin" "cryptocurrency-miners"]))
(hoarder:record "perlancar/perl-Sort-Sub"
  '(:tags ["perl"]))
(hoarder:record "faraco/WebService-Gitter"
  '(:description "An interface to Gitter REST API via Perl 5."
    :tags ["gitter" "gitter-api" "perl" "perl5"]))
(hoarder:record "aindilis/clear"
  '(:description "A mature ebook/document reading program including text to speech and other useful features"
    :tags ["perl"]))
(hoarder:record "heince/replace-xml-value"
  '(:description "replace xml attribute or child node value recursively"
    :tags ["perl"]))
(hoarder:record "ivanwills/Group-Git-Cmd-Stats"
  '(:description "Group-Git tools to show statistics accross many repositories"
    :tags ["perl"]))
(hoarder:record "demanuel/PerVeRt"
  '(:description "Simple download automation (PVR) for Usenet "
    :tags ["perl"]))
(hoarder:record "theory/svn-notify"
  '(:description "Subversion activity notification"
    :tags ["perl"]))
(hoarder:record "skaji/Parallel-Pipes"
  '(:tags ["perl"]))
(hoarder:record "FGasper/p5-X-Tiny"
  '(:description "CPAN X::Tiny"
    :tags ["perl"]))
(hoarder:record "ColMelvin/time-stats"
  '(:description "Perform statistical operations on the output of time(1)"
    :tags ["perl"]))
(hoarder:record "ASilverblade/BaConPLX"
  '(:description "A simple web MVC framework written in Perl"
    :tags ["perl"]))
(hoarder:record "gonter/docu-tools"
  '(:description "collection of tools to process documentation items in various formats"
    :tags ["perl"]))
(hoarder:record "reneeb/App-RapidAPI"
  '(:tags ["perl"]))
(hoarder:record "munin-monitoring/munin"
  '(:description "Main repository for munin master / node / plugins"
    :tags ["perl"]))
(hoarder:record "hoytech/Valence-p5"
  '(:description "Perl interface to valence/electron GUI toolkit"
    :tags ["perl"]))
(hoarder:record "emceelam/Presentation-Regular-Expression"
  '(:description "Source code for the regex slides"
    :tags ["perl"]))
(hoarder:record "alex632/attention"
  '(:description "Notification sample"
    :tags ["perl"]))
(hoarder:record "gaurangkher/FeedReader"
  '(:tags ["perl"]))
(hoarder:record "Corion/html-rebase"
  '(:description "rewrite HTML links to be relative to a given URL"
    :tags ["perl"]))
(hoarder:record "georgebswan/Tagger"
  '(:description "Perl utility for tagging photos Similar to PhotoTagger, but done from the command line"
    :tags ["perl"]))
(hoarder:record "karupanerura/Task-BeLike-KARUPA"
  '(:tags ["perl"]))
(hoarder:record "mudler/WWW--Google--AutoSuggest"
  '(:description "WWW::Google::AutoSuggest is a perl module that allows you to use Google Suggest in a quick and easy way and returning it as JSON for further inspection"
    :tags ["perl"]))
(hoarder:record "Grinnz/Mojo-Log-Clearable"
  '(:description "Mojo::Log with clearable log handle"
    :tags ["perl"]))
(hoarder:record "Derbeth/wikinews-rss"
  '(:description "RSS bot for Polish Wikinews"
    :tags ["perl"]))
(hoarder:record "JustinBeckwith/appengine-perl"
  '(:description "An example of running perl on Google App Engine. "
    :tags ["perl"]))
(hoarder:record "GoogleCloudPlatform/appengine-custom-runtimes-samples"
  '(:tags ["ruby" "perl" "google_app_engine"]
    :memo "https://github.com/GoogleCloudPlatform/appengine-custom-runtimes-samples/tree/master/perl"))
(hoarder:record "JustinBeckwith/appengine-perl"
  '(:description "An example of running perl on Google App Engine. "
    :tags ["perl"]))
(hoarder:record "frioux/Log-Contextual"
  '(:tags ["perl"]))
(hoarder:record "semifor/Net-Twitter"
  '(:description "A Perl interface to the Twitter APIs"
    :tags ["perl"]))
(hoarder:record "saint-edunt/EXploiter"
  '(:tags ["perl"]))
(hoarder:record "gflohr/Parse-Kayak"
  '(:tags ["perl"]))
(hoarder:record "wfso/yo_card"
  '(:description "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
    :tags ["perl"]))
(hoarder:record "skaji/App-RunMatrix"
  '(:tags ["perl"]))
(hoarder:record "muze-nl/multigate"
  '(:description "Multigator"
    :tags ["perl"]))
(hoarder:record "muze-nl/multigateCommands"
  '(:description "Aditional commands for multigate"
    :tags ["perl"]))
(hoarder:record "bingos/cpan-perl-releases"
  '(:description "(perl) Mapping Perl releases on CPAN to the location of the tarballs"
    :tags ["perl"]))
(hoarder:record "zepedropaixao/ontoextract"
  '(:tags ["perl"]))
(hoarder:record "shlomif/HTML-Spelling-Site"
  '(:description "Spell checking system/framework for an entire static HTML site."
    :tags ["perl"]))
(hoarder:record "nilcons/ceh"
  '(:description "A guild for people who like Nix"
    :tags ["perl"]))
(hoarder:record "marco44/postgres_rescue_table"
  '(:tags ["perl"]))
(hoarder:record "abw/Badger"
  '(:description "Perl application programming toolkit"
    :tags ["perl"]))
(hoarder:record "vel-gopal/remote_git_repo"
  '(:description "Remote repository for Git_repo local repository working directory"
    :tags ["perl"]))
(hoarder:record "fockjef/hostess"
  '(:description "hostess with mostest"
    :tags ["perl"]))
(hoarder:record "boheling/mp3"
  '(:tags ["perl"]))
(hoarder:record "ParrotSec/parrot-menu"
  '(:description "backup repository https://dev.parrotsec.org/parrot/parrot-menu/"
    :tags ["perl"]))
(hoarder:record "ejelta/xao"
  '(:description "XAO Suite"
    :tags ["perl"]))
(hoarder:record "C64Axel/RMTGBot"
  '(:description "Telegram Bot for individual selection"
    :tags ["perl" "rocketmap" "telegram-bot"]))
(hoarder:record "MasayoshiSugimoto/taskRunner"
  '(:description "Small task runner written in perl"
    :tags ["perl"]))
(hoarder:record "infobyte/evilgrade"
  '(:tags ["perl" "evilgrade" "fake" "payload" "penetration" "pentest" "security" "update"]))
(hoarder:record "ivanGuerreschi/ComicsPerl"
  '(:description "Management for comics written in Perl"
    :tags ["perl"]))
(hoarder:record "Phoenix616/My-Irssi-Stuff"
  '(:description "Scripts'n'stuff from my Irssi setup others might find useful"
    :tags ["perl"]))
(hoarder:record "pdxiv/PerlScott"
  '(:description "Scott Adams adventure interpreter in Perl"
    :tags ["perl"]))
(hoarder:record "DuncanFyfe/dbbackup"
  '(:description "A simple Perl script for backing up databases."
    :tags ["perl"]))
(hoarder:record "cv-library/Test2-Perl-Critic"
  '(:description "Run Perl::Critic as a unit test http://perlcritic.com using Test2"
    :tags ["perl"]))
(hoarder:record "s1037989/Mojolicious-Plugin-ReplyTime"
  '(:tags ["perl"]))
(hoarder:record "faraco/App-TinyID"
  '(:description "A command line tool to encrypt numerical value using Integer::Tiny."
    :tags ["perl"]))
(hoarder:record "uboslinux/macrobuild"
  '(:description "Macro build framework"
    :tags ["perl"]))
(hoarder:record "AndrewCRMartin/bib2html"
  '(:description "Simple BibTeX to HTML converted. No style files, Just edit the Perl to change the style"
    :tags ["perl"]))
(hoarder:record "nephila-nacrea/japanese-english"
  '(:tags ["perl"]))
(hoarder:record "s1037989/Mojo-Autotask"
  '(:tags ["perl"]))
(hoarder:record "s1037989/Mojo-Slack"
  '(:tags ["perl"]))
(hoarder:record "joielechong/iso-country-flags-svg-collection"
  '(:tags ["perl"]))
(hoarder:record "owensgl/reformat"
  '(:description "Scripts for reformatting data. Mainly from tab separated to an esoteric program specific format "
    :tags ["perl"]))
(hoarder:record "mvgrimes/git-deploy"
  '(:tags ["perl"]))
(hoarder:record "zuiderkwast/chordtrans"
  '(:description "Transpose chords on the commend line, preserving lyrics"
    :tags ["perl"]))
(hoarder:record "ivanwills/Group-Git-Taggers-Maven"
  '(:description "Tag repositories as containing Maven code for group-git"
    :tags ["perl"]))
(hoarder:record "rufferson/DJabberd-Plugin-Carbons"
  '(:description "Message Carbons [XEP-0280] implementation for DJabberd"
    :tags ["perl"]))
(hoarder:record "oalders/open-this"
  '(:description "Translate various formats into locations in files"
    :tags ["perl"]))
(hoarder:record "dagolden/HTTP-Tiny-UA"
  '(:description "Higher-level UA features for HTTP::Tiny"
    :tags ["perl"]))
(hoarder:record "jeremiah/spdxl"
  '(:description "spdxl (pronounced spud-exel) is a tool that attempts to identify FOSS licenses and corresponding files associated with them based on SPDX tags."
    :tags ["perl"]))
(hoarder:record "ssial/perl-query-engine"
  '(:tags ["perl"]))
(hoarder:record "sophiaphillyqueen/writeontask"
  '(:description "A utility to keep an author on-task in a writing project based on word-count progress"
    :tags ["perl"]))
(hoarder:record "byterock/Da-Moose"
  '(:description "Moose flafoured da"
    :tags ["perl"]))
(hoarder:record "pgk69/Framework"
  '(:description "Perl Framework"
    :tags ["perl"]))
(hoarder:record "ufal/perl-pmltq"
  '(:description "Query engine and query language for trees in PML format"
    :tags ["perl"]))
(hoarder:record "tryorfry/taillog"
  '(:description "real time `tail -f logfile` in browser with mojolicious"
    :tags ["perl"]))
(hoarder:record "jjn1056/Template-Lace2"
  '(:description "an experiment, for fun"
    :tags ["perl"]))
(hoarder:record "scottkosty/vit"
  '(:description "VIT is a lightweight, fast, curses-based front end to Taskwarrior"
    :tags ["perl"]))
(hoarder:record "aferreira/cpan-Perl-PrereqScanner-Scanner-Mojo"
  '(:description "Perl::PrereqScanner::Scanner::Mojo - Scan for modules loaded with Mojo::Base"
    :tags ["perl"]))
(hoarder:record "OpenMandrivaSoftware/drakx-kbd-mouse-x11"
  '(:description "Keyboarddrake enables to configure  the keyboard. Mousedrake enables to configure the mice. XFdrake enables to configure the graphic card. "
    :tags ["perl"]))
(hoarder:record "theory/sqitch"
  '(:description "Sane database change management"
    :tags ["perl"]))
(hoarder:record "rbycek/git-cache-meta-for-perl"
  '(:description "A git-cache-meta script written in perl because find on AIX sucks."
    :tags ["perl"]))
(hoarder:record "borisbaldassari/alambic"
  '(:description "Alambic is an open-source platform and service for the management and visualisation of software engineering data. Please note that current development is actually happening on BitBucket (and then synchronised on github).."
    :tags ["perl" "data-analysis" "dataset" "software-development" "software-engineering"]))
(hoarder:record "KristopherPaulsen/weps"
  '(:description "Easier Multi-Repo Managment"
    :tags ["perl"]))
(hoarder:record "rjbs/spotrack"
  '(:description "track spotify playlists"
    :tags ["perl"]))
(hoarder:record "reyjrar/DreamCatcher"
  '(:description "DNS Monitoring Suite"
    :tags ["dns" "monitoring" "passive-dns" "perl" "security"]))
(hoarder:record "trackpete/exiletools-indexer"
  '(:description "This project has been shut down"
    :tags ["perl"]))
(hoarder:record "zakame/blosxom"
  '(:description "Blosxom - the Zen of Blogging, resurrected"
    :tags ["perl"]
    :memo "[[https://daringfireball.net/projects/markdown/][Daring Fireball: Markdown]]"))
(hoarder:record "derf/db-fakedisplay"
  '(:description "Show train departures, as seen on the displays on most main stations"
    :tags ["perl"]))
(hoarder:record "xsawyerx/sys-hostip"
  '(:description "Sys::HostIP - Try extra hard to get ip address related info"
    :tags ["perl"]))
(hoarder:record "lucastheisen/saxtract-perl"
  '(:description "Perl port of saxtract"
    :tags ["perl"]))
(hoarder:record "Dual-Life/Thread-Semaphore"
  '(:description "The 'Thread-Semaphore' module for Perl."
    :tags ["perl"]))
(hoarder:record "Heziode/emojify"
  '(:description "Emoji on the command line :tada:"
    :tags ["perl"]))
(hoarder:record "manwar/WWW-Google-CustomSearch"
  '(:description "Interface to Google JSON/Atom Custom Search."
    :tags ["perl"]))
(hoarder:record "oar-team/oar"
  '(:description "OAR is a versatile resource and task manager (also called a batch scheduler) for clusters and other computing infrastructures."
    :tags ["perl"]))
(hoarder:record "andrewradke/1wired"
  '(:description "A daemon for constantly polling data from one or more 1wire buses and optionally recording it in RRDs"
    :tags ["perl"]))
(hoarder:record "jsun98/perl-tutorial"
  '(:description "😂😂 If you put a million monkeys at a million keyboards, one of them will eventually write a Java program. The rest of them will write Perl programs."
    :tags ["perl" "perl-module" "perl5" "perl6"]))
(hoarder:record "theos/dm.pl"
  '(:description "not dpkg-deb, nor a plane, nor a bird."
    :tags ["perl"]))
(hoarder:record "cristianbravolillo/TTools"
  '(:description "Miscellaneous functions for happy-scripting in Perl"
    :tags ["perl"]))
(hoarder:record "eprintsug/soundcloud"
  '(:tags ["perl"]))
(hoarder:record "typester/object-container-perl"
  '(:description "simple object container"
    :tags ["perl"]))
(hoarder:record "Songmu/App-LJ"
  '(:tags ["perl"]))
(hoarder:record "book/App-Wallflower"
  '(:description "Sorry I can't dance, I'm holding on to my friend's purse"
    :tags ["perl"]
    :memo "[[http://blogs.perl.org/users/book/2018/07/wallflower-improvements-and-issues.html][Wallflower improvements and issues | BooK {blogs.perl.org}]]"))
(hoarder:record "hitode909/Plack-Middleware-Bootstrap"
  '(:description "A Plack Middleware to prettify simple HTML with Botstrap design template"
    :tags ["perl"]))
(hoarder:record "Songmu/Puncheur"
  '(:tags ["perl"]))
(hoarder:record "Songmu/p5-App-CPANGhq"
  '(:tags ["perl"]))
(hoarder:record "damog/www-tumblr"
  '(:description "Perl interface for the Tumblr API"
    :tags ["perl"]))
(hoarder:record "Songmu/p5-Config-PL"
  '(:tags ["perl"]))
(hoarder:record "Code-Hex/List-Flatten-XS"
  '(:description "Fast flatten"
    :tags ["c" "fast" "flatten" "list" "perl" "perl5" "xs"]))
(hoarder:record "Songmu/p5-SWF-Changer"
  '(:tags ["perl"]))
(hoarder:record "typester/nim"
  '(:description "minimal command-line based contents generator"
    :tags ["perl"]))
(hoarder:record "movabletype/movabletype"
  '(:description "Movable Type"
    :tags ["perl"]))
(hoarder:record "plainblack/Wing"
  '(:description "Next generation web services toolkit."
    :tags ["perl"]))
(hoarder:record "serinuntius/Jobeet"
  '(:description "http://konboi.github.io/ark-advent-2016"
    :tags ["perl"]))
(hoarder:record "Ruunyox/yypdb"
  '(:description "Search the PDB from your commandline"
    :tags ["perl"]))
(hoarder:record "sashahilton00/spotify-connect-resources"
  '(:description "A repository to hold any data/stuff related to reversing the Spotify Connect protocol. Mostly just data dumps at the moment, but if you have something to add to it, be it an implementation, information or just another data dump, make a PR and I will add it asap."
    :tags ["perl"]))
(hoarder:record "jorvis/ergatis"
  '(:description "Ergatis is a web-based utility that is used to create, run, and monitor reusable computational analysis pipelines."
    :tags ["perl"]))
(hoarder:record "rjbs/Steamy"
  '(:description "find some friends to play with and pick a game"
    :tags ["perl"]))
(hoarder:record "jacobsteves/Crawlperl"
  '(:description "A web crawler made with Perl. Great for grabbing or searching for data off the web, or ensuring that your own site files are secure and hidden. "
    :tags ["perl"]))
(hoarder:record "davorg/succession"
  '(:description "Information about the succession to the British crown"
    :tags ["perl" "royalty" "succession"]))
(hoarder:record "markov2/perl5-Net-FTP-Robust"
  '(:description "Download files over FTP"
    :tags ["perl"]))
(hoarder:record "faraco/favobooks"
  '(:description "Favorite books manager web application."
    :tags ["perl"]))
(hoarder:record "markov2/perl5-Hash-Case"
  '(:description "Play trics with hash keys"
    :tags ["perl"]))
(hoarder:record "caianrais/init"
  '(:description "A collection of all my dotfiles and custom configurations."
    :tags ["perl" "cli" "dotfiles" "rice" "unixporn" "zsh"]))
(hoarder:record "myth11/unbound_rkn"
  '(:tags ["perl"]))
(hoarder:record "dpavlin/MojoFacets"
  '(:description "Server-side facet browsing using Mojolicious and jQuery UI"
    :tags ["perl"]))
(hoarder:record "lukec/recyclight"
  '(:description "Like a bat-signal but for garbage day"
    :tags ["perl"]))
(hoarder:record "tupinek/CGI-Pure"
  '(:description "Common Gateway Interface Class."
    :tags ["perl"]))
(hoarder:record "NayanAgrawal/RestAPI-Automation"
  '(:tags ["perl"]))
(hoarder:record "PerlDancer/Dancer2-Plugin-Auth-Extensible"
  '(:description "Extensible authentication framework for Dancer2 apps"
    :tags ["perl"]))
(hoarder:record "petere/postgresql-common"
  '(:description "PostgreSQL database-cluster manager — You might be interested in https://github.com/petere/homebrew-postgresql as well."
    :tags ["perl" "homebrew" "postgresql"]))
(hoarder:record "hv15/sshprint"
  '(:description "A ZSH script to print local files on remote printers using SSH"
    :tags ["perl" "printer" "ssh"]))
(hoarder:record "jjatria/Mastodon-Client"
  '(:description "Talk to a Mastodon server (Mirrored from https://gitlab.com/jjatria/Mastodon-Client)"
    :tags ["cpan" "mastodon" "perl" "io-async" "net-async-http"]))
(hoarder:record "mmitch/omxplayer-console"
  '(:description "console frontend for omxplayer (and others)"
    :tags ["perl"]))
(hoarder:record "patklaey/ServerManagement"
  '(:description "This repository holds some simple scripts which makes my server management easier"
    :tags ["perl"]))
(hoarder:record "preaction/Curator"
  '(:description "Perl modules, scripts, and daemons to organize a media collection"
    :tags ["perl"]))
(hoarder:record "shlomif/perl-HTML-Widgets-NavMenu"
  '(:tags ["perl"]))
(hoarder:record "zhmylove/caler"
  '(:description "A cross-platform utility to perform cloud backend systems autoscale."
    :tags ["perl"]))
(hoarder:record "markov2/perl5-MIME-Types"
  '(:description "Definition of MIME types"
    :tags ["perl"]))
(hoarder:record "frioux/app-adenosine"
  '(:tags ["perl"]))
(hoarder:record "sriganeshsai/checking-server-availability"
  '(:tags ["perl"]))
(hoarder:record "mudler/perl_training_websocket_chat"
  '(:description "Example of chat over websocket taken from Mojo"
    :tags ["perl"]))
(hoarder:record "rjuju/postgres-manage"
  '(:tags ["perl"]))
(hoarder:record "pjrk/Jurahelfer"
  '(:description "Reddit-Bot, der Normen verlinkt"
    :tags ["perl"]))
(hoarder:record "paveljurca/geekuni"
  '(:description "https://geekuni.com/course/perl-web"
    :tags ["perl"]))
(hoarder:record "tlqtangok/perl_p"
  '(:description "perl_p is utilities for enhancing effectivity"
    :tags ["perl"]))
(hoarder:record "f05fk/sepPI"
  '(:description "Simple audio player for kids based on RaspberryPI"
    :tags ["perl"]))
(hoarder:record "sharifulin/mojolicious-plugin-sharehelpers"
  '(:description "Mojolicious::Plugin::ShareHelpers - A Mojolicious Plugin for generate share urls, buttons and meta for Twitter, Facebook, VK, MyMailRU and Google Plus"
    :tags ["perl"]))
(hoarder:record "gooddata/DBD-MariaDB"
  '(:description "Perl MariaDB driver"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-squidauth"
  '(:tags ["perl"]))
(hoarder:record "oklas/p5-Flexconf"
  '(:description "Configuration files management library and program"
    :tags ["perl"]))
(hoarder:record "markov2/perl5-Geo-WKT"
  '(:description "Well Known Text representation of geometry information"
    :tags ["perl"]))
(hoarder:record "rurban/cannes-rurban.rhcloud.com"
  '(:description "Dancer app for collected film festival reviews and ratings"
    :tags ["perl"]))
(hoarder:record "bwindsor/osm-server"
  '(:description "Local Tile server in Docker for Open Street Map"
    :tags ["perl"]))
(hoarder:record "LemonLDAPNG/Apache-Session-NoSQL"
  '(:description "Apache::Session::NoSQL Perl module"
    :tags ["perl"]))
(hoarder:record "tupinek/Tags"
  '(:description "Structure oriented SGML/XML/HTML/etc. elements manipulation."
    :tags ["perl"]))
(hoarder:record "wfso/Mojolicious-Plugin-SessionStorage"
  '(:description "用于对Mojolicious中Session进行管理的插件"
    :tags ["perl"]))
(hoarder:record "avar/dist-zilla-plugin-makemaker-awesome"
  '(:description "Like Dist::Zilla::Plugin::MakeMaker but can be subclassed"
    :tags ["perl"]))
(hoarder:record "JeffAbrahamson/pic-tools"
  '(:description "Tools for managing my image collection"
    :tags ["perl"]))
(hoarder:record "pmarguinaud/bdmeta"
  '(:tags ["perl"]))
(hoarder:record "stormliucong/MANGA-server"
  '(:tags ["perl"]))
(hoarder:record "AndyA/Fenchurch"
  '(:description "A versioned database abstraction with replication"
    :tags ["perl"]))
(hoarder:record "manakai/perl-web-js"
  '(:tags ["perl"]))
(hoarder:record "netstyler/lxc-dev-env"
  '(:description "A LXC Container based development envoirement"
    :tags ["perl"]))
(hoarder:record "wfso/Mojolicious-Plugin-Paging"
  '(:description "paging plugin for Mojolicious "
    :tags ["perl"]))
(hoarder:record "ferozsalam/buildit-crawler"
  '(:tags ["perl"]))
(hoarder:record "do-/eludia"
  '(:description "The Eludia.pm"
    :tags ["perl"]))
(hoarder:record "agoetschm/perlsync"
  '(:description "Perl backup daemon"
    :tags ["perl"]))
(hoarder:record "AlexandreLouisnard/files-management-tools"
  '(:description "A collection of several independent files management scripts written in different languages."
    :tags ["perl"]))
(hoarder:record "MG-RAST/Skyport2"
  '(:description "Infrastructure setup for app/service development."
    :tags ["perl"]))
(hoarder:record "fingerbank/perl-client"
  '(:description "Home of the Fingerbank perl client codebase, make yourself cozy"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-rsync-new2old"
  '(:tags ["perl"]))
(hoarder:record "virtapi/arch-package-builder"
  '(:description "Toolbox to create a continuous Delivery Platform with Jenkins-CI for Arch Packages"
    :tags ["perl"]))
(hoarder:record "yak1ex/templates"
  '(:description "My template files"
    :tags ["perl"]))
(hoarder:record "stingraze/Search-Seed-Dispatcher"
  '(:description "Creates Seed file for increasing database on Mohawk Search."
    :tags ["perl"]))
(hoarder:record "achimr/corpus-tools"
  '(:description "Perl modules and scripts to process text corpora"
    :tags ["perl"]))
(hoarder:record "petlib/vps"
  '(:description "Virtual Private Service with ssh and docker"
    :tags ["perl"]))
(hoarder:record "barefootcoder/Data-Random"
  '(:description "Release history of Data-Random"
    :tags ["perl"]))
(hoarder:record "western/king-support"
  '(:tags ["perl"]))
(hoarder:record "haxmeister/funtoo-reporter"
  '(:description "Anonymous reporting tool for Funtoo Linux"
    :tags ["perl"]))
(hoarder:record "teknopaul/Markbook"
  '(:description "Scripts to generate a HTML book from a set of Markdown files."
    :tags ["perl"]))
(hoarder:record "JonasBakelaar/Crime-Checker"
  '(:description "Cumulative group project for Software Design II, takes records from government website on data and does crime rate comparisons. I contributed to the User Interface, Documentation, and some Graphing in R"
    :tags ["perl"]))
(hoarder:record "DrHyde/perl-modules-Devel-CheckOS"
  '(:description "Devel::CheckOS"
    :tags ["perl"]))
(hoarder:record "mhielscher/fold-irssi"
  '(:description "Script for irssi to truncate long messages into \"above the fold\" previews."
    :tags ["perl"]))
(hoarder:record "markov2/perl5-Log-Report"
  '(:description "report a problem, with exceptions and translation support"
    :tags ["perl"]))
(hoarder:record "ikiwiki-tavi/p5-IkiWiki-Plugin-github"
  '(:tags ["perl"]))
(hoarder:record "hoehrmann/List-StackBy"
  '(:description "List::StackBy Perl module"
    :tags ["perl" "algorithm" "perl-module" "perl5"]))
(hoarder:record "sophia-collaborations/blog-preview"
  '(:description "A tool for previewing blog-posts and other things for their pre-server phase of preparation"
    :tags ["perl"]))
(hoarder:record "markov2/perl5-Net-FTPSSL-Robust"
  '(:description "Download files over SFTP"
    :tags ["perl"]))
(hoarder:record "bayashi/WebService-Coincheck"
  '(:description "coincheck Perl libraries http://coincheck.jp/"
    :tags ["perl"]))
(hoarder:record "xrmb/btindex"
  '(:description "BitTorrent Indexer"
    :tags ["perl"]))
(hoarder:record "jkeenan/text-csv-hashify"
  '(:description "Turn a CSV file into a Perl hash"
    :tags ["perl"]))
(hoarder:record "Junker/HTTP-DAV-Nginx"
  '(:description "Perl Client library for Nginx WebDAV server"
    :tags ["perl"]))
(hoarder:record "kazeburo/Proclet"
  '(:description "minimalistic Supervisor"
    :tags ["perl"]))
(hoarder:record "agrinevich/netsmtp"
  '(:description "Web-form with Google ReCaptcha submitting"
    :tags ["perl" "form-submission" "google-recaptcha" "recaptcha"]))
(hoarder:record "perlancar/perl-AppBase-Grep"
  '(:tags ["perl"]))
(hoarder:record "steeznson/MountFujiOntology"
  '(:description "An OWL2 Ontology Built in Protégé, Cataloguing Hokusai's Views of Mount Fuji (MSc Dissertation Component)"
    :tags ["perl"]))
(hoarder:record "linuxmuster/sophomorix2"
  '(:description "sophomorix2"
    :tags ["perl"]))
(hoarder:record "linuxmuster/sophomorix4"
  '(:description "sophomorix for Samba 4"
    :tags ["perl"]))
(hoarder:record "gugod/Perl-Critic-TooMuchCode"
  '(:tags ["perl"]))
(hoarder:record "QBitFramework/QBit-Base"
  '(:tags ["perl"]))
(hoarder:record "bcc32/manga.pl"
  '(:description "A MangaUpdates.com scraper, because their RSS feed is too short"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-List-Rank"
  '(:tags ["perl"]))
(hoarder:record "329379172/mojoqq-image"
  '(:tags ["perl"]))
(hoarder:record "m455/plight"
  '(:description "A perl script to adjust brightness"
    :tags ["perl"]))
(hoarder:record "tonycoz/imager"
  '(:description "Imager - image manipulation from perl. This is a mirror only, pull requests will be closed without comment if I ever notice them.  Please submit patches (or bugs) via bug-Imager [at] rt.cpan.org"
    :tags ["perl"]))
(hoarder:record "clustericious/Clustericious"
  '(:tags ["perl"]))
(hoarder:record "domm/Module-ExtractUse"
  '(:description "Find out what modules are used in Perl code"
    :tags ["perl"]))
(hoarder:record "stevieb9/async-event-interval"
  '(:tags ["perl"]))
(hoarder:record "mjemmeson/Geo-JSON"
  '(:tags ["perl"]))
(hoarder:record "ironcamel/App-p"
  '(:description "Steroids for your perl one-liners. Does that mean steroids for your steroids? Is that even possible?"
    :tags ["perl"]))
(hoarder:record "sarahaziziyan/perl-SessionManagement"
  '(:tags ["perl"]))
(hoarder:record "jlmcgraw/mnemonic_passphrase"
  '(:description "A utility to generate an easily rememberable passphrase using a random word as a mnemonic"
    :tags ["perl"]))
(hoarder:record "oldtechaa/SeekMIDI"
  '(:description "SeekMIDI, a simple multi-channel graphical MIDI sequencer."
    :tags ["midi" "midi-sequencer" "music" "perl" "perl5"]))
(hoarder:record "f0x52/lainMud"
  '(:tags ["perl"]))
(hoarder:record "Grinnz/Mojo-Reactor-UV"
  '(:description "Mojo::Reactor::UV - UV backend for Mojo::Reactor"
    :tags ["perl"]))
(hoarder:record "gravattj/perl-TaskEz"
  '(:tags ["perl"]))
(hoarder:record "skcoulter/dgd"
  '(:description "DeadGatewayCode"
    :tags ["perl"]))
(hoarder:record "leejo/javascript-packer-perl"
  '(:description "CPAN Module Javascript::Packer"
    :tags ["perl"]))
(hoarder:record "kiwiroy/fatpack-maint-builder"
  '(:description "maintenance script to fatpack a script for distribution"
    :tags ["app-fatpacker" "applify-example" "build" "eumm" "perl"]))
(hoarder:record "jollyrogue/tardirectories"
  '(:description "Creates individual tarballs out of the given directories in the given destination."
    :tags ["perl"]))
(hoarder:record "jplindstrom/p5-Devel-PerlySense"
  '(:description "CPAN module Devel::PerlySense"
    :tags ["perl"]))
(hoarder:record "opsview/database-mariadb-server"
  '(:description "Monitors the performance and system health for MariaDB"
    :tags ["perl"]))
(hoarder:record "neechbear/psmon"
  '(:description "Process Table Monitoring Script"
    :tags ["perl"]))
(hoarder:record "csandeep/mojolicious-plugin-assetpack-pipe-elmlang"
  '(:description "Process .elm files in your Mojolicoius app"
    :tags ["perl"]))
(hoarder:record "nkuitse/Ei"
  '(:description "Easy home inventory at the command line"
    :tags ["perl"]))
(hoarder:record "mmredlinux/XML-Parser"
  '(:tags ["perl"]))
(hoarder:record "martingjohn/scan"
  '(:tags ["perl"]))
(hoarder:record "stovpo/dancer-ex"
  '(:tags ["perl"]))
(hoarder:record "alvarosplit/playgoear"
  '(:description "Play music from Goear"
    :tags ["perl"]))
(hoarder:record "simonbru/ff-downloader"
  '(:description "Mozilla downloader for Firefox of Thunderbird on Linux"
    :tags ["perl"]))
(hoarder:record "sidspencer/tunage"
  '(:description "iTunes CLI"
    :tags ["perl"]))
(hoarder:record "mohawk2/data-transform"
  '(:description "Arbitrary transformations of JSON-able data"
    :tags ["perl"]))
(hoarder:record "JJ/perl-git-commit"
  '(:description "Examine git commits in a repository. "
    :tags ["perl"]))
(hoarder:record "ThePilgrim/perlcldr"
  '(:description "Perl module to use the Common Local Data Repository from the Unicode Consortium"
    :tags ["perl"]))
(hoarder:record "christianhujer/makehelp"
  '(:description "Just a small perl script for built-in doxygen-style help in makefiles"
    :tags ["perl"]))
(hoarder:record "mithun/perl-uri-encode"
  '(:description "Simple URI Encode/Decode using Perl"
    :tags ["perl"]))
(hoarder:record "basil2style/movie_recomendation"
  '(:description "Movie recommendation using Surprise python library"
    :tags ["perl"]))
(hoarder:record "cliveholloway/Perl-Util-EvalSnippet"
  '(:description "Eval code snippets in the context of the caller - useful to avoid app reload in Catalyst and other similar frameworks"
    :tags ["perl"]))
(hoarder:record "whirlybeard/preddit"
  '(:description "CLI Reddit Scraper"
    :tags ["perl"]))
(hoarder:record "simonrubinstein/cocobot"
  '(:description "Automatically exported from code.google.com/p/cocobot"
    :tags ["perl"]))
(hoarder:record "akiym/legacy_postfixderef"
  '(:description "Convert postfix dereference to usual dereference for legacy Perls"
    :tags ["perl"]))
(hoarder:record "pentestermaster/Search-Tool"
  '(:description "Search tool is a script that helps you to get links about some keyword that you provide, it's very fast and easy to use."
    :tags ["perl"]))
(hoarder:record "kedamaDQ/aggregate-ipaddr"
  '(:description "Tools for aggregate IP address blocks which fetched from all Regional Internet Registries."
    :tags ["perl"]))
(hoarder:record "leejo/css-packer-perl"
  '(:description "CPAN Module CSS::Packer"
    :tags ["perl"]))
(hoarder:record "bucciarati/cache-wrap"
  '(:description "Cache a program's stdout based on current directory and command line arguments"
    :tags ["perl" "cache" "caching" "command-line" "wrapper"]))
(hoarder:record "VolodymyrLavrenchuk/bandwith_cgi"
  '(:description "cpu www svg graph like Windows TaskManager"
    :tags ["perl"]))
(hoarder:record "ronsavage/Tree-DAG_Node"
  '(:description "An N-ary tree"
    :tags ["perl"]))
(hoarder:record "joabj/iTunes-Playlisting"
  '(:description "Creates an HTML-based list of all the songs played in iTunes over any given duration"
    :tags ["perl"]))
(hoarder:record "JJ/p5-hitos"
  '(:description "Microservicio ejemplo con Perl"
    :tags ["perl"]))
(hoarder:record "markov2/perl5-String-Print"
  '(:description "printf alternative"
    :tags ["perl"]))
(hoarder:record "frmadem/eixo-base"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-App-rsynccolor"
  '(:tags ["perl"]))
(hoarder:record "Corion/App-import-mp3"
  '(:description "unpack and rename music files from archives"
    :tags ["perl"]))
(hoarder:record "Mushy-pea/PerlBB"
  '(:description "My first web application project Perl Bulletin Board, now defunct but kept for posterity.  Original site: https://sourceforge.net/projects/perlbb"
    :tags ["perl"]))
(hoarder:record "rapilodev/racalmas"
  '(:description "radio calendar management system"
    :tags ["perl"]))
(hoarder:record "schreq/sqirc"
  '(:description "suckless ii inspired irc client"
    :tags ["perl"]))
(hoarder:record "git://git.shadowcat.co.uk/catagits/Web-Simple.git"
  '(:memo "[[https://opensource.com/article/18/1/introduction-websimple-perl-module-minimalist-web-framework][An introduction to the Web::Simple Perl module, a minimalist web framework | Opensource.com]]"))
(hoarder:record "kaare/ReportWriter"
  '(:description "Generic ReportWriter in Moose Perl."
    :tags ["perl"]))
(hoarder:record "molo1134/qrmbot"
  '(:description "qrm ham radio IRC bot and associated scripts"
    :tags ["perl"]))
(hoarder:record "klaus03/XML-Reader"
  '(:tags ["perl"]))
(hoarder:record "RosettaStoned/psql_dumper"
  '(:description "Simple psql_dumper that extends psql_dump capabilities"
    :tags ["perl"]))
(hoarder:record "polettix/Log-Log4perl-Tiny"
  '(:description "Mimic Log::Log4perl in one single module"
    :tags ["perl"]))
(hoarder:record "Corion/www-mechanize-firefox"
  '(:description "The API of WWW::Mechanize, combined with the Javascript-power of Firefox"
    :tags ["firefox" "mechanize" "perl"]))
(hoarder:record "OpenCageData/perl-Geo-Coder-OpenCage"
  '(:description "Perl module for the OpenCage Geocoder"
    :tags ["geocoding" "opencage" "opencage-geocoder" "perl"]))
(hoarder:record "regina-verbae/Piper"
  '(:description "Flexible, iterable pipeline engine with automatic batching"
    :tags ["perl"]))
(hoarder:record "akhepcat/websniffer"
  '(:description "simple web interface for managing wireshark/tshark on a remote box"
    :tags ["perl"]))
(hoarder:record "rjbs/App-Cronjob"
  '(:description "a wrapper for cronjobs to cope with lousy crond (and make decent ones better)"
    :tags ["perl"]))
(hoarder:record "rolanday/File-Find-Rex"
  '(:description "Perl module provides simple interface to File::Find and ability to filter results using regular expressions."
    :tags ["perl"]))
(hoarder:record "hadfl/zadm"
  '(:description "zone admin tool"
    :tags ["perl"]))
(hoarder:record "cmwshang/docdynamo"
  '(:tags ["perl"]))
(hoarder:record "exodist/DBIx-QuickDB"
  '(:description "Quickly spin up db servers"
    :tags ["perl"]))
(hoarder:record "book/dumbbackup"
  '(:description "Backup using rsync, but generate the command line using Perl"
    :tags ["perl"]))
(hoarder:record "reneeb/Mojolicious-Plugin-FormFieldsFromJSON"
  '(:description "Mojolicious plugin to define form fields in a json file"
    :tags ["perl"]))
(hoarder:record "robrwo/Lingua-Conjunction"
  '(:tags ["perl"]))
(hoarder:record "coringao/runescape"
  '(:description "Multiplayer online game set in a fantasy world"
    :tags ["perl" "adventure-game" "debian" "game" "linux" "mmorpg" "runescape" "ubuntu"]))
(hoarder:record "pepabo/p5-bundle-mogilefs"
  '(:description "mogilefs全部入り"
    :tags ["mogilefs" "perl"]))
(hoarder:record "juliensobrier/Net-Google-SafeBrowsing3"
  '(:description "Google Safe Browsing v3 library for Per"
    :tags ["perl"]))
(hoarder:record "maciejsum/bibman"
  '(:description "A console tool for managing BibTeX files."
    :tags ["perl"]))
(hoarder:record "dragon3/Plack-App-GitSmartHttp"
  '(:description "Git Smart HTTP Server Plack Implementation"
    :tags ["perl" "plack"]))
(hoarder:record "foswiki/UnifiedAuthContrib"
  '(:description "Multiple authentication methods: . corporate LDAP, Google, Facebook, TopicUserMapping+HtPasswdUser, ..."
    :tags ["perl"]))
(hoarder:record "dim0xff/p5-Mojolicious-Plugin-XCached"
  '(:description "Caches in your Mojolicious app"
    :tags ["perl"]))
(hoarder:record "asivapra/Eighteen"
  '(:description "The anti-spam suite, Eighteen, used on webgenie.com server"
    :tags ["perl"]))
(hoarder:record "Moham3dRiahi/XBruteForcer"
  '(:description "Brute Force Tool 🔓 WP , Joomla , DruPal , OpenCart , Magento"
    :tags ["brute-force" "bruteforce" "drupal" "drupal-7" "drupal-8" "joomla" "joomla-cms" "magento" "magento2" "opencart" "opencart-2x" "opencart-3x" "password-attack" "password-cracker" "passwords" "perl" "wordpress" "wordpress-site"]))
(hoarder:record "paleobiodb/classic"
  '(:description "Comprehensive Web application (front and backend) for searching, editing and entering PBDB data."
    :tags ["perl"]))
(hoarder:record "jwbargsten/app-cmd-nested-example"
  '(:tags ["perl"]))
(hoarder:record "darviarush/miu"
  '(:description "miu - compile file width code and test on perl and documentation in markdown into more files"
    :tags ["perl"]))
(hoarder:record "digint/btrbk"
  '(:description "Tool for creating snapshots and remote backups of btrfs subvolumes"
    :tags ["perl" "backup" "btrfs" "encrypted-backups" "incremental-backups" "snapshot"]))
(hoarder:record "thanos1983/Perl5-TCP-Chat-Server-Multiple-Clients"
  '(:description "TCP Server able to operate with multiple Clients \"Telnet Behavior\""
    :tags ["perl"]))
(hoarder:record "1337r00t/SnapBrute"
  '(:description "Brute Force SnapChat [SC API] ~ SnapWreck"
    :tags ["perl"]))
(hoarder:record "f0x52/mudle"
  '(:description "A moo/mud client and server, written in perl5"
    :tags ["perl"]))
(hoarder:record "oscarmeanwell/Perl-AI-Checkers"
  '(:description "A Perl 5 checkers game with AI"
    :tags ["perl"]))
(hoarder:record "git://git.ikiwiki.info")
(hoarder:record "Real-Gecko/Filemin"
  '(:description "File manager for Webmin written completely in perl"
    :tags ["perl"]))
(hoarder:record "nathanielgraham/Mojo-Poker"
  '(:description "Poker Client and Server built with the Mojolicious Framework "
    :tags ["client" "mojolicious" "perl" "poker" "poker-game-server" "server"]))
(hoarder:record "rkitover/lingua-en-inflect-phrase"
  '(:description "Pluralizes or singularize a short English phrase"
    :tags ["perl"]))
(hoarder:record "jollyrogue/userarchiver"
  '(:description "Queries LDAP and archives user accounts which are considered inactive."
    :tags ["perl"]))
(hoarder:record "robinsmidsrod/IMDB-Watchlist"
  '(:description "IMDB Watchlist cross-referenced with 3rd party RSS feed"
    :tags ["perl"]))
(hoarder:record "cxw42/ls0"
  '(:description "A \"ls\" replacement that separates results with a null terminator instead of a newline."
    :tags ["file-management" "ls" "null-terminator" "perl"]))
(hoarder:record "smfreegard/DecodeShortURLs"
  '(:description "SpamAssassin DecodeShortURLs plug-in repository"
    :tags ["perl"]))
(hoarder:record "robdelacruz/instagram-dl"
  '(:description "Download image file from instagram link (utility)"
    :tags ["perl"]))
(hoarder:record "Pear-Trading/Foodloop-Server"
  '(:tags ["perl"]))
(hoarder:record "Getty/p5-moox-cmd"
  '(:description "Giving an easy Moo style way to make command organized CLI apps"
    :tags ["perl"]))
(hoarder:record "book/Task-Git-Repository"
  '(:description "Install all Git::Repository plugins at once"
    :tags ["perl"]))
(hoarder:record "basilfisk/Airwave"
  '(:description "Airwave CMS"
    :tags ["perl"]))
(hoarder:record "ziali088/mojolicious-plugin-jsonapi"
  '(:description "Mojolicious Plugin for JSON API"
    :tags ["perl"]))
(hoarder:record "schelcj/mojolicious-command-generate-deploy"
  '(:tags ["perl"]))
(hoarder:record "kiwiroy/Devel-IPerl-Plugin-Perlbrew"
  '(:tags ["perl"]))
(hoarder:record "petdance/scraps"
  '(:description "My code junk drawer"
    :tags ["perl"]))
(hoarder:record "gruw/irssi-powerline-molokai"
  '(:description "Irssi theme with powerline segments for the molokai palette"
    :tags ["perl"]))
(hoarder:record "Git-Mediawiki/Git-Mediawiki"
  '(:description "Gate between Git and Mediawiki"
    :tags ["perl"]))
(hoarder:record "kjetilk/p5-rdf-ns-curated"
  '(:description "A curated set of RDF prefixes"
    :tags ["perl"]))
(hoarder:record "stevan/p5-mop-redux"
  '(:description "A(nother) MOP for Perl 5"
    :tags ["perl"]))
(hoarder:record "dod38fr/shutter"
  '(:description "Shutter - Feature-rich Screenshot Tool (cloned from upstream bzr repo)"
    :tags ["perl"]))
(hoarder:record "xordspar0/asciibattlequarium"
  '(:description "Flying fish do deadly battle! Based on asciiquarium."
    :tags ["perl"]))
(hoarder:record "dex4er/collectd-json-influxdb-proxy"
  '(:description "Translate collectd JSON HTTP request to Influx Data line protocol"
    :tags ["perl"]))
(hoarder:record "JohnMarkOckerbloom/onlinebooks"
  '(:description "Selected code and data for The Online Books Page and related applications"
    :tags ["perl"]))
(hoarder:record "CaptainFlint/TwitchDown"
  '(:description "Tool for downloading Twitch.tv recordings (VOD, Video-On-Demand)"
    :tags ["perl"]))
(hoarder:record "fastmail/hopscotch"
  '(:description "A tiny, high-performance HTTP image proxy"
    :tags ["perl"]))
(hoarder:record "mche/Mojolicious-Che"
  '(:description "This is my uplevel Mojolicious package"
    :tags ["perl" "config" "mojolicious" "parent"]))
(hoarder:record "markov2/perl5-Log-Report-Template"
  '(:description "Template toolkit with translations"
    :tags ["perl"]))
(hoarder:record "markov2/perl5-User-Identity"
  '(:description "maintain info about a physical person"
    :tags ["perl"]))
(hoarder:record "eokoe/http-callback-service"
  '(:description "Schedule http-requests with automatic retry"
    :tags ["perl" "http-callback" "webhook"]))
(hoarder:record "haarg/Devel-GlobalPhase"
  '(:description "Emulate ${^GLOBAL_PHASE} for older perls"
    :tags ["perl"]))
(hoarder:record "formorer/AnySyncd"
  '(:description "Sync"
    :tags ["perl"]))
(hoarder:record "djerius/Hash-Wrap"
  '(:description "create lightweight on-the-fly objects from hashes"
    :tags ["perl"]))
(hoarder:record "zoul/demiurge"
  '(:description "Replace your imgur image links with another URL"
    :tags ["perl"]))
(hoarder:record "AbrahamHokuto/Kagerou"
  '(:description "Forum implementation for https://www.chikyuuschool.com/"
    :tags ["perl"]))
(hoarder:record "bayashi/Text-VerticalTable"
  '(:description "Create a nice formatted `key, value` table vertically"
    :tags ["perl"]))
(hoarder:record "pink-mist/perl-Mojolicious-Plugin-Pubsub"
  '(:description "Pubsub plugin for Mojolicious"
    :tags ["perl"]))
(hoarder:record "robrwo/Net-Statsd-Tiny"
  '(:description "A lightweight statsd client"
    :tags ["perl"]))
(hoarder:record "proudust/Hakoniwa-Islands"
  '(:tags ["perl"]))
(hoarder:record "BigRedS/blockip"
  '(:description "Blocks IP addresses"
    :tags ["perl"]))
(hoarder:record "dr-iman/SpiderProject"
  '(:description "SpiderSploit Project"
    :tags ["perl" "deface" "drupal" "exploit" "exploit-scanner" "ipb-exploit" "ips-exploit" "joomla" "joomla-exploit" "linux-exploits" "router-exploitation-framework" "scanner" "shell" "spidersploit" "webhacking" "webshell" "website-vulnerability-scanner" "windows-exploitation" "wordpress-exploit-framework" "wordpress-plugin" "wordpress-theme"]))
(hoarder:record "sshaw/Time-Timecode"
  '(:description "Video timecode class for Perl and command line program. Supports any frame rate, conversions, drop/non-drop frame counts and more. "
    :tags ["conversion" "drop-frames" "frame-rate" "perl" "timecode" "video" "video-timecode-manipulation"]))
(hoarder:record "iarna/App-Every"
  '(:description "Easily create and queue cronjobs from the command line"
    :tags ["perl"]))
(hoarder:record "sonntagd/DBIx-Core-Handle-ReturnValue"
  '(:description "Improved database handle for Dancer2::Plugin::Database"
    :tags ["perl"]))
(hoarder:record "AUT-CEIT/MOSSer"
  '(:description "A bash script to extract files from archives ready for cheat detection :D :D"
    :tags ["perl" "cheat" "moss"]))
(hoarder:record "tajibot/recordedEnc"
  '(:description "ffmpeg encoding script for TV recording"
    :tags ["perl"]))
(hoarder:record "yseto/whitebait"
  '(:description "xen server self hosting assistant"
    :tags ["perl"]))
(hoarder:record "web-hubs/QuickMine"
  '(:description "Implement of Context-Aware Prefetching at the Storage Server"
    :tags ["perl"]))
(hoarder:record "Woody2143/HumbleBundleDL"
  '(:description "Script used to download files from Humble Bundle"
    :tags ["perl"]))
(hoarder:record "sni/Monitoring-TT"
  '(:description "Create Nagios Config Files with Template Toolkit"
    :tags ["perl"]))
(hoarder:record "TLINDEN/beat6"
  '(:description "simple ipv6 http stress tester"
    :tags ["perl" "command-line" "ipv6" "load-testing" "perl-scripts" "perlbrew" "security-tools"]))
(hoarder:record "CpanelInc/mod_fcgid"
  '(:description "EXPERIMENTAL"
    :tags ["perl"]))
(hoarder:record "Sadrak/State-Tracker"
  '(:tags ["perl"]))
(hoarder:record "msimerson/NicTool"
  '(:description "NicTool: a DNS management solution"
    :tags ["perl" "bind" "djbdns" "dns" "dns-zone-manager" "knot-dns" "nsd"]))
(hoarder:record "pcon/MozBot"
  '(:description "A collection of mozbot modules I've written"
    :tags ["perl"]))
(hoarder:record "salva/p5-Net-SFTP-Foreign"
  '(:description "Perl SFTP client"
    :tags ["perl"]))
(hoarder:record "sophia-collaborations/keepawake"
  '(:description "An OS-X chobak-based tool for certain tasks that need the computer to stay awake"
    :tags ["perl"]))
(hoarder:record "SparkeyG/TheMonitor"
  '(:description "WorkSpace for a grapevine replacement"
    :tags ["perl"]))
(hoarder:record "R3solu43/SevenWonders"
  '(:description "A machine learning project using Perl."
    :tags ["perl"]))
(hoarder:record "bucardo/dbdpg"
  '(:description "Perl Postgres driver DBD::Pg aka dbdpg"
    :tags ["perl"]))
(hoarder:record "pepeul1191/perl-dancer-mysql-gestion"
  '(:description "Perl Dancer MySQL"
    :tags ["perl"]))
(hoarder:record "crazy-camel/noxu"
  '(:description "A Bare-Bones YAML Based Build system"
    :tags ["perl"]))
(hoarder:record "kingpong/perl-PDF-WebKit"
  '(:description "Convert HTML to PDF using WebKit (wkhtmltopdf)"
    :tags ["perl"]))
(hoarder:record "crocodil5438/slowloris"
  '(:description "Understanding slowloris DoS/DDoS attack on the web "
    :tags ["perl"]))
(hoarder:record "mitVCU/Eliza"
  '(:description "NLP project in perl"
    :tags ["perl"]))
(hoarder:record "doriantaylor/p5-data-grid"
  '(:description "Data::Grid is yet another generic interface to tabular or grid-shaped data"
    :tags ["perl"]))
(hoarder:record "kjetilk/RDF-LinkedData"
  '(:description "RDF::LinkedData is a Perl module for setting up Linked Data server"
    :tags ["perl"]))
(hoarder:record "HuidaeCho/uniqki"
  '(:description "Uniqki: A Personal Wiki Builder"
    :tags ["perl" "website-builder" "wiki-engine"]))
(hoarder:record "skirmess/App-Dotfiles"
  '(:description "dotf - dotfiles manager"
    :tags ["perl"]))
(hoarder:record "someone-stole-my-name/pa-applet"
  '(:description "pulse applet to control volume and default sink"
    :tags ["perl"]))
(hoarder:record "teuk/mediabot_v2"
  '(:description "perl Net::Async::IRC bot"
    :tags ["perl"]))
(hoarder:record "kensanata/moku-pona"
  '(:description "a gopher aggregator"
    :tags ["perl"]))
(hoarder:record "skirmess/App-SSH-SwitchShell"
  '(:description "Use your preferred shell and own home directory for shared SSH accounts"
    :tags ["perl"]))
(hoarder:record "skirmess/Dist-Zilla-Plugin-AutoPrereqs-Perl-Critic"
  '(:description "automatically extract Perl::Critic policy prereqs"
    :tags ["perl"]))
(hoarder:record "rmdg/string-verification"
  '(:tags ["perl"]))
(hoarder:record "MareoRaft/chessmojo"
  '(:description "Play chess with anybody online :)"
    :tags ["perl"]))
(hoarder:record "doriantaylor/p5-params-registry"
  '(:description "Params::Registry — Housekeeping for sets of named parameters"
    :tags ["perl"]))
(hoarder:record "jfrotz/homebrew-scratchperl5modules"
  '(:description "Experiments creating Raspberry Pi based LinuxBrew tap for Perl modules."
    :tags ["perl"]))
(hoarder:record "jautz/shenv"
  '(:description "Shell Environment: scripts and configuration files."
    :tags ["perl"]))
(hoarder:record "kaare/Role-REST-Client"
  '(:description "Rest Client Role"
    :tags ["perl"]))
(hoarder:record "mikebrittain/Wesley"
  '(:description "Compress and optimize the JPEG, PNG, and GIF files used in your site’s HTML and CSS."
    :tags ["perl"]))
(hoarder:record "opopl/htmltool"
  '(:description "HTML tool"
    :tags ["perl"]))
(hoarder:record "MasterRX08/Lazy-Text-Tool"
  '(:description "Perl Script Performs Some Things on text Files"
    :tags ["perl"]))
(hoarder:record "denny/ShinyCMS"
  '(:description "ShinyCMS is an open source CMS built in Perl using the Catalyst framework."
    :tags ["perl"]))
(hoarder:record "joyent/conch"
  '(:description "Datacenter build and management service"
    :tags ["perl"]))
(hoarder:record "danielcliffordmiller/twilight-imperium-iv-mapper"
  '(:tags ["perl"]))
(hoarder:record "Grinnz/Mojo-DOM58"
  '(:description "Mojo::DOM58 - Minimalistic HTML/XML DOM parser with CSS selectors"
    :tags ["perl"]))
(hoarder:record "ddmitov/mneme"
  '(:description "Mojolicious application for easy memorization of historical facts"
    :tags ["perl" "bootstrap" "html5" "json" "mojolicious-framework" "perl5" "quiz" "single-page-app" "websockets"]))
(hoarder:record "arunbear/Class-DbC"
  '(:description "Add Design By Contract easily and flexibly to existing code."
    :tags ["perl"]))
(hoarder:record "Grinnz/Mojo-JSON-MaybeXS"
  '(:description "Module to use JSON::MaybeXS as the JSON renderer for Mojolicious."
    :tags ["perl"]))
(hoarder:record "ziali088/jsonapi-role"
  '(:description "A Perl role/interface that adds methods to build JSON API compliant data structures"
    :tags ["perl"]))
(hoarder:record "Aioe/postfilter"
  '(:description "An antispam filter for USENET messages "
    :tags ["perl" "inn2" "internetnetnews" "nntp" "usenet"]))
(hoarder:record "IreneMGhob/recipe"
  '(:description "elink recipe code"
    :tags ["perl"]))
(hoarder:record "grubert65/RestAPI"
  '(:description "A very simple perl REST API"
    :tags ["perl"]))
(hoarder:record "localos/PaStExploitLoader"
  '(:description "Simple script for downloading exploits from packetstormsecurity.com"
    :tags ["perl"]))
(hoarder:record "ledger123/runmyaccounts"
  '(:description "SQL-Ledger Customizations by Run My Accounts"
    :tags ["perl"]))
(hoarder:record "robrwo/Net-Statsd-Lite"
  '(:description "A lightweight statsd client that supports multimetric packets"
    :tags ["perl"]))
(hoarder:record "AloisMahdal/minions"
  '(:description "My minions"
    :tags ["perl"]))
(hoarder:record "wet-boew/wet-boew-wpss"
  '(:description "The Web and Open Data Validator (formerly the WPSS Validation Tool) provides web developers and quality assurance testers the ability to perform a number of web site, web page validation and Open data validation tasks at one time."
    :tags ["perl"]))
(hoarder:record "stas53/bookshelf"
  '(:description "Training of a few Perl packeges: Dancer, Dancer::Plugin::DBIC, MySQL connection, Plack::Test"
    :tags ["perl"]))
(hoarder:record "aquinum/lufi"
  '(:description "It's like WeTransfer - forked from https://framagit.org/luc/lufi.git"
    :tags ["perl"]
    :memo "[[https://hooktube.com/watch?v=qHkmuGROzaA][HookTube]]"))
(hoarder:record "aquinum/lstu"
  '(:description "Let's Shorten That URL - It's like goo.gl - forked from https://framagit.org/luc/lstu.git"
    :tags ["perl"]
    :memo "[[https://hooktube.com/watch?v=qHkmuGROzaA][HookTube]]"))
(hoarder:record "https://framagit.org/luc/lutim.git"
  '(:tags ["perl"]
    :memo "[[https://hooktube.com/watch?v=qHkmuGROzaA][HookTube]]"))
(hoarder:record "https://framagit.org/luc/dolomon.git"
  '(:tags ["perl"]
    :memo "[[https://hooktube.com/watch?v=qHkmuGROzaA][HookTube]]"))
(hoarder:record "LorenzoTa/log2fire.pl"
  '(:description "a perl script that parse logs and do (and undo) actions. used as fail2ban to add and then remove firewall rules"
    :tags ["perl"]))
(hoarder:record "667bdrm/owspctl"
  '(:description "owspctl is an open source cross-platform tool and framework to control CPlayer+ compatible China H264 NVR"
    :tags ["perl"]))
(hoarder:record "josiahbryan/appcorepl"
  '(:description "Toolkit of core routines for building web applications in Perl with Class::DBI"
    :tags ["perl"]))
(hoarder:record "ThisUsedToBeAnEmail/Moonshine-Util"
  '(:tags ["perl"]))
(hoarder:record "zzyongx/inflexible-ssh"
  '(:description "If you want to execute specific commands remotely without ssh.  This project can help you."
    :tags ["perl"]))
(hoarder:record "uzluisf/building-a-simple-interpreter"
  '(:tags ["perl"]))
(hoarder:record "AnaTofuZ/p5-webservice-YDMM"
  '(:description "Yet Another DMM API sdk for perl"
    :tags ["perl"]))
(hoarder:record "jhunt/proxy-me"
  '(:description "Manage your Proxy Env Vars with STYLE"
    :tags ["perl"]))
(hoarder:record "nsip/sif-data"
  '(:description "Database Schema and Automatic demonstration data creation"
    :tags ["perl"]))
(hoarder:record "xxfelixxx/shellcheckwiki"
  '(:description "Check the official ShellCheck wiki and display the error page in the terminal."
    :tags ["perl"]))
(hoarder:record "ThisUsedToBeAnEmail/Hazy"
  '(:description "..."
    :tags ["perl"]))
(hoarder:record "laouji/gushue"
  '(:description "convert log output to json and make a itunes receipt verification request"
    :tags ["perl"]))
(hoarder:record "pzlarsson/filesuffix"
  '(:description "Change the suffix of files in a directory using a regular expression"
    :tags ["perl"]))
(hoarder:record "mrcmilano/twitter-incremental-semantic-resource"
  '(:description "Using Twitter to build and update a time-sensitive incremental semantic resource. MSc Thesis project."
    :tags ["perl"]))
(hoarder:record "doriantaylor/p5-role-markup-xml"
  '(:description "Moo(se) role for bolt-on lazy XML markup generation"
    :tags ["perl"]))
(hoarder:record "vphantom/Business-cXML"
  '(:description "Perl implementation of cXML messaging"
    :tags ["perl" "cxml" "perl-module"]))
(hoarder:record "samgianelli/Cognitive-Cache-Tuner"
  '(:description "All code related to the Cognitive Cache Tuner research project"
    :tags ["perl"]))
(hoarder:record "aldrinb/sniff"
  '(:tags ["perl"]))
(hoarder:record "gryphonshafer/Google-Tasks"
  '(:description "Manipulate Google/GMail Tasks"
    :tags ["perl"]))
(hoarder:record "tsadok/jonadabot"
  '(:description "A simple IRC bot that can serve as a personal assistant, issue scheduled reminders, monitor email (via POP3) and server logs, and provide a handful of basic channel services if desired."
    :tags ["perl"]))
(hoarder:record "0xAF/kodi-cli-perl"
  '(:description "Kodi Command Line Interface (CLI) in Perl"
    :tags ["cli" "kodi-api" "kodi-cli-perl" "perl"]))
(hoarder:record "fstltna/bbs-check-status"
  '(:description "Checks the status of the BBSs in the jv-ld system (1.0)"
    :tags ["perl"]))
(hoarder:record "harvard-lts/fits"
  '(:description "File Information Tool Set"
    :tags ["perl"]))
(hoarder:record "PenguinatusMaximus/Temperature-Indicator"
  '(:description "Indicates cpu temperature"
    :tags ["perl"]))
(hoarder:record "kensanata/moku-pona"
  '(:description "a gopher aggregator"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-HTTP-Tiny-Patch-Cache"
  '(:tags ["perl"]))
(hoarder:record "borisbaldassari/data-anonymiser"
  '(:description "A Perl module for data anonymisation"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-throttle"
  '(:tags ["perl"]))
(hoarder:record "hc0d3r/w1r3bot"
  '(:description "Just another irc bot"
    :tags ["perl"]))
(hoarder:record "gibus/radiocroco"
  '(:description "Simple GUI to listen Radio Croco, free radio from Rennes (France) broadcasted on mixlr service"
    :tags ["perl"]))
(hoarder:record "petra-svk/manager-of-money"
  '(:description "A website for managing your money"
    :tags ["perl"]))
(hoarder:record "rootkidz/ddos"
  '(:description "ddos.pl"
    :tags ["ddos" "perl" "script"]))
(hoarder:record "https://gitlab.com/jjatria/Net-Async-MPD.git"
  '(:description ""
    :tags ["perl"]))
(hoarder:record "noirecat/dotfiles"
  '(:description "personal configuration for Archlinux to be powerful desktop using window manager there are includes : openbox, windowchef, 2bwm, dwm."
    :tags ["roff" "windowchef"]
    :memo "[[https://github.com/noirecat/dotfiles/wiki/windowchef-for-dummies][windowchef for dummies · noirecat/dotfiles Wiki · GitHub]]
[[https://www.reddit.com/r/unixporn/comments/7vsxdz/windowchef_the_a_e_s_t_h_e_t_i_c/][Too Many Requests]]
[[https://www.youtube.com/watch?v=iuKz70o65yM&feature=youtu.be][Windowchef Simulation with Clickable Workspace - YouTube]]"))
(hoarder:record "spage/RhymeDict"
  '(:tags ["perl"]))
(hoarder:record "caianrais/kpclix"
  '(:tags ["perl"]))
(hoarder:record "andrewwyatt/photonbbs"
  '(:description "Simple UNIX / Linux BBS like server"
    :tags ["perl"]))
(hoarder:record "yaxarat/doi_finder"
  '(:description "finds doi (digital object identifier) strings from txt files"
    :tags ["perl"]))
(hoarder:record "ValiValpas/taskopen"
  '(:description "Script for taking notes and open urls with taskwarrior"
    :tags ["perl"]))
(hoarder:record "mschout/perl-log-dispatch-filerotate"
  '(:description "Log to files that archive/rotate themselves"
    :tags ["perl"]))
(hoarder:record "bk/pdc"
  '(:description "pandoc command line wrapper"
    :tags ["perl"]))
(hoarder:record "mattcaron/media_management"
  '(:description "Scripts to manage media (syncing music and podcasts)"
    :tags ["perl"]))
(hoarder:record "cerndb/dbod-core"
  '(:description "DB On Demand management infrastructure core library"
    :tags ["perl"]))
(hoarder:record "singingfish/p5-array-circular"
  '(:description "Circular Array in Perl 5"
    :tags ["perl"]))
(hoarder:record "heiseonline/shariff-backend-perl"
  '(:description "Perl (Mojolicious) backend for Shariff. Shariff enables website users to share their favorite content without compromising their privacy."
    :tags ["backend" "mojolicious" "perl" "privacy" "shariff"]))
(hoarder:record "wohldad/AI-Genetic-Parallel"
  '(:tags ["perl"]))
(hoarder:record "agapoff/WikiLumper"
  '(:description "The tool for migrating Dokuwiki and XWiki to Atlassian Confluence"
    :tags ["perl"]))
(hoarder:record "tupinek/Random-Day"
  '(:description "Class for random day generation"
    :tags ["perl"]))
(hoarder:record "tupinek/Random-Set"
  '(:description "Class for random set generation."
    :tags ["perl"]))
(hoarder:record "uricle/tiarra-modules"
  '(:tags ["perl"]))
(hoarder:record "miyagawa/cpanmetadb-perl"
  '(:description "CPANMetaDB in Starman and Plack with Carmel"
    :tags ["perl"]))
(hoarder:fetch "miyagawa/plagger"
  '(:description "Pluggable RSS/Atom aggregator"
    :tags ["perl"]
    :memo "[[http://www.otsune.com/fswiki/plagger.html][plagger - otsune FreeStyleWiki]]"))
(hoarder:record "miyagawa/CGI-PSGI"
  '(:description "Enable PSGI in your CGI.pm aware apps"
    :tags ["perl"]))
(hoarder:record "miyagawa/xml-atom"
  '(:description "XML::Atom perl module"
    :tags ["perl"]))
(hoarder:record "miyagawa/web-oembed"
  '(:description "oEmbed consumer"
    :tags ["perl"]))
(hoarder:record "miyagawa/plex-hacks"
  '(:description "misc. hacks for Plex http://www.plexapp.com/"
    :tags ["perl"]))
(hoarder:record "miyagawa/URI-Find-UTF8"
  '(:description "Finds URI from UTF-8 text using unencoded path"
    :tags ["perl"]))
(hoarder:record "saiftynet/GUIDeFATE"
  '(:description "GUI Design From A Text Editor"
    :tags ["perl"]
    :memo "[[https://www.reddit.com/r/perl/comments/7w8knt/an_ultrasimple_gui_creator_module_designed_by_a/][An Ultra-simple GUI creator module, designed by a noob for noobs. : perl]]
[[https://github.com/saiftynet/GUIDeFATE/wiki/Rock-Paper-Scissors-Lizard-Spock][Rock Paper Scissors Lizard Spock · saiftynet/GUIDeFATE Wiki · GitHub]]"))
(hoarder:record "potyl/Webkit"
  '(:description "Having fun with WebKit"
    :tags ["perl"]
    :memo "[[https://www.reddit.com/r/perl/comments/7w7j0c/what_is_the_properbest_way_of_using_perl_to/][What is the proper/best way of using Perl to scrape JavaScript-powered sites? : perl]]"))
(hoarder:record "cpansprout/www-scripter"
  '(:tags ["perl"]
    :memo "[[https://www.reddit.com/r/perl/comments/7w7j0c/what_is_the_properbest_way_of_using_perl_to/][What is the proper/best way of using Perl to scrape JavaScript-powered sites? : perl]]"))
(hoarder:record "jberger/Mojo-Chrome"
  '(:description "A Mojo interface to Chrome DevTools Protocol"
    :tags ["perl"]
    :memo "[[https://www.reddit.com/r/perl/comments/7w7j0c/what_is_the_properbest_way_of_using_perl_to/][What is the proper/best way of using Perl to scrape JavaScript-powered sites? : perl]]"))
(hoarder:record "Corion/www-mechanize-phantomjs"
  '(:description "Automate Javascript/Ajax websites with Perl and PhantomJS"
    :tags ["javascript" "mechanize" "perl" "phantomjs"]))
(hoarder:record "damor4321/cfilter"
  '(:description "Advanced Postfix content filter in Perl, ready for production systems"
    :tags ["perl"]))
(hoarder:record "Dehamo/Web-scraping"
  '(:description "Scraping from tripadvisor.it"
    :tags ["perl"]))
(hoarder:record "cafe01/dbix-eav"
  '(:description "Entity-Attribute-Value data modeling for Perl"
    :tags ["perl"]))
(hoarder:record "pepeul1191/perl-mojo-unqlite"
  '(:description "Perl Mojo::Lite UnQLite "
    :tags ["perl"]))
(hoarder:record "tokuhirom/UnQLite"
  '(:description "Perl5 bindings for Unqlite."
    :tags ["c"]))
(hoarder:record "pianodaemon/perlmania"
  '(:description "It is just a place where to place something"
    :tags ["perl"]))
(hoarder:record "melnik13/monkeyman"
  '(:description "A cool library and set of tools to manage your CloudStack installation"
    :tags ["apache-cloudstack" "perl"]))
(hoarder:record "snkoehn/perlSteemit"
  '(:description "implementation of the steemit api"
    :tags ["perl"]))
(hoarder:record "memowe/EventStore-Tiny"
  '(:description "A minimal event sourcing framework"
    :tags ["event-sourcing" "framework" "minimal" "perl"]))
(hoarder:record "wakco/ServiceLogin"
  '(:description "znc network perl module for logging into Gnuworld irc services such as X on Undernet."
    :tags ["perl"]))
(hoarder:record "mnott/texdown"
  '(:tags ["perl"]))
(hoarder:record "remrain/cmusic"
  '(:description "CMusic, search, download music from internat and play it"
    :tags ["perl"]))
(hoarder:record "hkoba/perl-mop4import-declare"
  '(:description "MOP4Import - Meta Object Protocol for \"import\", aimed at Composable Exporter for Perl."
    :tags ["perl"]))
(hoarder:record "coandco/sequential_comics"
  '(:description "A collection of bash, Perl, and PHP scripts to grab and display comics in a sequential fashion"
    :tags ["perl"]))
(hoarder:record "shopyourway/file-content-linter"
  '(:description "Validation of file content for Continuous Integration"
    :tags ["perl"]))
(hoarder:record "western/get_postgresql"
  '(:description "Get last stable PostgreSQL version and build"
    :tags ["perl" "postgresql"]))
(hoarder:record "nohuhu/DT"
  '(:description "Perl DT module"
    :tags ["perl"]))
(hoarder:record "mjdominus/DateTime-Moonpig"
  '(:description "A sanity-preserving wrapper around DateTime, taken from the Moonpig project"
    :tags ["perl"]))
(hoarder:record "unixtools/mysql"
  '(:description "MySQL Deployment Structure"
    :tags ["perl"]))
(hoarder:record "xxfelixxx/perl-devel-scope"
  '(:description "Scope based debugging for perl."
    :tags ["debugging-tool" "perl" "perl5-module"]))
(hoarder:record "cade-vs/evolver"
  '(:description "Evolver is perl-based static web site generator"
    :tags ["perl"]))
(hoarder:record "dworzanski/everyauction"
  '(:description "EveryAuction is an auction website script written in Perl. EveryAuction was created by Matt Hahnfeld of EverySoft."
    :tags ["perl"]))
(hoarder:record "skaji/App-RemoteCommand"
  '(:description "simple remote command launcher via ssh"
    :tags ["perl"]))
(hoarder:record "jsnell/terra-mystica"
  '(:description "Online Terra Mystica"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-berkala"
  '(:tags ["perl"]))
(hoarder:record "WendelHime/teste_minionDB"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-App-shcompgen"
  '(:tags ["perl"]))
(hoarder:record "miklosban/mwrap"
  '(:description "mplayer-wrapper - a simple video analysis tool"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-CompleteUtils"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-App-lcpan"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-App-GoogleAuthUtils"
  '(:tags ["perl"]))
(hoarder:record "kuerbis/Term-Form"
  '(:tags ["perl"]))
(hoarder:record "famzah/ping-multi"
  '(:description "Interactively ping multiple hosts"
    :tags ["perl" "console-application" "multi-platform" "ping"]))
(hoarder:record "sbakker/perl-Term-CLI"
  '(:description "CLI interpreter based on Term::ReadLine"
    :tags ["perl"]))
(hoarder:record "steppicrew/rabak"
  '(:description "A reliable rsync based backup system, simple to configure, simple to run, simple to restore data"
    :tags ["perl"]))
(hoarder:record "Kshisa/Kshisa1973"
  '(:description "Perl-Catalyst web-prog  social network"
    :tags ["perl"]))
(hoarder:record "silnrsi/text-pdf"
  '(:description "Text::PDF perl module"
    :tags ["perl"]))
(hoarder:record "iafan/JSON-Streaming-Reader"
  '(:description "Fork of JSON::Streaming::Reader with support for unescaping \\uXXXX "
    :tags ["perl"]))
(hoarder:record "hkoba/yatt-pm"
  '(:description "(Now superseded by YATT::Lite) YATT, Yet Another Template Toolkit."
    :tags ["perl"]))
(hoarder:record "mschout/perl-text-template"
  '(:description "Expand template text with embedded Perl"
    :tags ["perl"]))
(hoarder:record "Pluxbox/radiomanager-perl-client"
  '(:description "Pluxbox RadioManager Perl 2/3 client for API v2"
    :tags ["perl"]))
(hoarder:record "trizen/obbrowser"
  '(:description "Recursively browse the filesystem through Openbox pipe menus (with icons)."
    :tags ["perl" "file-browser" "openbox" "pipe-menus"]))
(hoarder:record "joeystevens00/ZenPaste"
  '(:description "Simple Paste API"
    :tags ["perl"]))
(hoarder:record "yama-natuki/kakuyomu-dl"
  '(:description "カクヨムの投稿小説を青空文庫形式に変換してダウンロードする。"
    :tags ["perl" "aozorabunko" "downloader"]))
(hoarder:record "wayan/Validate-Pygmy"
  '(:description "Validate::Tiny like validator with validation of nested fields"
    :tags ["perl"]))
(hoarder:record "bigpresh/bot-basicbot"
  '(:description "Simple IRC bot base class"
    :tags ["perl"]))
(hoarder:record "yuvapawan/Images-downloader-From-Search-Engine-DuckDuckGo"
  '(:tags ["perl"]))
(hoarder:record "chrisjrob/slugrat"
  '(:description "IRC Event Organiser"
    :tags ["perl"]))
(hoarder:record "1nn3/feedmailer"
  '(:description "A Feed-Aggregator (RSS/Atom to email gateway)"
    :tags ["perl"]))
(hoarder:record "MickeyLane/Views"
  '(:description "Cross-platform security camera software"
    :tags ["perl"]))
(hoarder:record "oalders/lwp-consolelogger"
  '(:description "Easy LWP tracing and debugging"
    :tags ["perl"]))
(hoarder:record "ology/App-MIDI-Ngram"
  '(:description "Perl Dancer App to play the top repeated phrases of a MIDI file"
    :tags ["perl"]))
(hoarder:record "nylen/scripts-dyndns"
  '(:description "Scripts that assist with updating a DynDNS hostname and other related tasks."
    :tags ["perl"]))
(hoarder:record "debug-ito/Plack-App-WebSocket"
  '(:description "WebSocket server as a PSGI application"
    :tags ["perl"]))
(hoarder:record "ObjectMatrix/perl_search"
  '(:tags ["perl"]))
(hoarder:record "stevieb9/github-backup"
  '(:description "Back up your Github data locally"
    :tags ["perl"]))
(hoarder:record "binary-com/translations-websockets-api"
  '(:description "Language files for Binary.com Websockets API service"
    :tags ["perl"]))
(hoarder:record "crjens/PhotoFrame"
  '(:description "personal photoframe"
    :tags ["perl"]))
(hoarder:record "kwakwaversal/moo-role-tojson"
  '(:description "a Moo role for a TO_JSON method"
    :tags ["perl"]))
(hoarder:record "tgaillar/ChronoDraw"
  '(:description "ChronoDraw converts a plain-text waveforms description into a shiny SVG timing diagram"
    :tags ["perl"]))
(hoarder:record "outtaspace/jip_guard"
  '(:description "Data validation in Perl"
    :tags ["data-valdiation" "data-validator" "perl" "perl-module" "perl5" "perl5-module"]))
(hoarder:record "szabgab/try-perl-on-travis"
  '(:description "Testing Perl constructs"
    :tags ["perl"]))
(hoarder:record "swuecho/WebService_MerriamWebster"
  '(:description "WebService::MerriamWebster - use Merriam-Webster dictionary API in Perl"
    :tags ["perl"]))
(hoarder:record "tokuhirom/App-scan_prereqs_cpanfile"
  '(:description "Scan prerequisite modules and generate CPANfile"
    :tags ["perl"]))
(hoarder:record "Songmu/p5-Test-Requires-Scanner"
  '(:tags ["perl"]))
(hoarder:record "digint/filewiki"
  '(:description "A simple but powerful web site generator"
    :tags ["perl" "website-builder" "website-generation"]))
(hoarder:record "stevieb9/p5-plugin-simple"
  '(:description "Import plugins into your module dynamically"
    :tags ["perl"]))
(hoarder:record "ink-ru/web_crawlers"
  '(:description "Web site crawlers (portable, multiplatform, Perl)"
    :tags ["perl"]))
(hoarder:record "stevieb9/p5-app-copyrightimage"
  '(:tags ["perl"]))
(hoarder:record "liuliancao/beautiful-test"
  '(:description "beautiful-test for autotests"
    :tags ["perl"]))
(hoarder:record "skx/dns-api.org"
  '(:description "Simple DNS API server"
    :tags ["dns" "perl" "website"]))
(hoarder:record "biell/alti-server"
  '(:description "Altitude game server wrapper"
    :tags ["perl"]))
(hoarder:record "fkrueger/check_quota"
  '(:description "This scripts allows you to check the quota for a specific user, a specific group or all quota users (based on the repquota output), or the dirquota output for directories in Windows systems."
    :tags ["perl"]))
(hoarder:record "jonasbn/Games-Bingo"
  '(:description "Release history of Games-Bingo"
    :tags ["perl"]))
(hoarder:record "jonasbn/perl-date-holidays"
  '(:description "Date::Holidays - national holidays adapter/aggregator for all your holiday needs"
    :tags ["holiday-calculation" "holidays" "perl" "perl-module" "perl5"]))
(hoarder:record "lancew/Scientist"
  '(:description "Perl 5 Scientist - Test new code against old"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=qOWsqC6mZKQ][Lance Wicks: Refactoring with Statsd, Toggle and Scientist‎ - YAPC::Europe 2016 - YouTube]]"))
(hoarder:record "Kuroneer/urxvt-buffer2vim"
  '(:description "urxvt extension to open the current buffer in vim"
    :tags ["perl" "urxvt" "vim"]))
(hoarder:record "reneeb/talk-APIs-With-Perl"
  '(:description "talk about building APIs with Perl"
    :tags ["perl"]))
(hoarder:record "merrilymeredith/p5-Mojolicious-Plugin-AutoSecrets"
  '(:description "Automatic, Rotating Mojolicious Secrets"
    :tags ["perl"]))
(hoarder:record "dcx86r/kakaro"
  '(:description "A kana/kanji to romaji converter"
    :tags ["perl"]))
(hoarder:record "dgerzo/bruteforceblocker"
  '(:description "BruteForceBlocker is a perl script, that works along with pf firewall. Its main purpose is to block SSH bruteforce attacks via firewall."
    :tags ["bruteforce" "freebsd" "netbsd" "openbsd" "openssh" "perl" "pf" "ssh"]))
(hoarder:record "simonamor/catalyst-example-fork"
  '(:description "Totally broken and bad way of doing this - do not copy! :)"
    :tags ["perl"]))
(hoarder:record "gibus/radiocroco"
  '(:description "Simple GUI to listen Radio Croco, free radio from Rennes (France) broadcasted on mixlr service"
    :tags ["perl"]))
(hoarder:record "haxmeister/irssi-wgetpaste"
  '(:description "A plugin for irssi that allows you to paste files using wgetpaste and post the result"
    :tags ["perl"]))
(hoarder:record "PerlDancer/Dancer-Session-Cookie"
  '(:description "Encrypted cookie-based session backend for Dancer"
    :tags ["cookie" "dancer" "perl" "session"]))
(hoarder:record "Athanasius/ed-devtracker"
  '(:description "Scraper and RSS generation for Frontier Developments (makers of Elite: Dangerous) forum developer posts."
    :tags ["perl"]))
(hoarder:record "revmischa/rtsp-server"
  '(:description "Lightweight RTSP/RTP streaming media server"
    :tags ["perl"]))
(hoarder:record "rra/docknot"
  '(:description "Generate standardized package documentation"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-AppBase-Grep-ColorSchemes-Kuler"
  '(:tags ["perl"]))
(hoarder:record "jberger/Mojo-IOLoop-ForkCall"
  '(:description "Execute a code block asynchronously by forking"
    :tags ["perl"]))
(hoarder:record "aferreira/cpan-Term-Size-Perl"
  '(:description "Term::Size::Perl - Perl extension for retrieving terminal size (Perl version)"
    :tags ["perl"]))
(hoarder:record "jberger/Mojo-Phantom"
  '(:description "PhantomJS client-side testing for Mojolicious apps"
    :tags ["perl"]))
(hoarder:record "THEMA-MEDIA/LWP-UserAgent-Caching-Simple"
  '(:description "Using LWP::UserAgent with a built-in Cache - speedy and simple"
    :tags ["perl"]))
(hoarder:record "GrantStreetGroup/DBIx-BatchChunker"
  '(:description "Run large database changes safely"
    :tags ["perl"]))
(hoarder:record "shlomif/perl-WWW-REST"
  '(:description "The WWW::REST CPAN Dist"
    :tags ["perl"]))
(hoarder:record "maitag/peote-proxy"
  '(:description "bridge haxe sockets through a perl waterfile ( webbrowser-neadle )"
    :tags ["perl" "forward-proxy" "network-programming" "perl5" "tcp"]))
(hoarder:record "shikadilord/valen"
  '(:description "Wesnoth Site Status service front-end and back-end components."
    :tags ["perl"]))
(hoarder:record "majensen/dbd-neo4p"
  '(:description "DBD::Neo4p - DBI Driver interface for REST::Neo4p"
    :tags ["perl"]))
(hoarder:record "stuartcarroll/perl-portscan"
  '(:description "A perl script to check if a TCP port is open from a specified source and destination IP entered using CLI paramters"
    :tags ["perl"]))
(hoarder:record "ctrlo/Brass"
  '(:description "Brass management system"
    :tags ["perl"]))
(hoarder:record "Corion/DBIx--RunSQL"
  '(:description "run SQL from a file"
    :tags ["perl"]))
(hoarder:record "xing/curl-useragent"
  '(:description "UserAgent based on libcurl"
    :tags ["perl"]))
(hoarder:record "waldner/tws"
  '(:description "Simple file sharing over HTTP with no setup and no cleanup required"
    :tags ["perl"]))
(hoarder:record "Iril/collect_tv_shows.pl"
  '(:description "The TV Show collection routine"
    :tags ["perl"]))
(hoarder:record "chrisjwilliams/paf"
  '(:description "A Perl Application Framwork"
    :tags ["perl"]))
(hoarder:record "hotaru2k3/tinybb3"
  '(:description "anonymous bbs with shiichan compatible subject.txt and json, per-thread atom feeds, and gopher interface"
    :tags ["perl"]))
(hoarder:record "wessels/adns-lookup-perl"
  '(:description "Perl script implementing asynchronous DNS lookups using Net::DNS"
    :tags ["perl"]))
(hoarder:record "djerius/Data-Record-Serialize"
  '(:description "Flexible serialization of records"
    :tags ["perl"]))
(hoarder:record "nrfulton/clustering.pl"
  '(:description "Some clustering stuff from undergrad implemented in perl."
    :tags ["perl"]))
(hoarder:record "itsamenathan/libnotify-over-ssh"
  '(:description "Client-Server setup over ssh using remote port forwarding"
    :tags ["perl"]))
(hoarder:record "domm/CtrlO-Crypt-XkcdPassword"
  '(:description "Yet another XKCD style password generator"
    :tags ["perl"]))
(hoarder:record "pink-mist/sbotools"
  '(:description "provides a ports-like interface to slackbuilds.org"
    :tags ["perl"]))
(hoarder:record "plicease/File-Which"
  '(:description "Portable implementation of the `which' utility"
    :tags ["perl"]))
(hoarder:record "jib/ipc-cmd"
  '(:tags ["perl"]))
(hoarder:record "ColMelvin/time-stats"
  '(:description "Perform statistical operations on the output of time(1)"
    :tags ["perl"]))
(hoarder:record "denisix/specs"
  '(:description "Obtain server hardware information (Mobo, CPU, HDD, RAM)"
    :tags ["perl"]))
(hoarder:record "borekl/cvs-logwatcher"
  '(:description "Network devices (routers, switches etc.) configuration repository tool"
    :tags ["perl"]))
(hoarder:record "djordje-kasagic/gridmaker"
  '(:description "A simple command line utility for generating SVG grids"
    :tags ["perl"]))
(hoarder:record "rrthomas/wiklet"
  '(:description "A simple wiki"
    :tags ["perl"]))
(hoarder:record "FrozGR/XChat-SNotices-Segregation"
  '(:description "Server Notices Segregation perl script for XChat"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-JSON-Decode-Regexp"
  '(:tags ["perl"]))
(hoarder:record "liskin/google_cal_sync"
  '(:description "A few Perl scripts I use to synchronize various data into Google Calendar"
    :tags ["perl"]))
(hoarder:record "LibreCat/Catmandu-Identifier"
  '(:description "Namespace for handling/fixing identifier, e.g. ISBN, ISSN"
    :tags ["perl"]))
(hoarder:record "ciderpunx/twitrssme"
  '(:description "TwitRSS.me: Tool to make Twittter timelines and searches into RSS feeds"
    :tags ["perl"]))
(hoarder:record "zhou0/shadowsocks-perl"
  '(:description "An asynchronous, non-blocking shadowsocks client and server written in Perl."
    :tags ["censorship-circumvention" "cpan" "docker" "great-firewall" "perl" "shadowsocks" "socks" "tunnel"]))
(hoarder:record "Nikokatsu/proxy"
  '(:tags ["perl"]))
(hoarder:record "ballab1/files-librd"
  '(:tags ["perl"]))
(hoarder:record "acli/stupid-macbook-tools"
  '(:description "This is just a collection of teeny scripts I’ve hacked together to get some info when I’m at the Linux (Ubuntu) command line."
    :tags ["perl"]))
(hoarder:record "greatmazinger/weechat-scripts"
  '(:tags ["perl"]))
(hoarder:record "dataegret/pg-utils"
  '(:description "Useful PostgreSQL utilities "
    :tags ["perl"]))
(hoarder:record "davepacheco/jsstyle"
  '(:description "cstyle-based JavaScript style checker"
    :tags ["perl"]))
(hoarder:record "Grinnz/Unix-Groups-FFI"
  '(:description "Unix::Groups::FFI - Interface to Unix group syscalls"
    :tags ["perl"]))
(hoarder:record "sysread/URI-Fast"
  '(:description "Low cost, high value URI parsing for Perl"
    :tags ["perl"]))
(hoarder:record "4FriendsForum/FCom"
  '(:description "Blog-Beiträge"
    :tags ["perl"]))
(hoarder:record "jwilk/localehelper"
  '(:description "generate locales and set internationalization environment variables"
    :tags ["perl"]))
(hoarder:record "dbsrgits/dbix-class-schema-loader"
  '(:description "Official GitHub remote for git.shadowcat.co.uk DBIx-Class-Schema-Loader.git"
    :tags ["perl"]))
(hoarder:record "thrig/Algorithm-Toy-HashSC"
  '(:description "toy separate chain hash implementation for Perl"
    :tags ["perl"]))
(hoarder:record "thrig/Term-TtyWrite"
  '(:description "remote control a terminal via the TIOCSTI ioctl"
    :tags ["perl"]))
(hoarder:record "thrig/Term-CallEditor"
  '(:description "Solicit data from an external editor in a Perl program"
    :tags ["perl"]))
(hoarder:record "thrig/Music-VoiceGen"
  '(:description "musical voice generation"
    :tags ["perl"]))
(hoarder:record "thrig/Lingua-Awkwords"
  '(:description "randomly generates outputs from a given pattern"
    :tags ["perl"]))
(hoarder:record "thrig/File-ReplaceBytes"
  '(:description "perform unsavory system calls related to file I/O"
    :tags ["perl"]))
(hoarder:record "thrig/File-Cmp"
  '(:description "Perl module to compare two files character by character like cmp(1)"
    :tags ["perl"]))
(hoarder:record "thrig/File-AtomicWrite"
  '(:description "writes files atomically via rename() in Perl"
    :tags ["perl"]))
(hoarder:record "thrig/Data-Dumper-Concise-Aligned"
  '(:description "Really compact data dumping with string prefixes."
    :tags ["perl"]))
(hoarder:record "thrig/Config-OpenSSH-Authkey"
  '(:description "Parsing of OpenSSH authorized_keys data in Perl"
    :tags ["perl"]))
(hoarder:record "hardaker/taskmastery"
  '(:description "A command line utility to run a collection of tasks"
    :tags ["perl"]))
(hoarder:record "mad-ady/smokeping-speedtest"
  '(:description "Smokeping::probes::speedtest"
    :tags ["perl"]))
(hoarder:record "frioux/Syntax-Keyword-Gather"
  '(:description "Implements the Perl 6 'gather/take' control structure in Perl 5"
    :tags ["perl"]))
(hoarder:record "Libriotech/ftp2koha"
  '(:description "Download MARC records from an FTP site and load them into Koha"
    :tags ["perl"]))
(hoarder:record "metacpan/metacpan-api"
  '(:description "A free, open API for everything you want to know about CPAN"
    :tags ["perl"]))
(hoarder:record "pjuhasz/wt"
  '(:description "command line work log client"
    :tags ["perl"]))
(hoarder:record "mudler/Mojo-IOLoop-ReadWriteProcess"
  '(:description "Execute external programs or internal code blocks as separate process"
    :tags ["perl"]))
(hoarder:record "djzort/Net-DHCP"
  '(:description "Perl module Net::DHCP"
    :tags ["perl"]))
(hoarder:record "grepwood/mtp-dump"
  '(:description "Dumps the contents of a device connected with MTP"
    :tags ["perl"]))
(hoarder:record "imagetyperz-api/imagetyperz-api-perl"
  '(:description "imagetyperz-api-perl - is a super easy to use bypass captcha API wrapper for imagetyperz.com captcha service"
    :tags ["perl"]))
(hoarder:record "plu/Pithub"
  '(:description "Perl Github v3 API"
    :tags ["perl"]))
(hoarder:record "maitag/peote-server"
  '(:description "perl tcp-server just with joint-protocol"
    :tags ["perl" "forwarding" "network-programming" "perl5" "server" "tcp"]))
(hoarder:record "profplump/UberZach-Video"
  '(:tags ["perl"]))
(hoarder:record "qwerasd205/CakeEncryption"
  '(:description "Example of a method of encrypting text strings using a large pre-shared chunk of a data."
    :tags ["perl"]))
(hoarder:record "moonlight2521/Eliza"
  '(:description "Eliza chatbot"
    :tags ["perl"]))
(hoarder:record "sgoldthorpe/karmalb"
  '(:description "Karma Load Balancer - community repoduction of Zen Load Balancer"
    :tags ["perl"]))
(hoarder:record "aldrinb/sniff2"
  '(:tags ["perl"]))
(hoarder:record "rurban/cannes-rurban.rhcloud.com"
  '(:description "Dancer app for collected film festival reviews and ratings"
    :tags ["perl"]))
(hoarder:record "majensen/jsonize"
  '(:description "JSONize.pm - Use JSON easily in one-liners"
    :tags ["perl"]))
(hoarder:record "kwakwaversal/docker-cpan-minion"
  '(:description "admin interface build for Minion - https://metacpan.org/pod/Minion"
    :tags ["docker" "minion" "perl"]))
(hoarder:record "BrighBrigh/maelstrom-ip"
  '(:description "An IP connection muddler written in Perl"
    :tags ["perl"]))
(hoarder:record "chinarulezzz/gmusicbrowser-crz"
  '(:description "Personal fork of gmusicbrowser with a several patches"
    :tags ["gmusicbrowser" "gstreamer" "mpg123" "mplayer" "mpv" "music-player" "perl"]))
(hoarder:record "perhunter/slurp"
  '(:description "File::Slurp - Perl module to read/write/edit whole files easily and efficiently"
    :tags ["perl"]))
(hoarder:record "oklas/p5-JSON-RPC2-AnyEvent-Client"
  '(:description "Perl nonblocking JSON RPC2 client with method mapping"
    :tags ["perl"]))
(hoarder:record "jonasbn/yak"
  '(:description "Yet another... argh - just a yak shaving tool"
    :tags ["perl" "yak" "yak-shave" "yak-shaving"]))
(hoarder:record "M0ses/Net-OBS-Client"
  '(:tags ["perl"]))
(hoarder:record "amsdard/yake"
  '(:tags ["perl"]))
(hoarder:record "bmeme/memento"
  '(:description "Memento is a development workflow orchestrator in Perl"
    :tags ["perl"]))
(hoarder:record "pinkforest/perl-pcaputil"
  '(:description "Misc Packet Capture utilities in Perl"
    :tags ["perl"]))
(hoarder:record "fulxie/ThreadQueue"
  '(:description "a lightweight wrapper of Perl Thread Queue"
    :tags ["perl"]))
(hoarder:record "pink-mist/perl-IPC-Tiny"
  '(:tags ["perl"]))
(hoarder:record "hamishcoleman/cjdns_tool"
  '(:description "Talk to the cjdns admin interface on a super minimal debian system - without installing any packages"
    :tags ["perl"]))
(hoarder:record "eaobservatory/perl-App-SourcePlot"
  '(:description "A simple astronomical source plotter"
    :tags ["perl" "tk"]))
(hoarder:record "teddywing/irssi-dimpid"
  '(:description "Dim a list of nicks by making their message colour grey"
    :tags ["perl"]))
(hoarder:record "littleurl/Net-REST"
  '(:description "RESTful API implementations in perl"
    :tags ["perl"]))
(hoarder:record "koorchik/FastNotes-Proto"
  '(:description "Trying mojolicious"
    :tags ["javascript"]))
(hoarder:record "SupervisedThinking/crazycat"
  '(:tags ["perl"]))
(hoarder:record "ziali088/jsonapi-document"
  '(:description "DBIx -> JSON API document converter"
    :tags ["perl"]))
(hoarder:record "gehll275/TidyShell"
  '(:description "Program to tidy/beauty/pretty up POSIX, Korn, and BASH scripts"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-cpanm-perlancar"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-Module-Load-In-INIT"
  '(:tags ["perl"]))
(hoarder:record "kud/jpegrescan"
  '(:description "JPEGrescan: losslessly shrink any JPEG file."
    :tags ["perl"]))
(hoarder:record "fstltna/bbs_utils"
  '(:description "Command-line utilities for the SBBS BBS software (1.12)"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-CreateAcmeCPANModulesImportModules"
  '(:tags ["perl"]))
(hoarder:record "Grinnz/Mojolicious-Plugin-SetUserGroup"
  '(:description "Mojolicious::Plugin::SetUserGroup - Mojolicious plugin to set unprivileged credentials"
    :tags ["perl"]))
(hoarder:record "rdgarfinkel/mediacollection"
  '(:description "simple data display/management for physical and digital music, video (movies/tv), books, and games collections"
    :tags ["perl" "books" "collection" "database" "database-management" "game" "management" "media" "movie" "music" "video"]))
(hoarder:record "bluehive/rss-m"
  '(:tags ["perl"]))
(hoarder:record "thea-leake/multi-tmux"
  '(:description "tmux multiplexer perl script"
    :tags ["perl"]))
(hoarder:record "rra/podlators"
  '(:description "Format POD source into various output formats"
    :tags ["perl"]))
(hoarder:record "toddfries/ReadConf"
  '(:description "a tiny wrapper around Tiny::Config"
    :tags ["perl"]))
(hoarder:record "littleurl/XML-NmapParser"
  '(:description "a nmap XML parser for perl using XML::LibXML for the heavy XML lifting"
    :tags ["perl"]))
(hoarder:record "jhthorsen/mojo-transmission"
  '(:description "Client for talking with Transmission BitTorrent daemon"
    :tags ["perl"]))
(hoarder:record "glabmoris/PoliticalBullshitGenerator"
  '(:description "Generates bullshit political slogans"
    :tags ["perl"]))
(hoarder:record "gregory-nisbet/perl-sexplib"
  '(:description "Poor-quality, unusable s-expression parser."
    :tags ["perl"]))
(hoarder:record "horgh/checksummer"
  '(:description "A program to monitor for silent file corruption"
    :tags ["perl"]))
(hoarder:record "mairaxb/Perl-Vetenary-Database"
  '(:description "Perl & SQL Master1 Project"
    :tags ["perl"]))
(hoarder:record "exodist/Importer"
  '(:description "Counterpart to Exporter.pm"
    :tags ["perl"]))
(hoarder:record "aindilis/frdcsa-dashboard"
  '(:description "Applets and Systray to show AI's status"
    :tags ["perl"]))
(hoarder:record "t-a-y-l-o-r/Perl-DB"
  '(:description "A simple perl5 database using SDBD"
    :tags ["perl"]))
(hoarder:record "holygeek/wmgr"
  '(:description "Helper scripts for managing a bunch of terminal windows"
    :tags ["perl"]))
(hoarder:record "Taryck/idrive"
  '(:description "idrive scripts (perl)"
    :tags ["perl"]))
(hoarder:record "TheLancashireman/dhMuse"
  '(:description "A collection of scripts for managing my music collection"
    :tags ["perl"]))
(hoarder:record "craigfearnsides/nmap-webhook"
  '(:description "This is a small Dancer2 web server to act as a front for NMAP::Parser"
    :tags ["perl"]))
(hoarder:record "TheLancashireman/gallery"
  '(:description "Collection of scripts for photo album website etc."
    :tags ["perl"]))
(hoarder:record "kristov/kwikmail"
  '(:description "Perl mail client"
    :tags ["perl"]))
(hoarder:record "Songmu/Acme-Songmu"
  '(:tags ["perl"]))
(hoarder:record "GlueDB/GlueTaskmanager"
  '(:tags ["perl"]))
(hoarder:record "mueschel/OsmDestinationToSVG"
  '(:description "Render OSM destination tags as SVG graphics"
    :tags ["perl"]))
(hoarder:record "korero/korero-spell"
  '(:description "A simple web interface to Hunspell"
    :tags ["perl"]))
(hoarder:record "aindilis/kbfs"
  '(:description "Knowledge Based File System"
    :tags ["perl"]
    :memo "[[http://frdcsa.org/frdcsa/internal/kbfs/][FRDCSA: KBFS]]"))
(hoarder:record "perlancar/perl-App-cpanminus-script-Patch-RunShcompgen"
  '(:tags ["perl"]))
(hoarder:record "taylordawson/Setup-Git-Repository"
  '(:description "Sets up a standard file structure for Perl/Python scripts and modules"
    :tags ["perl"]))
(hoarder:record "zzamboni/grabcartoons"
  '(:description "GrabCartoons is a comic-summarizing utility. It is modular, and it is very easy to write modules for new comics.  "
    :tags ["perl"]))
(hoarder:record "fockjef/console-image-viewer"
  '(:description "view images in a terminal"
    :tags ["perl"]))
(hoarder:record "omniosorg/pkgmgr"
  '(:description "IPS package management/publishing tool."
    :tags ["perl"]))
(hoarder:record "bucardo/tail_n_mail"
  '(:description "Logfile watcher focused on Postgres logs"
    :tags ["perl" "email-notification" "logfile" "monitoring" "postgresql"]))
(hoarder:record "rra/control-archive"
  '(:description "Processing and archiving of Netnews control messages"
    :tags ["perl"]))
(hoarder:record "ivanwills/App-PasswdMgr"
  '(:description "Manage Passwords?"
    :tags ["perl"]))
(hoarder:record "natxo/phpipam-API"
  '(:tags ["perl"]))
(hoarder:record "orera/MooseX-Role-UserDaemon"
  '(:description "Simplify writing of user space daemons"
    :tags ["perl"]))
(hoarder:record "karlbateman/KETCH"
  '(:description ":telescope: DNS hostname resolver"
    :tags ["dns" "hostname" "lookup" "perl" "perl5"]))
(hoarder:record "yseto/gion"
  '(:description "RSS Reader"
    :tags ["perl"]))
(hoarder:record "davorg/app-aphra"
  '(:description "Static web site generator in Perl"
    :tags ["perl"]))
(hoarder:record "GianmarcoBruno/json-yang"
  '(:description "How to validate JSON against a YANG module"
    :tags ["perl"]))
(hoarder:record "pablgonz/ltximg"
  '(:description "LaTeX environment contents to image format"
    :tags ["perl" "convert" "extract" "images" "latex"]))
(hoarder:record "datacoinproject/datacoin-browser"
  '(:description "Datacoin browser"
    :tags ["perl"]))
(hoarder:record "CarlOrff/archive"
  '(:description "Perl script for archiving websites"
    :tags ["perl"]))
(hoarder:record "pflanze/radio"
  '(:description "A simple script to play from a personal selection of internet radio streams"
    :tags ["perl"]))
(hoarder:record "ikegami/perl-LWP-Protocol-Coro-http"
  '(:description "Event loop friendly HTTP and HTTPS backend for Perl's LWP"
    :tags ["perl"]))
(hoarder:record "wavexx/fgallery"
  '(:description "a modern, minimalist javascript photo gallery"
    :tags ["javascript"]
    :memo "[[https://www.thregr.org/~wavexx/software/fgallery/demo/#0]]
[[https://www.thregr.org/~wavexx/software/fgallery/][fgallery: a modern, minimalist javascript photo gallery]]"))
(hoarder:record "pplu/aws-map"
  '(:description "Make a network graph of an AWS region"
    :tags ["perl" "alb" "aws" "ec2" "elb" "graph" "map" "network" "rds" "security-groups" "vpc"]))
(hoarder:record "skx/webserver-attacks"
  '(:description "Identify attacks against webservers via simple rules"
    :tags ["perl"]))
(hoarder:record "szabgab/WWW-AdServer"
  '(:description "Simple adserver in Perl"
    :tags ["perl"]))
(hoarder:record "shutokawabata0723/Online-Store"
  '(:description "Obtain JAN code and Price information from online stores by scraping and extracting."
    :tags ["perl" "online-shop" "price-tracker" "scraping"]))
(hoarder:record "hamishcoleman/ssh-pubkey-syntax-check"
  '(:description "Quick code quality check to confirm that the ssh_known_hosts and authorized_keys  contain no obvious errors"
    :tags ["perl"]))
(hoarder:record "cho45/Config-ENV"
  '(:tags ["perl"]))
(hoarder:record "cade-vs/ferry.pl"
  '(:description "ferry.pl is a network file transporter with integirty verification and encryption"
    :tags ["perl"]))
(hoarder:record "DrHyde/CPANdeps"
  '(:description "CPANdeps"
    :tags ["perl"]))
(hoarder:record "kernschmelze/showpkgnotes"
  '(:description "Perl script to show package notes in an easy-to read way without \"has no maintainer\" spam etc."
    :tags ["perl"]))
(hoarder:record "kfly8/PerlX-Declare"
  '(:tags ["perl"]))
(hoarder:record "dolmen-perl5/Term-Chrome"
  '(:description "The Term::Chrome Perl 5 module"
    :tags ["perl" "ansi-colors" "cpan" "perl-module" "terminal"]))
(hoarder:record "kargig/itop"
  '(:description "Interrupts 'top-like' utility for Linux"
    :tags ["perl"]))
(hoarder:record "lestrrat-p5/Geest"
  '(:description "Port of Kage "
    :tags ["perl"]))
(hoarder:record "theraccoonbear/Git-R-Done"
  '(:description "git helpers"
    :tags ["perl"]))
(hoarder:record "holmanbph/gig-finder"
  '(:description "This project is for finding job opportunities based on user defined configurations.  It is intended for use by my fellow classmates :)"
    :tags ["perl" "perl5" "webscraping"]))
(hoarder:record "sevensec/perl_remote_shell"
  '(:description "Remote shell execution over TCP"
    :tags ["perl"]))
(hoarder:record "scoopex/scriptreplay_ng"
  '(:description "A improved implementation of scriptreplay"
    :tags ["perl"]))
(hoarder:record "mgruner/p5-pod-projectdocs"
  '(:description "CPAN module POD::ProjectDocs"
    :tags ["perl"]))
(hoarder:record "cyobigonzales/teleport"
  '(:description "チェックインチェックアウトをGPS情報とともに管理するプラットフォーム"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-WordListsC-Password-10Million"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-WordListsC-Password-SecLists"
  '(:tags ["perl"]))
(hoarder:record "lvc/abi-dumper"
  '(:description "Dump ABI of an ELF object containing DWARF debug info"
    :tags ["perl"]))
(hoarder:record "Klaus-Tockloth/opaquery"
  '(:description "Overpass-Api Data Query (Linux, OS X, Windows)"
    :tags ["perl"]))
(hoarder:record "NonLogicalDev/DotNinja"
  '(:description "My command line utility for managing the dotfiles."
    :tags ["perl"]))
(hoarder:record "cosimo/perl5-net-statsd"
  '(:description "Net::Statsd is a Perl client for Etsy's statsd metric collection daemon"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=qOWsqC6mZKQ][Lance Wicks: Refactoring with Statsd, Toggle and Scientist‎ - YAPC::Europe 2016 - YouTube]]"))
(hoarder:record "cv-library/Toggle"
  '(:description "Feature toggles for Perl"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=qOWsqC6mZKQ][Lance Wicks: Refactoring with Statsd, Toggle and Scientist‎ - YAPC::Europe 2016 - YouTube]]"))
(hoarder:record "chazmcgarvey/HTTP-AnyUA"
  '(:description "An HTTP user agent programming interface unification layer"
    :tags ["perl" "http" "user-agent"]))
(hoarder:record "yappo/p5-AnySan"
  '(:description "perl5 messaging framework using AnyEvent"
    :tags ["perl" "irc"]
    :memo "[[http://blog.livedoor.jp/xaicron/archives/51674714.html][�ˤҤꤺ��::����פ� - irc-hybird + AnySan + AnyEvent::Twitter::Stream �� irc �� twitter �ߤ�]]"))
(hoarder:record "xaicron/Kagura"
  '(:description "minimalistic web application framework"
    :tags ["perl"]))
(hoarder:record "Grinnz/Encode-Simple"
  '(:description "Encode::Simple - Encode and decode text, simply"
    :tags ["perl"]
    :memo "[[http://blogs.perl.org/users/grinnz/2018/02/encodesimple---encode-and-decode-text-simply.html][Encode::Simple - Encode and decode text, simply | Grinnz {blogs.perl.org}]]"))
(hoarder:record "tokuhirom/App-scan_prereqs_cpanfile"
  '(:description "Scan prerequisite modules and generate CPANfile"
    :tags ["perl"]))
(hoarder:record "Leont/file-slurp-sane"
  '(:description " A simple, sane and efficient file slurper"
    :tags ["perl"]))
(hoarder:record "dslusky/redis-viewer"
  '(:description "Simple graphical Redis client using Perl/Tk"
    :tags ["perl"]))
(hoarder:record "kkernaghan/logrotate2"
  '(:description "Another tool for rotating logs."
    :tags ["perl"]))
(hoarder:record "DrSmyrke/Applications-in-Perl"
  '(:description "Small and large applications in Perl"
    :tags ["perl"]))
(hoarder:record "pmarguinaud/bdmeta"
  '(:tags ["perl"]))
(hoarder:record "upasana-me/Plack-Middleware-RemoveRedundantBody"
  '(:description "Removes body from the HTTP response when it's not required"
    :tags ["perl"]))
(hoarder:record "heikkilevanto/beertracker"
  '(:description "Simple script to track the beers I drink"
    :tags ["perl"]))
(hoarder:record "gulkily/hike"
  '(:tags ["perl"]))
(hoarder:record "ebridges/sort-media"
  '(:description "Perl script to sort images into a central folder location."
    :tags ["perl"]))
(hoarder:record "skaji/syntax-check-perl"
  '(:tags ["perl"]))
(hoarder:record "alvar-freude/Posemo"
  '(:description "PostgreSQL Secure Monitoring"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-Text-ANSITable"
  '(:tags ["perl"]))
(hoarder:record "aldennisa15/mediawiki2omega"
  '(:description "dump a MediaWiki database into a form suitable for indexing into a Xapian database using scriptindex"
    :tags ["perl"]))
(hoarder:record "shlomif/quad-pres"
  '(:tags ["perl"]))
(hoarder:record "wfso/APIStore"
  '(:description "对外提供API服务"
    :tags ["perl"]))
(hoarder:record "eeeeeta/gpgit"
  '(:tags ["perl"]))
(hoarder:record "Akron/Mojolicious-Plugin-Oro"
  '(:description "Oro Database driver plugin for Mojolicious"
    :tags ["perl"]))
(hoarder:record "Akron/DBIx-Oro"
  '(:description "Simple Database Accessor"
    :tags ["perl"]))
(hoarder:record "venfordlunch/food-tracker"
  '(:description "Program that calculates percentage of macronutrients eaten in a day"
    :tags ["perl"]))
(hoarder:record "zarfmouse/zcme-lib-perl"
  '(:description "Zach's Perl Libraries"
    :tags ["perl"]))
(hoarder:record "NelsonFigueroa/Perl-Simple-User-Database"
  '(:tags ["perl"]))
(hoarder:record "cade-vs/immuse"
  '(:description "IMMUSE is command-line image conversion and manipulation utility"
    :tags ["perl"]))
(hoarder:record "hoehrmann/Graph-SomeUtils"
  '(:description "Graph::SomeUtils Perl module"
    :tags ["perl"]))
(hoarder:record "emceelam/Simple-Address-Mojo"
  '(:description "Simple Address App - Mojolicious version"
    :tags ["perl" "google-maps" "mojolicious"]))
(hoarder:record "adrianh/test-class"
  '(:description "Test::Class - an xUnit testing framework for Perl 5.x"
    :tags ["perl"]))
(hoarder:record "Nikita-Boyarskikh/HTTP-static-server"
  '(:description "Simple http static server"
    :tags ["perl"]))
(hoarder:record "dhyannataraj/wiktionary-export"
  '(:tags ["perl"]))
(hoarder:record "toohoo/base64rot13"
  '(:description "a simple perl script to hide executables and other security issues in attachments of Gmail and possibly others"
    :tags ["perl"]))
(hoarder:record "gugod/Diversion"
  '(:tags ["perl"]))
(hoarder:record "pplu/perl-mssql-server"
  '(:description "Notes on how to configure your system to connect to a SQL server with Perl"
    :tags ["perl"]))
(hoarder:record "anparker/mojo-feedreader"
  '(:description "Mojo::FeedReader - minimalistic perl feed reader."
    :tags ["perl"]))
(hoarder:record "perlancar/perl-Module-FatPack"
  '(:tags ["perl"]))
(hoarder:record "sympa-community/p5-sympatic"
  '(:description "use every sympa good practices in one line, just use Sympatic"
    :tags ["perl"]))
(hoarder:record "LibreCat/Dancer-Plugin-Catmandu-SRU"
  '(:description "SRU server backed by a searchable Catmandu::Store"
    :tags ["perl"]))
(hoarder:record "CESNET/myPerlLDAP2"
  '(:description "Perl OO interface for LDAP"
    :tags ["perl"]))
(hoarder:record "kfly8/Variable-Declaration"
  '(:tags ["perl"]))
(hoarder:record "bugov/pony-object"
  '(:description "tiny object system with privacy settings for properties and methods"
    :tags ["perl"]))
(hoarder:record "sodonnell/plowbot"
  '(:description "PlowBot - An old IRC Bot that I wrote using Perl back in 2009."
    :tags ["perl"]))
(hoarder:record "marghidanu/werker"
  '(:description "Manage Werk::Flows via REST with distributed execution"
    :tags ["dag" "distributed" "minion" "mojolicious" "perl" "pipeline" "werk" "workflow"]))
(hoarder:record "davorg/tie-hash-regex"
  '(:description "Match hash keys using Regular Expressions "
    :tags ["cpan" "hash" "perl" "tier1"]))
(hoarder:record "renderorange/lib-development"
  '(:description "modules to make development easier"
    :tags ["perl"]))
(hoarder:record "mmccul/datagather"
  '(:description "Tools to collect useful data from systems"
    :tags ["perl"]))
(hoarder:record "ap/titlecase"
  '(:description "An attempt to refactor John Gruber’s Title Case program"
    :tags ["perl"]))
(hoarder:record "troydm/exp"
  '(:description "command line interface to http://explainshell.com"
    :tags ["perl"]))
(hoarder:record "do-know/Crypt-LE"
  '(:description "Crypt::LE (ZeroSSL project) - Let's Encrypt client and library in Perl for getting free SSL certificates (inc. generating RSA/ECC keys and CSRs). HTTP/DNS verification is supported out of the box, easily extended with plugins."
    :tags ["certificate" "crypt" "crypt-le" "dns" "docker" "docker-ssl" "ecc" "ecdsa" "free-ssl-certificates" "pem" "perl" "pfx" "rsa" "security" "ssl" "windows-ssl" "zerossl"]))
(hoarder:record "amoe/picker"
  '(:description "pick subtrees of music file collections based on length"
    :tags ["perl"]))
(hoarder:record "aindilis/diamond"
  '(:description "Dynamically generates user-interfaces"
    :tags ["perl"]))
(hoarder:record "AndyA/Lintilla"
  '(:description "Dancer webapp tools and utilities"
    :tags ["perl"]))
(hoarder:record "sysread/Time-Spent"
  '(:description "Perl module for tracking time using a rolling average"
    :tags ["perl"]))
(hoarder:record "ttdsuen/couchdb-views-update"
  '(:description "Update CouchDB views by accessing them efficiently. "
    :tags ["perl"]))
(hoarder:record "briandfoy/distribution-cooker"
  '(:description "Perl modulino to create a distribution stub"
    :tags ["perl"]))
(hoarder:record "briandfoy/app-module-lister"
  '(:description "(Perl) List all of the installed modules with just Perl5.004 code"
    :tags ["perl"]))
(hoarder:record "VR51/formfind"
  '(:description "Find forms in web pages"
    :tags ["perl"]))
(hoarder:record "masaki/p5-LWP-UserAgent-DNS-Hosts"
  '(:description "Override LWP HTTP/HTTPS request's host like /etc/hosts"
    :tags ["perl"]))
(hoarder:record "rkitover/string-toidentifier-en"
  '(:description "Convert Strings to English Program Identifiers"
    :tags ["perl"]))
(hoarder:record "kroki/GeekJDict"
  '(:description "Text-mode Japanese dictionary with powerful input and lookup capabilities"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-diffwc"
  '(:tags ["perl"]))
(hoarder:record "ImagoTrigger/ghettoradio"
  '(:description "An Overwhelming Surplus of Diggity http://i.imgur.com/zyQQEeV.jpg"
    :tags ["perl"]))
(hoarder:record "Songmu/p5-App-CPANGhq"
  '(:tags ["perl"]))
(hoarder:record "deeelwy/Fetchware"
  '(:description "Fetchware is a package manger for source code distributions"
    :tags ["perl"]))
(hoarder:record "clustericious/Yars"
  '(:description "Yet-another ARchive Service"
    :tags ["perl"]))
(hoarder:record "frioux/app-adenosine"
  '(:tags ["perl"]))
(hoarder:record "warewolf/pUtracer"
  '(:tags ["perl"]))
(hoarder:record "horodchukanton/application-deployment-cli"
  '(:tags ["perl"]))
(hoarder:record "ology/Lingua-EN-Opinion"
  '(:description "Measure the positive/negative sentiment of text"
    :tags ["perl"]))
(hoarder:record "qwertyuiop924/ibis"
  '(:description "A chatbot for discord."
    :tags ["perl"]))
(hoarder:record "Grinnz/song-request-queue"
  '(:tags ["perl"]))
(hoarder:record "pwr22/coffeebot"
  '(:description "A slackbot to assist in organising coffee breaks"
    :tags ["perl"]))
(hoarder:record "pavelsr/enr"
  '(:description "Easy nginx redirects"
    :tags ["perl"]))
(hoarder:record "wp-seth/camelbot"
  '(:description "bot for several purposes in MediaWiki projects based on perl module MediaWiki::Bot"
    :tags ["perl"]))
(hoarder:record "peeterjoot/rewriter"
  '(:tags ["perl"]))
(hoarder:record "sbagmeijer/cybersecurity-capstone-project"
  '(:description "Cybersecurity Capstone Project"
    :tags ["perl"]))
(hoarder:record "sungo/perl-net-dropbox"
  '(:description "ABANDONED - for archival purposes only"
    :tags ["perl"]))
(hoarder:record "desmid/mview"
  '(:description "MView extracts and reformats the results of a sequence database search or multiple alignment."
    :tags ["perl"]))
(hoarder:record "osm-ToniE/analyze-routes"
  '(:description "Public transport route checker for OSM"
    :tags ["perl" "openstreetmap" "osm" "ptv2" "public-transport" "quality-assurance"]))
(hoarder:record "bluesaxman/musicorganizer"
  '(:description "A long time ago, I messed up my music library and ever since its been all messy, this script fixes that."
    :tags ["perl"]))
(hoarder:record "mfocuz/DNS_Hunter"
  '(:description "DNS enumeration tool"
    :tags ["perl"]))
(hoarder:record "Test-More/Test2-Tools-EventDumper"
  '(:description "Tool for dumping Test2::Event structures."
    :tags ["perl"]))
(hoarder:record "szabgab/try-perl-on-travis"
  '(:description "Testing Perl constructs"
    :tags ["perl"]))
(hoarder:record "Nancho-Alvarez/iget"
  '(:description "Get images from internet"
    :tags ["perl"]))
(hoarder:record "VanAndelInstitute/pbsPretty"
  '(:description "colorful, descriptive alternives to pbsnodes and qstat"
    :tags ["perl"]))
(hoarder:record "DRVTiny/Tag--DeCoder"
  '(:tags ["api" "perl" "perl5-module" "serialization" "unified"]))
(hoarder:record "atrodo/App-MechaCPAN"
  '(:description " Mechanize the installation of CPAN things"
    :tags ["cpan" "perl"]))
(hoarder:record "clipland/animated-jpeg"
  '(:description "Proposed JPEG/JFIF APP0 marker application extension for playback control of concatenated JPEGs, as stand-alone animation stream or Motion-JPEG"
    :tags ["perl"]))
(hoarder:record "wwwted/ndb-cluster-workshop"
  '(:description "MySQL Cluster - 1 day workshop with hands-on work"
    :tags ["perl" "cluster" "mcm" "mysql" "mysql-cluster" "mysql-cluster-manager" "mysql-ndb-cluster" "ndb" "ndb-cluster-workshop" "workshop"]))
(hoarder:record "mrscotty/connector"
  '(:tags ["perl"]))
(hoarder:record "rmp/libclearpress-perl"
  '(:description "ClearPress"
    :tags ["perl"]))
(hoarder:record "robdemol/tvadmin"
  '(:description "A web based interface for managing WebTVs"
    :tags ["perl"]))
(hoarder:record "leescpeter/MMWeixin"
  '(:tags ["perl"]))
(hoarder:record "wilx/cite-website"
  '(:description "Simple Perl script to generate CSL YAML entry from given URL."
    :tags ["perl"]))
(hoarder:record "SimpleTempTools/chpasswd"
  '(:description "批量改服务器帐号的密码, 把执行的结果按照类型分类放在文件中"
    :tags ["perl"]))
(hoarder:record "rperera/verilator"
  '(:tags ["perl"]))
(hoarder:record "project-renard/p5-Alien-k2pdfopt"
  '(:tags ["perl" "alien" "wip"]))
(hoarder:record "dlevi326/Text-Categorizer"
  '(:description "Naive Bayes approach to classify documents into categories"
    :tags ["perl"]))
(hoarder:record "odyniec/p5-App-SomethingForm"
  '(:tags ["perl"]))
(hoarder:record "hookbot/git-server"
  '(:description "More customizable git hooks capabilities."
    :tags ["perl"]))
(hoarder:record "vaeth/find_cruft"
  '(:description "Find cruft files on Gentoo and similar distributions"
    :tags ["perl"]))
(hoarder:record "abh/ntppool"
  '(:description "NTP Pool Project"
    :tags ["perl"]))
(hoarder:record "solgenomics/cassbase"
  '(:description "The mason components for the cassbase database, a variation of cassavabase for the CASS project"
    :tags ["perl"]))
(hoarder:record "emark/menux"
  '(:tags ["perl"]))
(hoarder:record "SBECK-github/Date-Manip"
  '(:tags ["perl"]))
(hoarder:record "kamenov/PDF-Table"
  '(:description "Official repo for PDF::Table in Perl"
    :tags ["perl"]))
(hoarder:record "actub/actub"
  '(:tags ["perl"]))
(hoarder:record "medrbx/kibini"
  '(:description "Kibini - collecter, visualiser et diffuser les données d'usages de la Médiathèque"
    :tags ["perl"]))
(hoarder:record "SBECK-github/Data-Checker"
  '(:tags ["perl"]))
(hoarder:record "SBECK-github/Array-AsObject"
  '(:tags ["perl"]))
(hoarder:record "sxkundu/perl_load_generator"
  '(:description "PERL script to generate load to DB2 LUW databases. "
    :tags ["db2" "db2luw" "dynamic" "perl" "sql"]))
(hoarder:record "SBECK-github/Template-Plugin-ListOps"
  '(:tags ["perl"]))
(hoarder:record "SBECK-github/Sort-DataTypes"
  '(:tags ["perl"]))
(hoarder:record "SBECK-github/Shell-Cmd"
  '(:tags ["perl"]))
(hoarder:record "buskum/hackme-tool"
  '(:description "best bruteforce tool for Fb and WhatsApp"
    :tags ["perl"]))
(hoarder:record "Tontonitch/interfacetable_v3t"
  '(:description "interfacetable_v3t (formerly check_interface_table_v3t)"
    :tags ["perl" "icinga" "icinga2" "monitor" "nagios" "plugin"]))
(hoarder:record "UoMCS/newsagent"
  '(:description "News and events feed authoring platform"
    :tags ["perl"]))
(hoarder:record "landsmanv/waf"
  '(:description "web application firewall based on Apache and modsecurity"
    :tags ["perl"]))
(hoarder:record "sophia-collaborations/blog-preview"
  '(:description "A tool for previewing blog-posts and other things for their pre-server phase of preparation"
    :tags ["perl"]))
(hoarder:record "someone-stole-my-name/battery-applet"
  '(:description "No 'cool' features, just a damn battery applet for laptops."
    :tags ["perl"]))
(hoarder:record "frioux/DBIx-Class-DeploymentHandler"
  '(:tags ["perl"]))
(hoarder:record "jmacdotorg/alisio"
  '(:description "Program that tweets links to new blog posts with pull-quote image previews"
    :tags ["perl"]))
(hoarder:record "PegasusPrime/cpan-influxdb"
  '(:description "Script and dashboard for cpan reports to ingest into influxdb"
    :tags ["perl"]))
(hoarder:record "Corion/HTTP-Upload-FlowJs"
  '(:description "handle resumable multi-part HTTP uploads with flowjs"
    :tags ["perl"]))
(hoarder:record "Corion/filter-signatures"
  '(:description "very simplicistic signatures for Perl < 5.20"
    :tags ["perl"]))
(hoarder:record "castaway/swindon-events"
  '(:tags ["perl"]))
(hoarder:record "ivanwills/App-Hours"
  '(:description "Tool for maintaining hours worked"
    :tags ["perl"]))
(hoarder:record "manwar/Regexp-Common-time"
  '(:description "Repository of the Regexp-Common-time Perl distributions"
    :tags ["perl"]))
(hoarder:record "quarterpi/ndex"
  '(:description "A cli for indexing multiple files (text files only at the moment)"
    :tags ["perl"]))
(hoarder:record "jow-/mediastreamer"
  '(:description "Simple standalone server to allow streaming to iOS devices"
    :tags ["perl"]))
(hoarder:record "klkane/servicenow-json"
  '(:description "ServiceNow::JSON - A library for abstractive the ServiceNow JSON REST API"
    :tags ["perl"]))
(hoarder:record "PaulWebster/RadioFrance"
  '(:description "Slimerver/LMS PlugIn to get song information from Radio France stations"
    :tags ["perl"]))
(hoarder:record "BhargavDetroja/adminpanelfinder"
  '(:description "this is pl file to fiend admin url in websit"
    :tags ["perl"]))
(hoarder:record "kwakwaversal/moo-role-tojson"
  '(:description "a Moo role for a TO_JSON method"
    :tags ["perl"]))
(hoarder:record "wfso/Mojolicious-Project-Example"
  '(:description "Mojolicious 框架的一个示例项目，可以基于这个项目结构进行开发"
    :tags ["perl"]))
(hoarder:record "kberov/Mojolicious-Plugin-RoutesConfig"
  '(:description "Describe routes in configuration file"
    :tags ["perl"]))
(hoarder:record "yehgdotnet/beast-check"
  '(:description "beast ssl check"
    :tags ["perl"]))
(hoarder:record "davorg/dashboard"
  '(:description "Simple code build dashboard"
    :tags ["dashboard" "perl"]))
(hoarder:record "dkogan/vnlog"
  '(:tags ["perl"]))
(hoarder:record "atosk/pwnedpass"
  '(:description "Perl script to perform online password testing against pwnedpasswords.com "
    :tags ["perl"]))
(hoarder:record "rjbs/Pod-Coverage-TrustPod"
  '(:description "Pod::Coverage with in-pod exceptions"
    :tags ["perl"]))
(hoarder:record "jrubinator/pokemon-gb"
  '(:description "Gameboy Pokemon Companion Game"
    :tags ["perl"]))
(hoarder:record "kernschmelze/meowpurr"
  '(:description "Comfortable menu for FVWM."
    :tags ["perl"]))
(hoarder:record "TJC/Test-postgresql"
  '(:description "Fork of Test::postgresql that is actively maintained"
    :tags ["perl"]))
(hoarder:record "dwcarder/lookingglass"
  '(:description "Looking Glass Router Proxy"
    :tags ["perl"]))
(hoarder:record "Downes/gRSShopper"
  '(:description "gRSShopper is a tool that aggregates, organizes and distributes resources to support online learning"
    :tags ["perl"]))
(hoarder:record "demanuel/NewsUP"
  '(:description "NewsUP a binary usenet uploader/poster (multiple connections, SSL and NZB)."
    :tags ["binaries" "newsgroups" "nntp" "nzb" "par" "perl" "uploader" "usenet" "usenet-poster" "yenc"]))
(hoarder:record "dikurevy/dikurevy.dk"
  '(:description "DIKUrevyens hjemmeside"
    :tags ["perl"]))
(hoarder:record "wp-seth/dl_lfm"
  '(:description "downloads last.fm user data and scrobbles streams to last.fm"
    :tags ["perl"]))
(hoarder:record "drvos/ip-read"
  '(:tags ["perl"]))
(hoarder:record "rrthomas/finddup"
  '(:description "A set of utilities to find duplicate files and save disk space"
    :tags ["perl"]))
(hoarder:record "BigRedS/httptraceroute"
  '(:description "Follows HTTP redirects"
    :tags ["perl" "http" "trace" "traceroute"]))
(hoarder:record "BigRedS/inotifylog"
  '(:description "Logs stuff that Inotify sees"
    :tags ["perl"]))
(hoarder:record "semifor/Twitter-API"
  '(:description "A Twitter REST API library for Perl"
    :tags ["perl"]))
(hoarder:record "andrewgdotcom/frith"
  '(:description "An offline utility to simplify PGP public key creation and management (recommends Tails)"
    :tags ["perl"]))
(hoarder:record "revspace/revbank"
  '(:tags ["perl"]))
(hoarder:record "Frankjunyulin/Perl-SocialMedia"
  '(:description "It is a social media(website), which is written by Perl cgi, html and css."
    :tags ["perl"]))
(hoarder:record "cgutteridge/geocraft"
  '(:tags ["perl"]))
(hoarder:record "sst23/no-framework"
  '(:description "Just a test"
    :tags ["perl"]))
(hoarder:record "markov2/perl5-Any-Daemon-HTTP"
  '(:description "Generic HTTP Daemon"
    :tags ["perl"]))
(hoarder:record "markov2/perl5-Any-Daemon"
  '(:description "General purpose daemon"
    :tags ["perl"]))
(hoarder:record "davorg/template-provider-pandoc"
  '(:description "Template provider that pre-processes Markdown templates"
    :tags ["perl"]))
(hoarder:record "dlc/string--format"
  '(:description "sprintf-like string formatting capabilities with arbitrary format definitions"
    :tags ["perl"]))
(hoarder:record "mdsib/resume-generator"
  '(:description "A data-driven perl script that generates resumes in multiple formats"
    :tags ["perl"]))
(hoarder:record "voidstarer/multiproxy"
  '(:tags ["perl"]))
(hoarder:record "hiratara/p5-Class-Accessor-TrackDirty"
  '(:description "Defines a simple entity stored in some places."
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-ShellCompleter-perlbrew"
  '(:tags ["perl"]))
(hoarder:record "az143/rrdstat"
  '(:description "a suite of perl data collectors for rrdtool, and a mojolicious app for viewing the results"
    :tags ["perl"]))
(hoarder:record "danielcliffordmiller/twilight-imperium-iv-mapper"
  '(:tags ["perl"]))
(hoarder:record "haqistan/flog"
  '(:description "MultiMarkdown-based static site/blog generator"
    :tags ["perl"]))
(hoarder:record "rules-of-discourse/chobakepubtl"
  '(:description "Tools built on chobakwrap to generate ebooks from gittable sources"
    :tags ["perl"]))
(hoarder:record "davewx7/citadel"
  '(:description "A turn based strategy game based on the Anura engine"
    :tags ["perl"]))
(hoarder:record "THEMA-MEDIA/HTTP-Caching"
  '(:description "A Perl class that one SHOULD use when building a cache for HTTP responses, it's brains are wired according to RFC7234"
    :tags ["perl"]))
(hoarder:record "Raikia/SMBCrunch"
  '(:description "3 tools that work together to simplify reconaissance of Windows File Shares"
    :tags ["perl"]))
(hoarder:record "jhthorsen/linkembedder"
  '(:description "Embed / expand oEmbed resources and other URL / links"
    :tags ["perl"]))
(hoarder:record "jhthorsen/app-docsisious"
  '(:description "Edit DOCSIS config files on web"
    :tags ["perl"]))
(hoarder:record "pldin601-legacy/myownradio-perl-streamer"
  '(:description "Secondary version of myownradio streaming server written on Perl."
    :tags ["perl"]))
(hoarder:record "kazeburo/Cookie-Baker"
  '(:description "Cookie string generator"
    :tags ["perl"]))
(hoarder:record "dcknuth/perl_rotate_crop_set"
  '(:description "The script will rotate and crop out the black triangles from a set of images"
    :tags ["perl"]))
(hoarder:record "AnnonimityX/uniscan"
  '(:tags ["perl"]))
(hoarder:record "arwn/pfetch"
  '(:description "A rewrite of screenfetch to learn perl."
    :tags ["perl"]))
(hoarder:record "sungo/perl-poe-api-peek"
  '(:description "Handed off to new maintainer - for archival purposes only"
    :tags ["perl"]))
(hoarder:record "bitboulder/ctreesize"
  '(:description "Console Treesize"
    :tags ["perl"]))
(hoarder:record "ajdepersio/netspeed-monitor"
  '(:description "Logging of network speed using perl and speedtest-cli"
    :tags ["perl"]))
(hoarder:record "niczero/mojar-mysql"
  '(:description "Power tools for working with MySQL databases :dolphin:"
    :tags ["perl"]))
(hoarder:record "davorg/array-compare"
  '(:description "Perl library to compare arrays"
    :tags ["array" "cpan" "perl"]))
(hoarder:record "MauricioMiret/DB2-assesment"
  '(:description "Perl scripts to gather information on instances and databases in order to produce a baseline"
    :tags ["db2" "ksh" "perl"]))
(hoarder:record "wilyarti/rip"
  '(:description "Perl .iso ripping script for FreeBSD"
    :tags ["perl"]))
(hoarder:record "Zilainfo/TManager"
  '(:tags ["perl"]))
(hoarder:record "open-ch/pingmachine"
  '(:description "Pingmachine - Smokeping-like pinging framework"
    :tags ["perl"]))
(hoarder:record "motemen/perl5-lib-ghq"
  '(:tags ["perl"]))
(hoarder:record "simoneBarco/Web-project"
  '(:tags ["perl"]))
(hoarder:record "ivanwills/App-Usefull"
  '(:description "An eclectic collection of usefull scripts"
    :tags ["perl"]))
(hoarder:record "davorg/net-songkick"
  '(:description "Perl library for using the Songkick API"
    :tags ["cpan" "music" "perl" "songkick"]))
(hoarder:record "ivanwills/App-MultiSsh"
  '(:description "Run ssh commands to multiple servers at once"
    :tags ["perl"]))
(hoarder:record "skrp/POPO"
  '(:description "kernel police DEMON"
    :tags ["perl"]))
(hoarder:record "skrp/DEMON"
  '(:description "unix daemon network"
    :tags ["perl"]))
(hoarder:record "frisky-gh/panopticd"
  '(:tags ["perl"]))
(hoarder:record "inventsekar/LinuxTools-Thru-Perl-and-Python"
  '(:tags ["linux-administration" "linux-command" "linux-server" "linux-tools" "perl" "perl-script" "perl-scripts" "python" "python-3" "python-beginners" "python-script" "python3"]))
(hoarder:record "bluehive/rss-m"
  '(:tags ["perl"]))
(hoarder:record "skrp/MINION"
  '(:description "100T Experience in Scrapes - respect the vet"
    :tags ["perl" "daemon" "distributed-systems" "scrape"]))
(hoarder:record "a-castellano/LolCatalyst"
  '(:description "First web application using Catalyst"
    :tags ["perl"]))
(hoarder:record "milsorm/dbman"
  '(:description "Multiconnection configurable and extendable database managment console tool"
    :tags ["perl"]))
(hoarder:record "akiym/App-try_tiny2syntax_keyword_try"
  '(:description "Switch Try::Tiny to Syntax::Keyword::Try"
    :tags ["perl"]))
(hoarder:record "watson-sm/cmdline_perl_googlesearch"
  '(:description "Perl commandline utility for simple google search"
    :tags ["perl"]))
(hoarder:record "davorg/symbol-approx-sub"
  '(:description "Perl library to call subroutines using approximate names"
    :tags ["cpan" "joke" "perl" "symbol-table"]))
(hoarder:record "hadfl/lxadm"
  '(:description "Manage illumos LX zones."
    :tags ["perl"]))
(hoarder:record "perlancar/perl-List-Util-Uniq"
  '(:tags ["perl"]))
(hoarder:record "oprel/emanon"
  '(:description "improved textboard software"
    :tags ["perl" "bbs"]))
(hoarder:record "ggl/App-Sv"
  '(:description "Event-based multi-process supervisor"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-GitUtils"
  '(:tags ["perl"]))
(hoarder:record "perlpunk/App-Spec-p5"
  '(:description "Writing command line apps made easy"
    :tags ["perl" "bash" "cli-framework" "command-line" "completion" "getopt" "perl5" "pod" "specification" "subcommands" "zsh"]))
(hoarder:record "pshangov/miril"
  '(:description "Miril - Static Content Publishing"
    :tags ["perl"]))
(hoarder:record "shlomif/Sky-uploader"
  '(:description "The Sky uploader for uploading stuff using rsync/etc. to remote web-sites, from which they can be downloaded."
    :tags ["perl"]))
(hoarder:record "rjbs/Perl-PrereqScanner"
  '(:description "scan a set of Perl libraries to figure out prereqs, without loading the code"
    :tags ["perl"]))
(hoarder:record "rjbs/DNS-Oterica"
  '(:tags ["perl"]))
(hoarder:record "rjbs/misc"
  '(:description "random crap rjbs uses"
    :tags ["html"]))
(hoarder:record "rjbs/U2"
  '(:description "a half-baked URI.pm replacement"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-ListNewCPANDists"
  '(:tags ["perl"]))
(hoarder:record "jonathanburgossaldivia/bingfile"
  '(:description "Command line filetype search (Tool for Linux or macOS)"
    :tags ["perl"]))
(hoarder:record "pewo/tr"
  '(:description "An cli time report module and some reporting scripts"
    :tags ["perl"]))
(hoarder:record "wtee/germ"
  '(:tags ["perl"]))
(hoarder:record "wakaba/gaa"
  '(:tags ["perl"]))
(hoarder:record "c4eater/auarr"
  '(:description "A Perl script for automatic sorting of a music collection based on ID3 tag contents."
    :tags ["perl"]))
(hoarder:record "Downes/blockchain"
  '(:description "Simple Perl implementation of blockchain"
    :tags ["perl"]))
(hoarder:record "shadowcat-mst/PerlX-AsyncAwait"
  '(:tags ["perl"]))
(hoarder:record "clustericious/App-clad"
  '(:description "Parallel SSH client"
    :tags ["perl"]))
(hoarder:record "chromsh/p5-Net-Hls-Downloader"
  '(:description "HLS downloader for perl"
    :tags ["perl"]))
(hoarder:record "rmkml/etplc"
  '(:tags ["perl"]))
(hoarder:record "vyourtaev/Global-Logic-Task"
  '(:description "Global-Logic-Task"
    :tags ["perl"]))
(hoarder:record "rehsack/Packager-Utils"
  '(:description "Support packagers managing packages and upstream mapping (update, find, ...)"
    :tags ["perl"]))
(hoarder:record "Akron/Crypt-MagicSignatures-Key"
  '(:description "MagicKeys for the Salmon Protocol"
    :tags ["perl"]))
(hoarder:record "mdom/podite"
  '(:description "Command line podcatcher"
    :tags ["perl" "podcast-client" "podcast-downloader" "podcasts"]))
(hoarder:record "Moham3dRiahi/Th3inspector"
  '(:description "Th3Inspector 🕵️ best tool for Information Gathering 🔎"
    :tags ["perl" "age-check" "cloudflare" "cms-detector" "credit-card-scaning" "dns-record" "email-validation" "geo-ip" "geoip" "information-gathering" "iplocation" "lookup" "mx-lookup" "port-scanner" "reverse-ip-scan" "reverse-phone-lookup" "subdomain-scanner" "traceroute" "user-agent" "whois" "whois-lookup"]))
(hoarder:record "ebridges/sort-media"
  '(:description "Perl script to sort images into a central folder location."
    :tags ["perl"]))
(hoarder:record "hb9kns/plog"
  '(:description "Plog: shell script suite for blogging/glogging"
    :tags ["perl"]))
(hoarder:record "meyerdg/tweetsearch"
  '(:description "Find tweets twitter search won't return"
    :tags ["perl"]))
(hoarder:record "xsawyerx/perl-critic-policy-variables-prohibitlooponhash"
  '(:description "Perl::Critic::Policy::Variables::ProhibitLoopOnHash - Don't write loops on hashes, only on keys and values of hashes"
    :tags ["perl"]))
(hoarder:record "cosimo/http-cuke"
  '(:description "Cucumber-style HTTP frontends testing"
    :tags ["perl"]))
(hoarder:record "manwar/WebService-Wikimapia"
  '(:description "Interface to Wikimapia API."
    :tags ["perl"]))
(hoarder:record "4FriendsForum/lkom"
  '(:description "Kommunikation"
    :tags ["perl"]))
(hoarder:record "inurlx/DBReaper"
  '(:description "MASSIVE DB'S CONNECTION CHECKER !"
    :tags ["perl"]))
(hoarder:record "progenetix/beaconplus-server"
  '(:description "server cgi for Beacon+ development"
    :tags ["perl"]))
(hoarder:record "thibaultduponchelle/mojo-simplelivechart"
  '(:tags ["perl"]))
(hoarder:record "fstltna/MinetestManagementConsole"
  '(:description "Allows you to manage your Minetest server with a text based GUI - not even alpha yet! Will update when it is useable..."
    :tags ["perl"]))
(hoarder:record "dotandimet/Mojo-UserAgent-Role-Queued"
  '(:description "A role for Mojo::UserAgent that processes non-blocking requests in a rate-limiting queue."
    :tags ["mojo" "mojolicious" "perl" "perl5" "user-agent" "web-crawler"]))
(hoarder:record "letztes/resolution-reporter"
  '(:description "Finds and reports video files with smaller than a given aspect ratio"
    :tags ["perl"]))
(hoarder:record "emperlium/base-libs"
  '(:tags ["perl"]))
(hoarder:record "toddfries/File-Info"
  '(:description "calculate hashes of files, use db cache if db is available"
    :tags ["perl"]))
(hoarder:record "jtrowe/pres-app-cmd-20120301"
  '(:description "Presentation called \"Intro to App::Cmd\" for Phoenix.PM Mar 01, 2012"
    :tags ["javascript" "perl" "App:Cmd"]))
(hoarder:record "FH56G79T/Eggyellow-Server"
  '(:description "A fork of the Eggyellow-Core implementation for serverside use (WIP)."
    :tags ["perl"]))
(hoarder:record "grantm/xml-simple"
  '(:description "CPAN module: XML::Simple"
    :tags ["perl"]))
(hoarder:record "sebthebert/WWW-PushBullet"
  '(:description "PushBullet Perl module"
    :tags ["cpan" "perl" "pushbullet"]))
(hoarder:record "markov2/perl5-XML-Compile"
  '(:description "Compilation based XML processing"
    :tags ["perl"]))
(hoarder:record "kensanata/hex-mapping"
  '(:description "Tools to work with hex maps for roleplaying games. Usually web applications written in Perl and producing SVG output."
    :tags ["perl"]))
(hoarder:record "gnucifer/elastic-search-page"
  '(:description "Perl server-side Elastic Search UI microframework"
    :tags ["elasticsearch" "perl" "ui"]))
(hoarder:record "SmartMilk/SmartMilk"
  '(:description "Automated system that notifies your smartphone when milk has been left out of fridge / about to expire"
    :tags ["perl"]))
(hoarder:record "varocarbas/FeedAny"
  '(:description "Perl application which creates (RSS) web feeds from random webpages via HTML parsing."
    :tags ["perl"]))
(hoarder:record "knightFall666/disk_usage_analyzer"
  '(:description "Display disk space usage on Linux machines for a specified directory"
    :tags ["perl"]))
(hoarder:record "abbypan/Novel-Robot"
  '(:description "download novel / forum thread, 小说/论坛下载器"
    :tags ["perl"]))
(hoarder:record "worthmine/Caller-Easy"
  '(:description "less stress to remind returned list from CORE::caller()"
    :tags ["perl"]))
(hoarder:record "bertobot/perl-request"
  '(:tags ["perl"]))
(hoarder:record "huguei/p5-Net-Address-IP-Cipher"
  '(:description "IPv6 / IPv4 address encryption to a valid address, for pseudo anonymization."
    :tags ["perl"]))
(hoarder:record "zmughal/p5-Font-FreeType"
  '(:description "read font files and render glyphs from Perl using FreeType2"
    :tags ["perl"]))
(hoarder:record "wang-q/App-Egaz"
  '(:tags ["perl" "app-cmd"]))
(hoarder:record "seagirl/dwarf"
  '(:description "Web Application Framework (Perl5)"
    :tags ["perl"]))
(hoarder:record "FormFu/HTML-FormFu"
  '(:description "HTML Form Creation, Rendering and Validation Framework. Just define the form, and let FormFu do the all heavy lifting."
    :tags ["catalyst" "forms" "perl" "web-app"]))
(hoarder:record "perlancar/perl-Text-Sprintf-Length"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-Progress-Any-Output-TermMessage"
  '(:tags ["perl"]))
(hoarder:record "gangsterofboats/album-art-fixer"
  '(:description "Scripts to find bad album art files"
    :tags ["perl"]))
(hoarder:record "kberov/Mojolicious-Plugin-RoutesConfig"
  '(:description "Describe routes in configuration file"
    :tags ["perl"]))
(hoarder:record "IncaProject/inca"
  '(:tags ["perl"]))
(hoarder:record "huguei/ipcipher"
  '(:description "Encrypt IPv6/IPv4 address for anonymization"
    :tags ["perl"]))
(hoarder:record "moderntld/cyber"
  '(:description "ModernTLD's Registry System [indev] - Fork of .cyb's 'cyberman'"
    :tags ["perl"]))
(hoarder:record "mcoia/mobius_evergreen"
  '(:description "Perl code for the evergreen project"
    :tags ["perl"]))
(hoarder:record "sysread/URI-Fast"
  '(:description "A fast(er) URI parser for Perl"
    :tags ["c" "fast" "inline" "parameter" "parser" "perl" "query" "tiny" "uri" "url" "xs"]))
(hoarder:record "amoe/bugenhagen"
  '(:description "rag-tag tools for ebook creation & assemblage"
    :tags ["perl"]))
(hoarder:record "dankogai/p5-uri-escape-xs"
  '(:description "URI::Escape::XS - Drop-In replacement for URI::Escape"
    :tags ["perl"]))
(hoarder:record "FormFu/HTML-FormFu-Model-DBIC"
  '(:tags ["perl"]))
(hoarder:record "wesQ3/Lingua-EN-Pseudolocalize"
  '(:description "Test Unicode support by pretending to speak a different language."
    :tags ["perl"]))
(hoarder:record "petdance/html-tidy5"
  '(:description "HTML::Tidy5, Perl module for checking HTML5."
    :tags ["perl"]))
(hoarder:record "borekl/nhs"
  '(:description "NetHack Scoreboard"
    :tags ["perl"]))
(hoarder:record "LukasJocham/MakePerlGreateAgain"
  '(:description "This Repo is about Perl. If you like Perl, you will like this. If not thank you. "
    :tags ["makeperlgreateagain" "perl" "projects" "small-tools"]))
(hoarder:record "choroba/argv-ordata"
  '(:description "If there's no input, read from the DATA handle"
    :tags ["perl"]))
(hoarder:record "ohait/perl-dbi-sugar"
  '(:description "DBI::Sugar"
    :tags ["perl"]))
(hoarder:record "emperlium/lib-base"
  '(:tags ["perl"]))
(hoarder:record "OpusVL/OpusVL-FB11"
  '(:description "Business and Social Application Framework"
    :tags ["perl"]))
(hoarder:record "jforget/Perl-fixed-width-char-human-recognition"
  '(:description "Manage logistical functions when converting a printed listing to an electronic file"
    :tags ["perl"]))
(hoarder:record "nohuhu/Mojolicious-Plugin-ExtDirect"
  '(:description "Ext Direct plugin for Mojolicious"
    :tags ["perl"]))
(hoarder:record "meso-cacase/difff"
  '(:description "Webベースのテキスト比較ツール difff《ﾃﾞｭﾌﾌ》"
    :tags ["perl"]))
(hoarder:record "kaz-utashiro/greple-docx"
  '(:description "docx module for greple"
    :tags ["perl"]))
(hoarder:record "ap/Plack-App-Hostname"
  '(:description "Run multiple apps dispatched by the request Host header"
    :tags ["perl"]))
(hoarder:record "zmughal/gmail-imap-label"
  '(:description ":mailbox_with_mail::open_file_folder::bookmark: adds Gmail labels to IMAP stream as the X-Label header"
    :tags ["perl"]))
(hoarder:record "chocolateboy/App-Wax"
  '(:description "wax - webify your CLI"
    :tags ["perl" "cache" "cli" "command" "command-combinator" "command-line" "console" "mirror" "uri" "url" "web" "webify"]))
(hoarder:record "domm/Plack-Middleware-PrettyException"
  '(:description "Capture exceptions and present them as HTML or JSON"
    :tags ["perl"]))
(hoarder:record "nrdvana/perl-Data-TableReader"
  '(:description "Extract records from \"dirty\" tabular data sources"
    :tags ["perl"]))
(hoarder:record "jfraire/Event-Handler"
  '(:description "A simple user-generated events manager for Perl's AnyEvent"
    :tags ["perl"]))
(hoarder:record "preaction/Mercury"
  '(:description "A message broker for WebSockets"
    :tags ["perl"]))
(hoarder:record "trwyant/perl-Perl-Critic-Policy-Variables-ProhibitUnusedVarsStricter"
  '(:description "Critique unused variables in Perl source."
    :tags ["perl" "perl-critic" "perl-module"]))
(hoarder:record "debug-ito/AnyEvent-Connector"
  '(:description "AnyEvent's tcp_connect with proxy support"
    :tags ["perl"]))
(hoarder:record "exodist/H"
  '(:description "Method wrappers for hash construction."
    :tags ["perl"]))
(hoarder:record "nigelhorne/CHI-Driver-SharedMem"
  '(:description "Cache data in shared memory"
    :tags ["perl"]))
(hoarder:record "skx/dns-api.org"
  '(:description "Simple DNS API server"
    :tags ["dns" "perl" "website"]))
(hoarder:record "knarka/any"
  '(:description "any is a tool to use any terminal-based text editor, to edit text anywhere"
    :tags ["perl" "clipboard" "clipboard-extension" "text-editing" "vi" "vim"]))
(hoarder:record "emperlium/lib-audio-mp3"
  '(:tags ["perl"]))
(hoarder:record "nloutas/clotho"
  '(:description "A PERL-based open source Content Management System. The content is categorised in 'elements', which are inserted into the 'template' to dynamically generate the web page."
    :tags ["perl"]))
(hoarder:record "theunixguys/blackjack"
  '(:description "Blackjack game in CLI"
    :tags ["perl"]))
(hoarder:record "jhunt/cc-me"
  '(:description "Cloud Configuration Generation"
    :tags ["perl"]))
(hoarder:record "bcattaneo/pitbot"
  '(:description "IRC <-> Telegram relay bot written in perl"
    :tags ["perl"]))
(hoarder:record "pacoesteban/Rarbg-torrentapi"
  '(:description "Perl Module to interact with https://torrentapi.org"
    :tags ["perl"]))
(hoarder:record "logie17/SWISH-Filters-ImageMD5ToXml"
  '(:tags ["perl"]))
(hoarder:record "magnolia-k/Test2-Pretty"
  '(:tags ["perl"]))
(hoarder:record "SEEDtk/RASTtk"
  '(:description "Code that is independent of the database, and exportable to RASTtk and other projects"
    :tags ["perl"]))
(hoarder:record "karpet/dezi-app"
  '(:description "Dezi search platform components"
    :tags ["perl"]))
(hoarder:record "kevinspencer/burdie"
  '(:description "twitter client"
    :tags ["perl"]))
(hoarder:record "spencertipping/ni"
  '(:description "Write-anywhere, run-everywhere data science"
    :tags ["perl"]))
(hoarder:record "darold/pgcluu"
  '(:description "PostgreSQL Cluster performances monitoring and auditing tool"
    :tags ["perl"]))
(hoarder:record "jodiaz/littleWebCrawler"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-Progress-Any-Output-TermProgressBarColor"
  '(:tags ["perl"]))
(hoarder:record "cxw42/axk"
  '(:description "awk for XML files"
    :tags ["awk" "perl" "perl5" "xml" "xml-parser" "xml-parsing" "xml-processing"]))
(hoarder:record "ahf/onion_status"
  '(:description "Irssi script for status updates in #tor-dev on OFTC."
    :tags ["perl"]))
(hoarder:record "chabu-jp/whose"
  '(:description "🔍 Explore an IP address (v4/v6)"
    :tags ["perl" "bgp" "dns" "perl5" "whois"]))
(hoarder:record "chabu/whose"
  '(:description "🔍 explore an IPv4/v6 address"
    :tags ["perl" "bgp" "dns" "perl5" "whois"]))
(hoarder:record "benkasminbullock/chinese-ip"
  '(:description "Detect internet addresses from China."
    :tags ["perl"]))
(hoarder:record "dlrice/rss2email"
  '(:description "WTSI's journal picks weekly email perl script"
    :tags ["perl"]))
(hoarder:record "SouthGreenPlatform/pathostDB"
  '(:tags ["perl"]))
(hoarder:record "gcd-union/Ransomware"
  '(:description "This is AnonCrypt ransomware, the first Perl ransomware"
    :tags ["perl"]))
(hoarder:record "xuntaka/bulletin"
  '(:description "Генератор бюллетеней для ОСС МКД"
    :tags ["perl"]))
(hoarder:record "chilts/deployer"
  '(:description "Small, simple script to deploy small simple websites, without real packaging. Really, it's a bit silly. But useful."
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-RegexpPatternUtils"
  '(:tags ["perl"]))
(hoarder:record "lembark/Module-FromPerlVer"
  '(:description "Install module contents based on perl version."
    :tags ["perl"]))
(hoarder:record "brainbuz/String-Validator"
  '(:description "The Source Repository for the String Validator Collection of Modules on CPAN"
    :tags ["perl"]))
(hoarder:record "fusiondirectory/argonaut"
  '(:description "Communication layer between various software and the JSON-RPC Argonaut Server."
    :tags ["argonaut" "argonaut-fai-mirror" "argonaut-fuse" "argonaut-server" "argonaut-user-reminder" "client" "dovecot" "fai" "fai-server" "fusiondirectory" "json-rpc" "opsi" "perl" "quota" "samba-share" "server" "systems-management"]))
(hoarder:record "openresty/opsboy"
  '(:description "A rule-based sysadmin tool that helps setting up complex environment for blank machines"
    :tags ["perl"]))
(hoarder:record "sysread/SkewHeap"
  '(:description "A fast, efficient, self-adjusting heap for Perl, implemented in C"
    :tags ["perl"]))
(hoarder:record "atoomic/Parallel-Subs"
  '(:description "Simple way to run subs in parallel and process their return value in perl"
    :tags ["perl"]))
(hoarder:record "Starmute/Stellumo"
  '(:description "A project to render the entire Monero blockchain as fractal art."
    :tags ["perl"]))
(hoarder:record "book/CPANio"
  '(:description "CPAN.io"
    :tags ["perl"]))
(hoarder:record "aretaja/matrix_mbot"
  '(:description "matrix.org bot based on Net::Async::Matrix (Perl)"
    :tags ["perl"]))
(hoarder:record "Arbaletos/Elemento"
  '(:description "Small Regue-like game, written on Perl."
    :tags ["perl"]))
(hoarder:record "sajee05/admin_fider.pl"
  '(:tags ["perl"]))
(hoarder:record "blchinezu/mkvTool"
  '(:description "A perl wrapper for mkvtoolnix"
    :tags ["mkvtool" "mkvtoolnix" "perl" "wrapper"]))
(hoarder:record "benkasminbullock/json-repair"
  '(:tags ["perl"]))
(hoarder:record "benkasminbullock/lingua-guess"
  '(:description "Language::Guess CPAN module, under a new name"
    :tags ["perl"]))
(hoarder:record "kentnl-gentoo/Unicode-MapUTF8"
  '(:description "CPAN History + Gentoo patches for Unicode-MapUTF8"
    :tags ["perl"]))
(hoarder:record "benkasminbullock/image-similar"
  '(:description "Find similarity between images"
    :tags ["perl"]))
(hoarder:record "benkasminbullock/Image-PNG-FileConvert"
  '(:description "cpan module Image::PNG::FileConvert"
    :tags ["perl"]))
(hoarder:record "benkasminbullock/File-Versions"
  '(:tags ["perl"]))
(hoarder:record "benkasminbullock/image-cairosvg"
  '(:tags ["perl"]))
(hoarder:record "karupanerura/WWW-Connpass"
  '(:description " browser for connpass(R)"
    :tags ["perl"]))
(hoarder:record "gotanda-pm/Mother"
  '(:description "イベント開催の雑務をやってくれるお母さん"
    :tags ["perl"]))
(hoarder:record "benkasminbullock/Data-Kanji-Tomoe"
  '(:tags ["perl"]))
(hoarder:record "benkasminbullock/Data-Kanji-KanjiVG"
  '(:description "Perl module to parse the KanjiVG (kanji vector graphics) data"
    :tags ["perl"]))
(hoarder:record "benkasminbullock/Data-Kanji-Kanjidic"
  '(:tags ["perl"]))
(hoarder:record "benkasminbullock/nearest-module"
  '(:description "Perl / C to find a module when its name is misspelt"
    :tags ["perl"]))
(hoarder:record "banditkroot/weetwitch"
  '(:description "Utiliser Twitch avec Weechat"
    :tags ["livestreamer" "perl" "streamlink" "weechat-scripts"]))
(hoarder:record "benkasminbullock/acme-isitjson"
  '(:description "A stupid Perl module"
    :tags ["perl"]))
(hoarder:record "benkasminbullock/Acme-Include-Data"
  '(:tags ["perl"]))
(hoarder:record "benkasminbullock/html-make"
  '(:tags ["perl"]))
(hoarder:record "benkasminbullock/net-ipv6addr"
  '(:description "Net::IPv6Addr by Tony Monroe"
    :tags ["perl"]))
(hoarder:record "Leont/app-find2perl"
  '(:description "Translate find command lines to Perl code"
    :tags ["perl"]))
(hoarder:record "mig0/netspeed"
  '(:description "Simple tool to perform network speed test between any 2 hosts."
    :tags ["perl"]))
(hoarder:record "grubert65/Mir"
  '(:description "Mir is a Media Information Retriaval platform..."
    :tags ["perl"]))
(hoarder:record "saket404/Music-Adjustment-Perl-Script"
  '(:description "A playlist organizing script written in perl"
    :tags ["perl"]))
(hoarder:record "ryoukura/onetimepass"
  '(:description "onetimepass - one-time password generator"
    :tags ["perl"]))
(hoarder:record "cwinters/SPOPS"
  '(:description "Simple Perl Object Persistence with Security"
    :tags ["perl"]))
(hoarder:record "tomospin/perlregex"
  '(:description "A simple program to move and change file path/name for a purpose"
    :tags ["perl"]))
(hoarder:record "davidromero55/Zera"
  '(:description "Zera - Perl web application framework"
    :tags ["perl"]))
(hoarder:record "bollwarm/App-Waf"
  '(:description "A simple waf application .用来实时探测web 非法访问，统计非法访问的ip ，web状态，访问url，来源web url。结合iptables和nginx可以实现实现实时封禁。"
    :tags ["perl"]))
(hoarder:record "Corion/App-PostImage"
  '(:description "Publish images from your smartphone"
    :tags ["perl"]))
(hoarder:record "shlomif/github-dashboard"
  '(:description "A dashboard for GitHub projects."
    :tags ["perl"]))
(hoarder:record "sputnick-dev/saxon-lint"
  '(:description "XPath3/XQuery 3.0/XSLT 2.0 cross-platform command line tool"
    :tags ["perl"]))
(hoarder:record "barefootcoder/date-easy"
  '(:description "Perl module providing easy dates with Time::Piece compatibility"
    :tags ["perl"]))
(hoarder:record "vlyon/plate"
  '(:description "Plate, a fast templating engine with support for embedded Perl"
    :tags ["perl"]))
(hoarder:record "blorticus/perl-net-diameter"
  '(:description "Implementation of Diameter Protocol messaging, AVPs and instances"
    :tags ["perl"]))
(hoarder:record "Tekki/onedrive-perl"
  '(:description "Perl client for Office 365 services."
    :tags ["perl"]))
(hoarder:record "a-castellano/AddressBook"
  '(:description "Another Perl Catalyst test app - AddressBook"
    :tags ["perl"]))
(hoarder:record "briandfoy/Roman-Unicode"
  '(:description "Use the fancy Unicode characters to convert numbers to roman numerals"
    :tags ["perl" "roman-numerals" "unicode"]))
(hoarder:record "briandfoy/distribution-guess-buildsystem"
  '(:description "(Perl) This is what the module does"
    :tags ["perl" "static-analysis"]))
(hoarder:record "ReneNyffenegger/crawler"
  '(:description "Crawler in Perl"
    :tags ["perl"]))
(hoarder:record "DragosTrif/Object-Oriented-Perl"
  '(:description "This is my journey through the book Object Oriented Perl. You can do things easier with Moose or Moo today but the concepts are the same."
    :tags ["perl"]))
(hoarder:record "chocolateboy/Getopt-Module"
  '(:description "A Perl module which allows applications to handle -M and -m options like perl"
    :tags ["perl" "cli" "command" "command-line" "cpan-module" "getopt-long" "options" "perl-module"]))
(hoarder:record "CyberTKR/TKDDosPerl"
  '(:description "CyberTK"
    :tags ["perl"]))
(hoarder:record "oetiker/mojolicious-plugin-qooxdoo"
  '(:description "Qooxdoo JSON-RPC support for the Mojolicious Perl framework."
    :tags ["mojolicious-perl-framework" "perl" "qooxdoo"]))
(hoarder:record "worthmine/Text-Password-AutoMigration"
  '(:description "Text::Password::AutoMigration - generate and verify Password with any contexts"
    :tags ["password-generator" "password-hash" "perl"]))
(hoarder:record "dallaylaen/assert-refute-perl"
  '(:description "Test script-alike code snippets usable in production code"
    :tags ["perl"]))
(hoarder:record "ology/Mock-Populate"
  '(:description "Handy Perl functions to populate random and quasi-random data-points"
    :tags ["perl"]))
(hoarder:record "nichtich/Pandoc-Elements"
  '(:description "Perl module to create and process Pandoc documents"
    :tags ["pandoc" "perl"]))
(hoarder:record "briandfoy/file-find-closures"
  '(:description "(Perl) functions you can use with File::Find"
    :tags ["perl"]))
(hoarder:record "unclechu/gpaste-gui"
  '(:description "Simple and handy GUI for managing clipboard history of GPaste daemon"
    :tags ["clipboard" "clipboard-history" "clipboard-management" "clipboard-manager" "gpaste" "gtk" "gtk2" "gui" "linux-desktop" "perl" "perl5" "utility"]))
(hoarder:record "perlancar/perl-JSON-Decode-Regexp"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-Regexp-Pattern-JSON"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-Regexp-Common-json"
  '(:tags ["perl"]))
(hoarder:record "sweharris/TubeHost"
  '(:description "A fileserver for the BBC Micro written in perl, to talk to the HostFS ROM"
    :tags ["perl"]))
(hoarder:record "karpet/search-tools-perl"
  '(:description "Search::Tools - high performance toolkit for building search applications in Perl"
    :tags ["perl"]))
(hoarder:record "csrss/PerlChat"
  '(:tags ["perl"]))
(hoarder:record "ChaoticEvil/ithumb-xs"
  '(:description "Very small and simple Perl-XS module for creation a thumbnails, using Imlib2."
    :tags ["perl"]))
(hoarder:record "perlancar/perl-LWP-UserAgent-Patch-HTTPSHardTimeout"
  '(:tags ["perl"]))
(hoarder:record "choroba/syntactic-construct"
  '(:description "Specify the non-feature constructs used in your Perl code."
    :tags ["perl" "perl5"]))
(hoarder:record "perlancar/perl-App-BloomUtils"
  '(:tags ["perl"]))
(hoarder:record "marcusramberg/text-simpletable"
  '(:description "The Text::SimpleTable perl distribution"
    :tags ["perl"]))
(hoarder:record "briandfoy/ConfigReader-Simple"
  '(:description "(Perl) Simple configuration file parser"
    :tags ["configuration-file" "perl"]))
(hoarder:record "chocolateboy/Object-Extend"
  '(:description "A Perl module which allows per-object methods to be added and overridden"
    :tags ["perl" "eigenclass" "perl-module" "ruby" "singleton"]))
(hoarder:record "briandfoy/webreaper"
  '(:tags ["perl" "web-crawler"]))
(hoarder:record "mig0/SMB"
  '(:description "Implementing CIFS (SMB) protocol in Perl"
    :tags ["perl"]))
(hoarder:record "vyourtaev/AppManager"
  '(:description "Perl Application Manager"
    :tags ["perl"]))
(hoarder:record "yama-dev/get_image_in_directory-module"
  '(:description "Get image in directory."
    :tags ["perl" "php"]))
(hoarder:record "SlavikCA/monitor-file-updates"
  '(:description "Perl scripts, which monitors and emails about file updates"
    :tags ["perl"]))
(hoarder:record "ernstchan/phutaba"
  '(:description "An imageboard engine"
    :tags ["imageboard" "perl" "wakaba"]))
(hoarder:record "jamesheesbeen/watchlist"
  '(:description "A simple web application that keeps track of films that you have watched or would like to watch."
    :tags ["perl"]))
(hoarder:record "M-Gomez/Plex-File-Processor"
  '(:description "Renames media files in a given directory to make them easier to parse through, then converts any .mkv files to .mp4 using FFmpeg to avoid costly real-time transcoding. Created and used on my personal plex media server to reduce CPU load."
    :tags ["perl"]))
(hoarder:record "TomTsagk/avgdl"
  '(:description "A descriptive language for making video games"
    :tags ["perl"]))
(hoarder:record "briandfoy/business-isbn"
  '(:description "(Perl) Deal with ISBNs"
    :tags ["books" "isbn" "perl"]))
(hoarder:record "lyokha/hl"
  '(:description "A highly customizable PCRE-based highlighter for a wide range of terminal emulators."
    :tags ["perl" "color" "highlighting" "terminal-emulators"]))
(hoarder:record "smxi/inxi"
  '(:description "inxi is a full featured CLI system information tool. It is available in most Linux distribution repositories, and also runs somewhat on BSDs. "
    :tags ["perl"]))
(hoarder:record "ickooch/rosh"
  '(:tags ["perl"]))
(hoarder:record "billgerrard/google-content-api"
  '(:description "Google::ContentAPI - Perl module to interact with Google's Content API for Shopping"
    :tags ["perl"]))
(hoarder:record "pine/p5-Scope-UndefSafe"
  '(:description ":telescope: Scope::UndefSafe has two functions to limit scope undef safety."
    :tags ["perl"]))
(hoarder:record "wilyarti/simple-dns-adblock"
  '(:description "simple dns adblocker using dnsmasq"
    :tags ["perl"]))
(hoarder:record "Cside/bookmark-meter"
  '(:tags ["perl"]))
(hoarder:record "tearon4/Acme-Keyakizaka46"
  '(:description "CPAN Module Acme::Keyakizaka46"
    :tags ["perl"]))
(hoarder:record "elrzn/p5-conf-diff"
  '(:description "A quick and dirty script to (visually) diff configuration files"
    :tags ["perl"]))
(hoarder:record "contradev/nord"
  '(:description "utils for nord vpn"
    :tags ["perl"]))
(hoarder:record "davorg/moox-role-json_ld"
  '(:description "Moo role to easily add JSON-LD generation into a class"
    :tags ["perl"]))
(hoarder:record "rolanday/Image-Importer"
  '(:description "Organizes photos and images into user specified libraries using templates for layout structure and file naming convention."
    :tags ["perl"]))
(hoarder:record "Grinnz/Mojo-Reactor-Epoll"
  '(:description "Mojo::Reactor::Epoll - epoll backend for Mojo::Reactor"
    :tags ["perl"]))
(hoarder:record "yock/IrssiSpy"
  '(:description "A notification script for Irssi."
    :tags ["perl"]))
(hoarder:record "igsor/hillie"
  '(:description "Read and modify structured annotations in PDFs or Okular metadata files"
    :tags ["perl"]))
(hoarder:record "manuelmessner/build.pl"
  '(:description "Build everything with only one command."
    :tags ["perl"]))
(hoarder:record "crlcu/Mojolicious-Plugin-Events"
  '(:description "Mojolicious plugin for dispatching and handling sync/async events"
    :tags ["perl"]))
(hoarder:record "hamishcoleman/ssh-pubkey-syntax-check"
  '(:description "Quick code quality check to confirm that the ssh_known_hosts and authorized_keys  contain no obvious errors"
    :tags ["perl"]))
(hoarder:record "dankogai/p5-http-response-encoding"
  '(:description "HTTP::Response::Encoding - Adds encoding() to HTTP::Response"
    :tags ["perl"]))
(hoarder:record "SSLMate/sslmate"
  '(:description "The SSLMate Client - Buy and Manage SSL Certs from the Command Line"
    :tags ["perl"]))
(hoarder:record "finley/SSM"
  '(:description "Simple State Manager"
    :tags ["perl"]))
(hoarder:record "su8/urxvt-encrypt"
  '(:tags ["perl"]))
(hoarder:record "MareoRaft/regex"
  '(:description "Run and save regexes with Alfred!"
    :tags ["perl"]))
(hoarder:record "hartzell/moox-strictconstructor"
  '(:description "Strict constructors for Moo classes."
    :tags ["perl"]))
(hoarder:record "kuiperbelt/webchat-example"
  '(:description "The simple realtime application using kuiperbelt."
    :tags ["perl"]))
(hoarder:record "ProcessofThings/mojolicious-plugin-multichain"
  '(:tags ["perl"]))
(hoarder:record "reneeb/Mojolicious-Plugin-WebAPI"
  '(:tags ["perl"]))
(hoarder:record "mathieugouin/rpiDvr"
  '(:description "Using a Raspberry Pi micro-computer as a DVR to record free over the air HD channels."
    :tags ["perl"]))
(hoarder:record "mkarothi/Dumpfiles"
  '(:description "dump files to exchange files"
    :tags ["perl"]))
(hoarder:record "kberov/Slovo"
  '(:description "В началѣ бѣ Слово"
    :tags ["perl" "asciidoctor" "cms" "cms-framework" "markdown" "mithril" "mojo" "mojolicious" "mvc-architecture" "openapi" "perl5" "pure-css" "rest-api"]))
(hoarder:record "bpetrikovics/teamspeak3-music-control"
  '(:description "TS3 Music Control - Teamspeak bot / Mopidy remote control"
    :tags ["perl"]))
(hoarder:record "160545/ilmomatikki"
  '(:tags ["perl"]))
(hoarder:record "lvc/abi-monitor"
  '(:description "A tool to monitor and build new versions of a software library"
    :tags ["perl"]))
(hoarder:record "mvgrimes/Perl-Tidy-Sweetened"
  '(:description "Tweaks to Perl::Tidy to work with some of the \"modern\" method syntax"
    :tags ["perl"]))
(hoarder:record "jgoodman/perl-Elevator-Pitch-Generator"
  '(:tags ["perl"]))
(hoarder:record "doriantaylor/p5-app-oauth-authenticator"
  '(:description "Stand-alone PSGI/FastCGI authenticator against multiple OAuth(2) providers"
    :tags ["perl"]))
(hoarder:record "gabrielhdt/ralbumpd"
  '(:description "Album based mpd manipulation"
    :tags ["perl" "mpd-client" "mpdclient"]))
(hoarder:record "ledgersmb/PGObject-Util-DBAdmin"
  '(:description "Database Administration Functionality for PGObject apps"
    :tags ["perl"]))
(hoarder:record "nabat/2abills"
  '(:tags ["perl"]))
(hoarder:record "vovkasm/Class-Accessor-Inherited-XS"
  '(:description "Fast XS inherited, object and class accessors"
    :tags ["accessor" "perl" "xs"]))
(hoarder:record "mche/Mojo-Pg-Che"
  '(:description "Perl module Mojo::Pg::Che - mix of parent Mojo::Pg and DBI.pm"
    :tags ["perl" "async" "dbi" "kraih" "mojo" "postgresql"]))
(hoarder:record "mche/DBIx-Mojo-Template"
  '(:description "Render SQL statements templates by Mojo::Template"
    :tags ["perl" "mojo" "template"]))
(hoarder:record "sitaramc/pt"
  '(:description "CLI, git-aware, project (issue) tracker"
    :tags ["perl"]))
(hoarder:record "richcsst/Graphics-Framebuffer"
  '(:description "CPAN module Graphics::Framebuffer"
    :tags ["perl"]))
(hoarder:record "AndyA/Lintilla"
  '(:description "Dancer webapp tools and utilities"
    :tags ["perl"]))
(hoarder:record "whefter/rotating-rsync-backup"
  '(:tags ["perl"]))
(hoarder:record "rkapl123/OreControl"
  '(:description "Opensource Risk Enginge control tools (database, Excel-addin, windows service)"
    :tags ["perl"]))
(hoarder:record "ybrliiu/Jikkoku"
  '(:description "十国志NET"
    :tags ["perl"]))
(hoarder:record "fenway-library-organization/vblr"
  '(:description "Voyager ILS batchload manager"
    :tags ["perl"]))
(hoarder:record "simple-evcorr/sec"
  '(:description "Simple Event Correlator releases"
    :tags ["perl"]))
(hoarder:record "polettix/Memorator"
  '(:description "Remind of events via Minion"
    :tags ["perl"]))
(hoarder:record "shlomif/App-Timestamper"
  '(:description "A command line filter to prefix lines with the timestamps of their creation."
    :tags ["perl"]))
(hoarder:record "klausmeyer/km-dyndns"
  '(:description "🌍 A small cgi script providing a dynamic dns service written in perl, using a mysql database."
    :tags ["perl"]))
(hoarder:record "667bdrm/owspctl"
  '(:description "owspctl is an open source cross-platform tool and sdk to control CPlayer+ compatible H264 DVR"
    :tags ["perl"]))
(hoarder:record "Gilwyad/mailnesia.com"
  '(:description "Anonymous Email in Seconds"
    :tags ["perl"]))
(hoarder:record "jorol/App-diceware"
  '(:description "A simple Diceware passphrase generator"
    :tags ["perl"]))
(hoarder:record "ltriant/Games-Ascii"
  '(:description "Small game engine for making ASCII-based games"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-Regexp-Pattern"
  '(:tags ["perl"]))
(hoarder:record "AnaTofuZ/perl5-Acme-TouhouProject"
  '(:tags ["perl"]))
(hoarder:record "Desarrollo-LVA/tianguis-electronico"
  '(:description "Plataforma para que las personas que visitan un tianguis conozcan lo que ofrecen los diferentes puestos"
    :tags ["perl"]))
(hoarder:record "emperlium/lib-audio-wav"
  '(:tags ["perl"]))
(hoarder:record "semifor/Twitter-API"
  '(:description "A Twitter REST API library for Perl"
    :tags ["perl"]))
(hoarder:record "progrhyme/perl5-App-Koyomi"
  '(:description "A simple distributed job scheduler."
    :tags ["perl" "clustering" "job-scheduler"]))
(hoarder:record "chocolateboy/Shell-Autobox"
  '(:description "A Perl module which provides a way to pipe strings through shell commands by chaining together method calls"
    :tags ["perl" "autobox" "cpan" "cpan-module" "ipc" "perl-module" "shell"]))
(hoarder:record "simonwalz/exifrename"
  '(:description "A perl script to rename pictures with their EXIF CreateData entry."
    :tags ["perl" "exif-createdata-entry" "exiftool" "rename-pictures"]))
(hoarder:record "cade-vs/perl-data-tools"
  '(:description "Data::Tools is perl module, which provides set of basic functions for data manipulation."
    :tags ["perl"]))
(hoarder:record "Ar-Men/armen.core"
  '(:description "Écosystème basé sur les microservices"
    :tags ["perl"]))
(hoarder:record "yokall/video_recording_handler"
  '(:description "Moves video recording from BlackMagic studio and saves in a directory based on date with a filename based on date and time"
    :tags ["perl"]))
(hoarder:record "davisjam/vuln-regex-detector"
  '(:description "Detect vulnerable regexes in your project. REDOS, catastrophic backtracking."
    :tags ["perl"]))
(hoarder:record "wakaba/perl-anyevent-mysql-client"
  '(:description "A promise-aware MySQL protocol client for Perl"
    :tags ["anyevent" "mysql" "perl" "promise"]))
(hoarder:record "polettix/Template-Perlish"
  '(:description "Yet Another Templating system for Perl"
    :tags ["perl"]))
(hoarder:record "sysread/slot"
  '(:description "Fast, simple, compile-time class declaration for Perl"
    :tags ["class" "object" "oo" "perl" "slot"]))
(hoarder:record "cazador481/App-LanguageServer-Perl"
  '(:description "A language server for perl"
    :tags ["perl"]))
(hoarder:record "ivanwills/App-VTide"
  '(:description "An IDE(ish) environment built on Tmux and Vim (or another editor if desired)"
    :tags ["perl"]))
(hoarder:record "kevinspencer/tweetlinkr"
  '(:description "Fetches a user timeline from Twitter looking for tweets with links"
    :tags ["perl"]))
(hoarder:record "yebeman/Scraper"
  '(:tags ["perl"]))
(hoarder:record "davorg/klortho"
  '(:description "Advice from Klortho"
    :tags ["klortho" "perl" "web-service"]))
(hoarder:record "djerius/Data-Record-Serialize"
  '(:description "Flexible serialization of records"
    :tags ["perl"]))
(hoarder:record "haarg/List-Util-MaybeXS"
  '(:tags ["perl"]))
(hoarder:record "eguaj/resmtp"
  '(:description "Fake SMTP server to relay any message to a specific mail account via a specific MTA."
    :tags ["perl"]))
(hoarder:record "brlat/ASCII-braille-to-Unicode-braille"
  '(:description "Converts ASCII braille(NABCC) file, such as .brf files, to Unicode braille text"
    :tags ["perl"]))
(hoarder:record "gmbow/Safir"
  '(:tags ["perl"]))
(hoarder:record "chocolateboy/Hash-Fold"
  '(:description "A Perl module which flattens and unflattens nested hashrefs"
    :tags ["perl" "cpan-module" "flatten" "fold" "hash" "perl-module" "unflatten" "unfold"]))
(hoarder:record "shreshthtuli/High-availability-clustering-of-Odroid-SBC"
  '(:tags ["perl"]))
(hoarder:record "juliensobrier/Net-Google-SafeBrowsing4"
  '(:description "Net::Google::SafeBrowsing4 - Perl library for Google Safebrowsing v4"
    :tags ["perl"]))
(hoarder:record "p5sagit/curry"
  '(:tags ["perl"]))
(hoarder:record "waldner/croncal"
  '(:description "Utility to convert a crontab file to a list of actual events within a date range."
    :tags ["perl"]))
(hoarder:record "LibreCat/librecat-hfh-demo"
  '(:description "demo for dancer and HTML::FormHandler"
    :tags ["perl"]))
(hoarder:record "misterfish/fish-lib-perl"
  '(:description "Lots of perl modules -- e.g. Fish::Utility (utilities), Fish::Class ('class' and 'o' keywords), Fish::Opt (option processing), Fish::Iter (iterate through data structures), and more."
    :tags ["perl"]))
(hoarder:record "arc/p5-image-exif"
  '(:tags ["c"]))
(hoarder:record "missaugustina/perl-out-of-order"
  '(:description "Sample code for my YAPC::NA talk \"Perl Out Of Order\""
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=VYBLCvMu_pA][Augustina Ragwitz (‎auggy‎) - ‎Perl Out Of Order: Why Timeout Today What You Can Return Tomorrow‎ - YouTube]]"))
(hoarder:record "vti/pocketio"
  '(:description "SocketIO PSGI App"
    :tags ["perl"]))
(hoarder:record "domm/Pod2Slides"
  '(:description "make HTML presentations from POD"
    :tags ["perl"]))
(hoarder:record "powerman/perl-FCGI-EV-Std"
  '(:description "Perl module: FCGI::EV::Std - Handler class to use with FCGI::EV"
    :tags ["perl"]))
(hoarder:record "powerman/powerdiff"
  '(:description "Output diff between two directories as sh+patch+tgz"
    :tags ["perl"]))
(hoarder:record "powerman/perl-Async-Defer"
  '(:description "Perl module: Async::Defer - VM to write and run async code in usual sync-like way"
    :tags ["perl"]))
(hoarder:record "powerman/perl-IO-Stream"
  '(:description "Perl module: IO::Stream - ease non-blocking I/O streams based on EV"
    :tags ["perl"]))
(hoarder:record "powerman/perl-DBIx-SecureCGI"
  '(:description "Perl module: DBIx::SecureCGI - Secure conversion of CGI params hash to SQL"
    :tags ["perl"]))
(hoarder:record "nkuitse/pfr"
  '(:description "Batch-load tracker"
    :tags ["perl"]))
(hoarder:record "powerman/perl-JSON-RPC2"
  '(:description "Perl module: JSON::RPC2 - Transport-independent implementation of JSON-RPC 2.0"
    :tags ["perl"]))
(hoarder:record "powerman/perl-CGI-Easy"
  '(:description "Perl module: CGI::Easy - simple and straightforward helpers to make CGI easy"
    :tags ["perl"]))
(hoarder:record "powerman/perl-MojoX-UserAgent-Throttler"
  '(:description "Perl module: MojoX::UserAgent::Throttler - add throttling support to Mojo::UserAgent"
    :tags ["perl"]))
(hoarder:record "mikegrb/App-otfile"
  '(:description "Serve a single file, once, via HTTP over the local network."
    :tags ["perl"]))
(hoarder:record "djerius/App-Env"
  '(:description "manage application specific environments"
    :tags ["perl"]))
(hoarder:record "glgraca/Hodgepodge"
  '(:description "Celular Automata from images"
    :tags ["perl"]))
(hoarder:record "hoelzro/useful-scripts"
  '(:description "Scripts from my private ~/bin-tage"
    :tags ["perl"]))
(hoarder:record "shijiang1130/PerlGetCactiImage"
  '(:tags ["perl"]))
(hoarder:record "ukigumo/Ukigumo-Client"
  '(:description "Ukigumo client utility"
    :tags ["perl"]))
(hoarder:record "abbypan/dns_study_forwarding_structure"
  '(:description "forwarding resolver -> recursiver resolver"
    :tags ["perl"]))
(hoarder:record "ivanwills/App-Git-Workflow-Command-Cat"
  '(:description "Short cut command for showing the contents of git files"
    :tags ["perl"]))
(hoarder:record "ivanwills/App-Git-Workflow-Command-BranchConflicts"
  '(:description "Tool for checking if current working branches will cause conflicts if merged together"
    :tags ["perl"]))
(hoarder:record "ivanwills/App-Git-Workflow-Command-SinceRelease"
  '(:description "Tools for checking if branches are out of date since the last release"
    :tags ["perl"]))
(hoarder:record "ivanwills/App-Git-Workflow-Command-Take"
  '(:description "Resolve git merge confilicts by taking only one side of the conflict (not the entire files from one side)"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-BencherUtils"
  '(:tags ["perl"]))
(hoarder:record "joechiu/tcm"
  '(:tags ["perl"]))
(hoarder:record "toddfries/FDC-db"
  '(:description "a perl db abstraction convenience function module"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-ProcUtils"
  '(:tags ["perl"]))
(hoarder:record "perlancar/perl-App-dbinfo"
  '(:tags ["perl"]))
(hoarder:record "fayland/perl-MojoX-CloudFlare-Simple"
  '(:description "simple cloudflare client without wrapper"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-PMUtils"
  '(:tags ["perl"]))
(hoarder:record "jcd/deadcode-dev-ci"
  '(:description "Tools used by CI for building deadcode libs "
    :tags ["perl"]))
(hoarder:record "joechiu/restfuld"
  '(:description "A lite restfuld service developed by Perl. "
    :tags ["perl"]))
(hoarder:record "andy-bower/simple-db-viewer"
  '(:tags ["perl"]))
(hoarder:record "mplexus/xbg"
  '(:description "Pick a background for your linux desktop"
    :tags ["perl"]))
(hoarder:record "hepcat72/removeCommonSubstrs"
  '(:tags ["perl"]))
(hoarder:record "ssimms/pdfapi2"
  '(:description "Facilitates the creation and modification of PDF files in Perl"
    :tags ["perl" "pdf"]))
(hoarder:record "jkstill/sqlnet"
  '(:description "Oracle SQL*Net scripts, files, tests, etc"
    :tags ["perl"]))
(hoarder:record "oysttyer/oysttyer"
  '(:description "An interactive console text-based command-line Twitter client written in Perl"
    :tags ["perl"]))
(hoarder:record "sunnavy/beagle"
  '(:description "an advanced way to manage/track/serve entries"
    :tags ["perl" "app-cmd"]
    :memo "[[https://metacpan.org/pod/Beagle][Beagle - an advanced way to manage/track/serve thoughts/articles/posts - metacpan.org]]"))
(hoarder:record "ollyg/App-passmanager"
  '(:description "Development of App::passmanager Perl Distribution"
    :tags ["perl" "app-cmd"]
    :memo "[[https://metacpan.org/release/App-passmanager][App-passmanager-1.113580 - Command-Line Shared Password Store - metacpan.org]]"))
(hoarder:record "mstock/App-Scaffolder"
  '(:description "Application for scaffolding using templates"
    :tags ["perl" "app-cmd"]
    :memo "[[https://metacpan.org/pod/App::Scaffolder][App::Scaffolder - Application for scaffolding using templates - metacpan.org]]"))
(hoarder:record "dgholz/App-Rssfilter"
  '(:description "Download RSS feeds and apply rules to the items"
    :tags ["perl" "app-cmd"]
    :memo "[[https://metacpan.org/release/App-Rssfilter][App-Rssfilter-0.07 - remove clutter from your news feeds - metacpan.org]]"))
(hoarder:record "genehack/app-miseenplace"
  '(:tags ["perl" "app-cmd"]
    :memo "[[https://metacpan.org/pod/App::MiseEnPlace][App::MiseEnPlace - A place for everything and everything in its place - metacpan.org]]"))
(hoarder:record "andrewrjones/perl5-App-MP4Meta"
  '(:description "Apply iTunes-like meta data to an mp4 file"
    :tags ["perl" "app-cmd"]
    :memo "[[https://metacpan.org/release/App-MP4Meta][App-MP4Meta-1.153340 - Apply iTunes-like metadata to an mp4 file. - metacpan.org]]"))
(hoarder:record "genehack/app-gitgitr"
  '(:description "Download, build, and install new git releases"
    :tags ["perl" "app-cmd"]
    :memo "[[https://metacpan.org/release/App-GitGitr][App-GitGitr-0.906 - Automatically fetch and build the most recent git. - metacpan.org]]"))
(hoarder:record "renormalist/app-dpath"
  '(:description "Command-line tool to filter files with Data::DPath"
    :tags ["perl" "app-cmd"]
    :memo "[[https://metacpan.org/release/App-DPath][App-DPath-0.10 - Cmdline tool around Data::DPath - metacpan.org]]"))
(hoarder:record "renormalist/data-dpath"
  '(:description "A perl lib to provide access to data structures inspired by XPath"
    :tags ["perl"]
    :memo "[[https://metacpan.org/pod/Data::DPath][Data::DPath - DPath is not XPath! - metacpan.org]]"))
(hoarder:record "jipipayo/Dependencio"
  '(:description "perl console app to find perl modules dependencies recursively in your project"
    :tags ["perl" "ap-cmd"]
    :memo "[[https://metacpan.org/release/App-Dependencio][App-Dependencio-0.09 - Simple utility to find perl modules dependencies recursively in your project. - metacpan.org]]"))
(hoarder:record "charsbar/cli-dispatch"
  '(:description "simple CLI dispatcher"
    :tags ["perl" "app-cmd"]
    :memo "[[https://metacpan.org/pod/CLI::Dispatch][CLI::Dispatch - simple CLI dispatcher - metacpan.org]]"))
(hoarder:record "kberov/Ado"
  '(:description "Ado - a rapid active commotion (framework for web projects on Mojolicious)"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=8kBOxd6DQsM][Ado - framework for web projects on Mojolicious - Красимир Беров (berov) - YouTube]]
[[https://github.com/kberov/Ado-YAPC-EU-talk][GitHub - kberov/Ado-YAPC-EU-talk]]"))
(hoarder:record "white-mns/yurikagami_parse"
  '(:description "百合鏡データ小屋の解析プログラム"
    :tags ["perl"]))
(hoarder:record "hamishcoleman/libhc-perl"
  '(:description "Submodule collecting a bunch of simple functions that I often re-implement"
    :tags ["perl"]))
(hoarder:record "jamadam/WWW-Flatten"
  '(:description "Flatten a web pages deeply and make it portable"
    :tags ["perl"]))
(hoarder:record "Justhellx/sqlifs"
  '(:description "SQL Injection Find with Scanner"
    :tags ["perl"]))
(hoarder:record "manwar/Map-Tube"
  '(:description "Lightweight Routing Framework."
    :tags ["perl"]))
(hoarder:record "celogeek/MooX-Options"
  '(:description "Add option and new_with_options to Moo object"
    :tags ["perl"]
    :memo "[[https://metacpan.org/pod/MooX::Options][MooX::Options - Explicit Options eXtension for Object Class - metacpan.org]]"))
(hoarder:record "book/File-ContentStore"
  '(:tags ["perl"]))
(hoarder:record "ivanwills/App-NpmUpdater"
  '(:description "npm helper for updating and informing about changes to node modules"
    :tags ["perl"]))
(hoarder:record "Leont/sys-sendfile"
  '(:description "Zero-copy data transfer"
    :tags ["perl"]))
(hoarder:record "petrkle/next-song"
  '(:description "Next song script for Ezstream"
    :tags ["ezstream" "icecast" "mp3" "perl" "sqlite3"]))
(hoarder:record "KootenayCoopRadio/thevoice"
  '(:tags ["perl"]))
(hoarder:record "Djent-/autoenum"
  '(:description "Script written in Perl to automate network scans."
    :tags ["perl"]))
(hoarder:record "niczero/git-transplant"
  '(:description "Copy commits to the current branch, faithfully preserving end-state, optionally restoring timestamps."
    :tags ["perl"]))
(hoarder:record "Thermi/Maxine"
  '(:description "Netfilter's Maxine IRC bot"
    :tags ["perl"]))
(hoarder:record "mikalv/builder-rbm"
  '(:description "A fork of Tor Browser Bundle's Builder. In use for Invisible Internet Browser Bundle"
    :tags ["perl"]
    :site "https://rbm.torproject.org/"))
(hoarder:record "bucardo/bucardo"
  '(:description "Bucardo multimaster and master/slave Postgres replication"
    :tags ["perl"]))
(hoarder:record "gautham-gn/library-management-perl"
  '(:description "Library Management using Perl"
    :tags ["perl"]))
(hoarder:record "tlily/tigerlily"
  '(:description "perl client for the lily chat server"
    :tags ["perl"]))
(hoarder:record "GuiltyDolphin/whatis"
  '(:description "Build advanced regular expressions with ease!"
    :tags ["perl"]))
(hoarder:record "whosgonna/Dancer2-Sample"
  '(:tags ["perl"]))
(hoarder:record "jajajasalu2/News-Mashup"
  '(:description "Perl scripts to create a news mashup website."
    :tags ["perl"]))
(hoarder:record "yoku0825/anemoeater"
  '(:tags ["perl"]))
(hoarder:record "symkat/Daemon-Control"
  '(:description "Daemon::Control - Create init scripts in Perl"
    :tags ["perl"]))
(hoarder:record "davorg/xml-feed"
  '(:description "The CPAN module XML::Feed"
    :tags ["cpan" "perl" "web-feed" "xml"]
    :memo "[[https://www.reddit.com/r/perl/comments/89z4fo/which_module_to_use_for_getting_data_from_an_rss/][Too Many Requests]]"))
(hoarder:record "shadowcat-mst/Hydrangea"
  '(:branch "firstcut"
    :memo "[[https://www.youtube.com/watch?v=PZtCwGGGWas&t=1216s][\"Bothead as a service\" - Matt S Trout - YouTube]]")) 
(hoarder:record "PerlStalker/comics-fetcher"
  '(:description "Fetch comics from specific sites and display them on a single page."
    :tags ["perl"]))
(hoarder:record "ih8celery/App-Devel-Todo"
  '(:description "manage your project's todos at the command line"
    :tags ["perl"]))
(hoarder:record "HArchitect/graphing-perl-module"
  '(:description "This Perl module will help you when trying to display graphs or grids in the terminal."
    :tags ["perl"]))
(hoarder:record "pmstacker/reddit-tradeflair-bot"
  '(:description "Tradeflair Bot"
    :tags ["perl"]))
(hoarder:record "ybrliiu/p5-Scalish"
  '(:description "Sounds like Scala"
    :tags ["perl"]))
(hoarder:record "caionakai/text_adventure_perl"
  '(:tags ["perl"]))
(hoarder:record "kyoto-shift/bitter"
  '(:description "Easily save code snippets from the command line "
    :tags ["perl"]))
(hoarder:record "hepcat72/motifSearch"
  '(:description "Search sequence files for binding motifs using perl regular expressions."
    :tags ["perl"]))
(hoarder:record "fibo/App-cloc-pm"
  '(:tags ["perl"]))
(hoarder:record "briankelly13/Brinance"
  '(:description "Brinance - command line check book register"
    :tags ["perl"]))
(hoarder:record "arjunsuvarna1/perl-webcrawler-"
  '(:tags ["perl"]))
(hoarder:record "paveljurca/o"
  '(:description "Light web frontend to YouTube playlists"
    :tags ["perl"]))
(hoarder:record "KishimotoKuroCrow/CreatePlaylist"
  '(:description "Create playlist in current and sub-directories"
    :tags ["perl"]))
(hoarder:record "zabiralov/perl-Audio-Ytea"
  '(:description "Perl version of YTEA tool"
    :tags ["perl"]))
(hoarder:record "mnalis/whoishr"
  '(:description "parses .hr domain registry by scraping web www.dns.hr for extra info"
    :tags ["perl" "whois-lookup"]))
(hoarder:record "mnalis/dyndns-server-perl"
  '(:description "dyndns compatibile replacement server"
    :tags ["perl"]))
(hoarder:record "sciurius/comics"
  '(:description "A comics aggregator in the style of Gotblah."
    :tags ["perl"]))
(hoarder:record "plicease/FFI-Platypus"
  '(:description "Write Perl bindings to non-Perl libraries with FFI.  No XS required."
    :tags ["ffi" "perl"]))
(hoarder:record "yunaranyancat/Mojo-Tuto"
  '(:description "This repo is about Mojolicious Tutorial"
    :tags ["perl"]))
(hoarder:record "miyagawa/LWP-Protocol-PSGI"
  '(:description "hijack LWP stack with your own PSGI application"
    :tags ["perl"]))
(hoarder:record "jschauma/kv2json"
  '(:description "convert key‐value input to json"
    :tags ["perl"]))
(hoarder:record "yanick/List-Lazy"
  '(:description "Generate lists lazily"
    :tags ["perl"]))
(hoarder:record "https://gist.github.com/0ead33bd79f2061c68728cc82582241f.git"
  '(:tags ["perl"]))
(hoarder:record "nothingmuch/crypt-random-source"
  '(:tags ["perl"]))
(hoarder:record "crlcu/Mojolicious-Plugin-Validate-Tiny"
  '(:description "Mojolicious wrapper for Validate::Tiny"
    :tags ["perl"]))
(hoarder:record "naturalist/Validate--Tiny"
  '(:description "Filter and validate user input from forms, etc."
    :tags ["perl"]))
(hoarder:record "polettix/Memorator"
  '(:description "Remind of events via Minion"
    :tags ["perl"]))
(hoarder:record "kjetilk/p5-dist-inkt-role-git"
  '(:description "Git functions for Dist::Inkt"
    :tags ["perl"]))
(hoarder:record "http://git.ieval.ro/git/data-dump-sexp.git"
  '(:tags ["perl"]))
(hoarder:record "symkat/Daemon-Control"
  '(:description "Daemon::Control - Create init scripts in Perl"
    :tags ["perl"]
    :memo "[[https://metacpan.org/pod/Daemon::Control][Daemon::Control - Create init scripts in Perl - metacpan.org]]"))
(hoarder:record "ruanqd/lxr"
  '(:description "lxr with easy jump to functions"
    :tags ["perl"]))
(hoarder:record "jck000/Dancer2-Plugin-Tail"
  '(:tags ["perl"]))
(hoarder:record "DaveSailors/virtual-automations"
  '(:description "auto-provisioning in virtual environemts"
    :tags ["perl"]))
(hoarder:record "nikulabs/create-compile-commands"
  '(:description "Generates json file for use with clang tools based on GNU Make flags"
    :tags ["perl"]))
(hoarder:record "DarwinAwardWinner/List-Flatten-Recursive"
  '(:description "A perl module for flattening lists of lists of lists of lists of ..."
    :tags ["perl"]))
(hoarder:record "guillaumeaubert/Perl-Critic-Git"
  '(:description "Perl module to connect and Perl::Critic, to blame the right people for violations."
    :tags ["cpan" "maintenance-mode" "perl"]))
(hoarder:record "sch1ag/slonic"
  '(:tags ["perl" "influxdb" "monitoring" "performance-metrics" "performance-monitoring" "solaris" "vxvm"]))
(hoarder:record "smls/lowercase"
  '(:description "tool for lowercasing all files in a directory tree"
    :tags ["directory-tree" "linux" "lowercase" "perl"]))
(hoarder:record "sartak/pi-media-controller"
  '(:tags ["perl"]))
(hoarder:record "clustericious/PlugAuth-Client-Tiny"
  '(:tags ["perl"]))
(hoarder:record "clustericious/PlugAuth-Plugin-Finger"
  '(:tags ["perl"]))
(hoarder:record "briandfoy/app-rhich"
  '(:description "which(1) with a regex"
    :tags ["perl"]))
(hoarder:record "windley/blogging"
  '(:description "My perl code for generating a blog"
    :tags ["perl"]))
(hoarder:record "davorg/audiofile-info-ogg-vorbis-header-pureperl"
  '(:description "Perl library to extract date from Ogg Vorbis files using Ogg::Vorbis::Header::PurePerl"
    :tags ["audio" "cpan" "ogg-vorbis" "perl"]))
(hoarder:record "davorg/audiofile-info-ogg-vorbis-header"
  '(:description "Perl library to extract date from Ogg Vorbis files using Ogg::Vorbis::Header"
    :tags ["audiio" "cpan" "ogg-vorbis" "perl"]))
(hoarder:record "davorg/audiofile-info-mp3-tag"
  '(:description "Perl library to extract date from MP3 files using MP3::Tag"
    :tags ["audio" "cpan" "mp3" "perl"]))
(hoarder:record "davorg/audiofile-info-mp3-info"
  '(:description "Perl library to extract date from MP3 files using MP3::Info"
    :tags ["audio" "cpan" "mp3" "perl"]))
(hoarder:record "davorg/audiofile-info-mp3-id3lib"
  '(:description "Perl library to extract date from MP3 files using MP3::ID3Lib"
    :tags ["audio" "cpan" "mp3" "perl"]))
(hoarder:record "vaeth/mv_perl"
  '(:description "mv_perl - A collection of perl scripts (replacement in files, syncing dirs etc)"
    :tags ["perl"]))
(hoarder:record "houseabsolute/Pg-CLI"
  '(:description "Mirror of Pg-CLI on urth.org"
    :tags ["perl"]))
(hoarder:record "eserte/earthclock"
  '(:description "a nice clock showing the earth"
    :tags ["perl"]))
(hoarder:record "vti/acme-zerowidth"
  '(:tags ["perl"]))
(hoarder:record "zakame/Data-Cuid"
  '(:description "Collision-resistant IDs, ported for Perl"
    :tags ["encoding" "ids" "perl" "perl-module"]))
(hoarder:record "jwilk/elvoke"
  '(:description "run or postpone commands"
    :tags ["perl"]))
(hoarder:record "perl5-utils/Clone-Choose"
  '(:tags ["perl"]))
(hoarder:record "vti/text-gitignore"
  '(:description "Match .gitignore-style"
    :tags ["perl"]))
(hoarder:record "VertebrateResequencing/vr-runner"
  '(:description "Runner pipelines"
    :tags ["perl"]))
(hoarder:record "dm-kamaev/repetitors"
  '(:tags ["perl"]
    :download nil))
(hoarder:record "ori229/treasure-hunt-mobile-game"
  '(:description "Treasure hunt using responsive HTML and perl on the server side"
    :tags ["perl"]))
(hoarder:record "RRZE-HPC/hpc-bench"
  '(:description " A framework for creating automated application benchmark suites"
    :tags ["perl"]))
(hoarder:record "polettix/Ordeal-Model"
  '(:description "Manage cards and decks"
    :tags ["perl"]))
(hoarder:record "UB-Mannheim/vMaBookShelf"
  '(:description "Create a virtual Book Shelf, Proxy script for connect to other webpages (ebooks) and a Firefox Add-on vMaBookShelfHelper"
    :tags ["perl" "bookshelf" "code4lib"]))
(hoarder:record "jkeenan/file-copy-recursive-reduced"
  '(:description "Recursive copying of files and directories within Perl 5 toolchain"
    :tags ["perl"]))
(hoarder:record "ih8celery/App-Util-Conf"
  '(:description "find and open registered configuration files easily"
    :tags ["perl"]))
(hoarder:record "landrys/tag-modelid-to-item"
  '(:description "Updates item model id from the tag table"
    :tags ["perl"]))
(hoarder:record "hepcat72/filetools"
  '(:description "Generic tools for handling plain text and tab-delimited files."
    :tags ["perl"]))
(hoarder:record "glensc/comics-mailer"
  '(:description "comics-mailer"
    :tags ["perl"]))
(hoarder:record "hepcat72/featureProximity"
  '(:tags ["perl"]))
(hoarder:record "dauflood123/perli"
  '(:description "perl bot"
    :tags ["perl"]))
(hoarder:record "pjacklam/p5-Acme-Cow-Interpreter"
  '(:tags ["perl"]))
(hoarder:record "edneville/privatetube"
  '(:description "Small project to help parents control what is available for viewing"
    :tags ["perl"]))
(hoarder:record "equwal/Auto-Dev-Detect"
  '(:description "Automatically detect the /dev/sdX name of a hotpluggable device (such as USB). Linux."
    :tags ["perl"]))
(hoarder:record "bjquast/LitRefDB"
  '(:description "Old style (Web 1.0) web application for organizing literature references. Based on MySQL, Perl, CGI"
    :tags ["perl"]))
(hoarder:record "jkominek/pircd"
  '(:description "the perl irc daemon"
    :tags ["perl"]))
(hoarder:record "unqueued/rippchegg"
  '(:tags ["perl"]))
(hoarder:record "mass10/perl.note"
  '(:description "Perl のあれこれ"
    :tags ["perl"]))
(hoarder:record "thrig/Game-TextPatterns"
  '(:description "generate patterns of text"
    :tags ["perl"]))
(hoarder:record "jasampler/pending-videos"
  '(:description "Utility for tracking videos stored in a directory and classifying them as pending watch, pending deletion or already seen."
    :tags ["perl"]))
(hoarder:record "Hackathon-Hokkaido/korenani-kamuy"
  '(:description "We want to know what is this found on trails e.g. bear, ...."
    :tags ["perl"]))
(hoarder:record "nylander/ptemplate"
  '(:description "ptemplate -- A project template"
    :tags ["perl"]))
(hoarder:record "hrubi/ghut"
  '(:description "GitHub utilities"
    :tags ["perl"]))
(hoarder:record "wki/Provision-DSL"
  '(:description "a simple provisioning toolkit"
    :tags ["perl"]))
(hoarder:record "PhaniTallapureddy/get-500px-image"
  '(:description "perl script to get image from 500px website !!"
    :tags ["perl"]))
(hoarder:record "neo251214/dadang"
  '(:tags ["perl" "line"]))
(hoarder:record "harriott/jpgMagick"
  '(:description "a rough & ready Perl script for PerlMagick API"
    :tags ["perl"]))
(hoarder:record "davepagurek/Image-Resizer"
  '(:description "A Perl script for quickly making thumbnails and other sizes for blog posts"
    :tags ["perl"]))
(hoarder:record "jmacdotorg/webmention-perl"
  '(:description "Webmention libraries for Perl 5."
    :tags ["perl"]))
(hoarder:record "benkasminbullock/unicode-faster"
  '(:tags ["perl"]))
(hoarder:record "ybrliiu/p5-Smoke"
  '(:description "OreOre Web Application Framework"
    :tags ["perl"]))
(hoarder:record "jhthorsen/mojolicious-plugin-statusforserver"
  '(:description "Get status from the mojolicious server and the workers"
    :tags ["perl"]))
(hoarder:record "whosgonna/AltiLog2pcap"
  '(:tags ["perl"]))
(hoarder:record "cjac/infobot"
  '(:description "the freenode maxine infobot with mariadb knowledge base"
    :tags ["perl"]))
(hoarder:record "nlitsme/hfstools"
  '(:description "Tools for reading or recovering files from an apple HFS+ filesystem"
    :tags ["perl" "filesystem" "hfs-filesystem" "recovering-data"]))
(hoarder:record "circulosmeos/gdown.pl"
  '(:description "Google Drive direct download of big files"
    :tags ["perl"]))
(hoarder:record "Plex-VDR-HDHomerun/xmltv2vdr"
  '(:description "xmltv2vdr perl script updated for current xmltv parsing and updated genres for VDR"
    :tags ["perl"]))
(hoarder:record "okoshovetc/very_dumb_markov"
  '(:tags ["perl"]))
(hoarder:record "zhmylove/caler"
  '(:description "A cross-platform utility to perform cloud backend systems autoscale."
    :tags ["perl"]))
(hoarder:record "taustation-fan/storage-tools"
  '(:description "Small tools that help extract data from saved storage .html files (Tau Station game)"
    :tags ["perl"]))
(hoarder:record "vinsworldcom/PPC"
  '(:description "Perl Packet Crafter"
    :tags ["perl"]))
(hoarder:record "JasonLamey/Side7v5-Dancer2"
  '(:description "Dancer2/DBIx::Class version of the Side 7 v5 site."
    :tags ["perl"]))
(hoarder:record "oprietop/sempla"
  '(:description "Mojolicious::Lite app. HTML5 player with flac transcoding."
    :tags ["perl"]))
(hoarder:record "duncs/Opsview-RestAPI"
  '(:description "Interact with the Opsview Rest API interface"
    :tags ["perl"]))
(hoarder:record "nlitsme/fatutils"
  '(:description "tools for reading from FAT filesytem images"
    :tags ["perl"]))
(hoarder:record "unqueued/git-xattr"
  '(:tags ["perl"]))
(hoarder:record "abraxxa/Authen-Passphrase-Argon2"
  '(:description "Argon2 support for Authen::Passphrase"
    :tags ["perl" "hash" "password-hash"]))
(hoarder:record "tisobe/Disk_space"
  '(:description "This set of scripts monitor disk spaces and if the capacity of a disk is over a threshold, send out warning email."
    :tags ["perl"]))
(hoarder:record "MickeyLane/Views"
  '(:description "Cross-platform security camera software"
    :tags ["perl"]))
(hoarder:record "LibreCat/Plack-Auth-SSO"
  '(:description "Single Sign On Authentication for LibreCat"
    :tags ["perl"]))
(hoarder:record "simbabque/App-CGIThis"
  '(:tags ["perl"]))
(hoarder:record "pepeul1191/perl-mojo-boilerplate"
  '(:description "Perl Mojo Boilerplate"
    :tags ["perl"]))
(hoarder:record "pjuhasz/takahashi"
  '(:description "Generate Takahashi-style PDF presentations from simple text outlines"
    :tags ["perl"]))
(hoarder:record "Test-More/Test2-Plugin-SpecDeclare"
  '(:description "Syntax keywords for Test2::Tools::Spec."
    :tags ["perl"]))
(hoarder:record "Grinnz/Task-Kensho-All"
  '(:description "Task::Kensho::All - Install all of Task::Kensho"
    :tags ["perl"]))
(hoarder:record "bluefeet/MooseX-SingleArg"
  '(:description "No-fuss instantiation of Moose objects using a single argument."
    :tags ["perl"]))
(hoarder:record "Corion/Net-Google-Keep"
  '(:description "access Google Keep notes from Perl"
    :tags ["perl"]))
(hoarder:record "twitham1/wview-rrd"
  '(:description "Interactive RRDTool graphs for wview weather stations"
    :tags ["perl" "rrdtool" "wview"]))
(hoarder:record "stustanet/paste"
  '(:description "Script of paste.debian.net adapted for StuStaNet e. V."
    :tags ["perl"]))
(hoarder:record "suzutsuki0220/suitou"
  '(:description "Webブラウザで家計簿をつけるためのCGI"
    :tags ["perl"]))
(hoarder:record "stustanet/jirc-bridge"
  '(:description "jabber irc bridge"
    :tags ["perl"]))
(hoarder:record "qashqao/dnsenum"
  '(:tags ["perl"]))
(hoarder:record "skaji/plenv-download"
  '(:description "download precompiled perl binaries"
    :tags ["perl"]))
(hoarder:record "s1037989/mojo-webhosting"
  '(:tags ["perl"]))
(hoarder:record "djjudas21/md5sum-generator"
  '(:description "Proof-of-concept MD5 hash generator"
    :tags ["perl"]))
(hoarder:record "wang-q/alignDB"
  '(:description "Analyze the relationship between indels and substitutions in genomes"
    :tags ["perl"]))
(hoarder:record "HArchitect/Anagram-Finder"
  '(:description "This program can be used to solve or create anagrams. (Made with Perl Tk)"
    :tags ["perl"]))
(hoarder:record "fy2/ridefisher"
  '(:tags ["perl"]))
(hoarder:record "korero/korero-spell"
  '(:description "A simple web interface to Hunspell"
    :tags ["perl"]))
(hoarder:record "HankB/ZFSsupport"
  '(:description "Scripts to support my usage of ZFS (on Linux)"
    :tags ["perl"]))
(hoarder:record "pjfl/p5-class-usul"
  '(:description "A base class providing config, locking, logging, and l10n"
    :tags ["perl"]))
(hoarder:record "sugitach/movie-exif"
  '(:description "Quicktime movie's ''create date'' in exif data sets from filename."
    :tags ["perl"]))
(hoarder:record "rurban/Crypt-OpenSSL-Random"
  '(:description "perl binding to libssl random functions"
    :tags ["perl"]))
(hoarder:record "stephenhoward/model-envoy"
  '(:description "Perl Model layer to sit atop various storage layers"
    :tags ["perl"]))
(hoarder:record "dr-iman/Demon-Proxy"
  '(:description "DeMoN Proxy is a Tool For Getting Free and Update proxy Lists"
    :tags ["perl"]))
(hoarder:record "crazy-camel/caravan"
  '(:description "A perl centric - SGML based dynamic language"
    :tags ["perl"]))
(hoarder:record "LorenzoTa/Tartaglia-s-triangle"
  '(:description "Tartaglia's or Pascal's triangle - 18 fun experiments with the Tartaglia's triangle a perl Tk program"
    :tags ["perl"]))
(hoarder:record "nmarley/Parse-SSH2-PublicKey"
  '(:description "Parse SSH2 public keys in either SECSH or OpenSSH format."
    :tags ["perl"]))
(hoarder:record "eyals24/linux-monitor"
  '(:description "Write linux metrics in mongodb"
    :tags ["perl"]))
(hoarder:record "Keffisor/ddos.pl"
  '(:tags ["perl"]))
(hoarder:record "zostay/Yukki"
  '(:description "Yet Uhnother Wiki - git-based wiki with workgroups"
    :tags ["javascript"]))
(hoarder:record "skaji/Command-Runner"
  '(:tags ["perl"]))
(hoarder:record "briandfoy/HTTP-Cookies-Mozilla"
  '(:tags ["cookies" "http" "mozilla" "perl"]))
(hoarder:record "Ovid/keyword-development"
  '(:description "Use DEVELOPMENT blocks which literally don't exist at compile-time in production code"
    :tags ["perl"]
    :memo "[[https://opensource.com/article/18/4/perl-module-debugging-code][A Perl module for better debugging | Opensource.com]]"))
(hoarder:record "vti/tu"
  '(:tags ["perl"]))
(hoarder:record "Derbeth/perlwiki"
  '(:description "Perl scripts for editing MediaWiki wikis"
    :tags ["perl"]))
(hoarder:record "pink-mist/qdb"
  '(:description "Quote Database with Mojolicious as the backend"
    :tags ["perl"]))
(hoarder:record "doriantaylor/p5-app-oauth-authenticator"
  '(:description "Stand-alone PSGI/FastCGI authenticator against multiple OAuth(2) providers"
    :tags ["perl"]))
(hoarder:record "miyagawa/CPAN-Test-Dummy-Perl5-UseUnsafeINC-Fail"
  '(:tags ["perl"]))
(hoarder:record "briandfoy/app-rhich"
  '(:description "which(1) with a regex"
    :tags ["perl"]))
(hoarder:record "1nn3/feedmailer"
  '(:description "A Feed-Aggregator (RSS/Atom to email gateway)"
    :tags ["perl"]))
(hoarder:record "perkins1724/shepherd.tv"
  '(:description "shepherd.tv"
    :tags ["perl"]))
(hoarder:record "CaddyDz/Rimi"
  '(:tags ["perl"]))
(hoarder:record "vague666/pcal"
  '(:description "Perl version of bsd cal"
    :tags ["perl"]))
(hoarder:record "spencertipping/lazytest"
  '(:description "Tests for lazy developers (not that I know of any)"
    :tags ["perl"]))
(hoarder:record "plembo/onemoretech"
  '(:description "Public code and wiki"
    :tags ["perl"]))
(hoarder:record "Spoiledbroth/ob-chromium"
  '(:description "Small Perl script for displaying chromium/google-chrome bookmarks as an Openbox pipe menu"
    :tags ["bookmarks" "bookmarks-menu" "chrome" "google-chrome" "openbox" "openbox-desktop-environment" "openbox-pipemenu" "perl"]))
(hoarder:record "qashqao/hurl"
  '(:tags ["perl"]))
(hoarder:record "tetemes/m3u8"
  '(:description "Download HLS video (m3u8)"
    :tags ["perl"]))
(hoarder:record "DavidJayne/Menunator"
  '(:description "Perl Graphical Menu System"
    :tags ["perl"]))
(hoarder:record "rehsack/MooX-ConfigFromFile"
  '(:description "Moo eXtension for load initializing class settings from config file"
    :tags ["perl"]))
(hoarder:record "p9s/p2p-crawl"
  '(:tags ["perl"]))
(hoarder:record "ology/Mock-Populate"
  '(:description "Handy Perl functions to populate random and quasi-random data-points"
    :tags ["perl"]))
(hoarder:record "finley/SSM"
  '(:description "Simple State Manager"
    :tags ["perl"]))
(hoarder:record "wakaba/wanage"
  '(:description "Wanage and Warabe - Perl modules for server-side Web applications"
    :tags ["cgi" "http" "perl" "promise" "psgi" "server" "waf" "wanage" "warabe"]))
(hoarder:record "leejo/html-packer-perl"
  '(:description "CPAN Module HTML::Packer"
    :tags ["perl"]))
(hoarder:record "polettix/ordeal-webapp"
  '(:description "A web app for drawing cards"
    :tags ["perl" "cards" "deck" "dokku" "imagination" "story-telling"]))
(hoarder:record "branchhub/branchhub"
  '(:tags ["perl"]))
(hoarder:record "rjbs/Config-MVP"
  '(:description "multivalue property config section state machine"
    :tags ["perl"]))
(hoarder:record "mhasch/perl-Task-Devel-Essentials"
  '(:description "Task to install a bundle of Perl modules useful for developers"
    :tags ["perl"]))
(hoarder:record "anonymous0078/inspector"
  '(:tags ["perl"]))
(hoarder:record "Bean6754/Perl"
  '(:description "My collection of Perl files."
    :tags ["perl" "perl6" "perl6-scripts"]))
(hoarder:record "lhui2010/bundle"
  '(:tags ["perl"]))
(hoarder:record "turnkeylinux/buildtasks"
  '(:description "TurnKey buildtasks"
    :tags ["perl"]))
(hoarder:record "HArchitect/Text-File-Generator"
  '(:description "A simple Perl program to make a lot of text files."
    :tags ["perl"]))
(hoarder:record "crazy-camel/barbershop"
  '(:description "A Mustache and Razor style of CMS for the homegrown Web developer"
    :tags ["perl"]))
(hoarder:record "sanjayankur31/fedora-live-respins-autotorrent"
  '(:description "A script to check for new Fedora Live repsin images and automatically download the associated torrent files to help seed them"
    :tags ["perl"]))
(hoarder:record "YordanGeorgiev/issue-tracker"
  '(:description "multi-project shell, txt, xls , postgre based issue management ..."
    :tags ["perl"]))
(hoarder:record "bkuhn/small-hacks"
  '(:description "Tiny scripts and hacks that I have collected or written.  This is purely a backup: this is not developed here."
    :tags ["perl"]))
(hoarder:record "pjfl/p5-class-usul"
  '(:description "A base class providing config, locking, logging, and l10n"
    :tags ["perl"]))
(hoarder:record "benizi/verman"
  '(:description "VerMan is a version manager"
    :tags ["perl"]))
(hoarder:record "haarg/Test-Needs"
  '(:tags ["perl"]))
(hoarder:record "chrekh/signzone"
  '(:description "A dnssec key management tool"
    :tags ["perl"]))
(hoarder:record "AditiGulati/icr-gft-drugdb"
  '(:description "Database of drug screen data with web interface for screen analysis"
    :tags ["perl"]))
(hoarder:record "sujilnt/directoryReportgenerator"
  '(:description "Genarating a Report of overview of the files under a given directory. It prints filename , user and the size ."
    :tags ["perl"]))
(hoarder:record "mmcclimon/Template-EmbeddedPerl"
  '(:description "Mojo::Template, minus the Mojo"
    :tags ["perl"]))
(hoarder:record "perl-catalyst/catalyst-runtime"
  '(:description "The Elegant MVC Web Application Framework"
    :tags ["perl"]))
(hoarder:record "jmodjeska/fanyi"
  '(:description "Simple asset translation script"
    :tags ["perl"]))
(hoarder:record "peterkappelt/CloudflareUpdate"
  '(:description "Perl-Script to Update specific Cloudflare DNS-Records to the current public IP of the system"
    :tags ["perl"]))
(hoarder:record "ThaneAcheron/Perl-Classes"
  '(:description "An assortment of useful perl classes"
    :tags ["perl"]))
(hoarder:record "gflohr/Locale-Recode"
  '(:description "Pure Perl Charset Conversion Routines"
    :tags ["perl"]))
(hoarder:record "rapilodev/racalmas"
  '(:description "radio calendar management system"
    :tags ["perl"]))
(hoarder:record "matzke1/tup-scripts"
  '(:description "Tup rule-generating scripts, test harness, etc"
    :tags ["perl"]))
(hoarder:record "z448/trrr"
  '(:description "CLI tool to search torrents"
    :tags ["perl"]))
(hoarder:record "jhunt/verse"
  '(:description "Website Poetry"
    :tags ["perl"]))
(hoarder:record "waaeer/perl-www-easy"
  '(:description "Extra minimalistic mod_perl based web framework"
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-rank"
  '(:tags ["perl"]))
(hoarder:record "kawanet/XML-FeedPP"
  '(:description "Parse/write/merge/edit RSS/RDF/Atom syndication feeds"
    :tags ["perl"]))
(hoarder:record "HArchitect/ASCII-CoordinatePlane"
  '(:description "A perl module for making ASCII coordinate planes."
    :tags ["perl" "coordinates" "perl-module"]))
(hoarder:record "simonelbaz/lemonldap-ng-bandeau"
  '(:tags ["perl"]))
(hoarder:record "troxel/macs"
  '(:description "Monitor, Acquire and Control System"
    :tags ["perl"]))
(hoarder:record "fstltna/CoffeeManagementConsole"
  '(:description "Manage your CoffeeMUD installation (0.5.0)"
    :tags ["perl"]))
(hoarder:record "fstltna/CoffeeStartup"
  '(:description "Startup scripts for CoffeeMUD (2.0.0)"
    :tags ["perl"]))
(hoarder:record "0e4ef622/anbot"
  '(:description "an telegram bot written in perl"
    :tags ["perl"]))
(hoarder:record "mche/DBIx-Mojo-Template"
  '(:description "Render SQL statements templates by Mojo::Template"
    :tags ["perl" "mojo" "template"]))
(hoarder:record "mig0/Games-Checkers"
  '(:description "Complete implementation of Checkers (multiple variants) with SDL support"
    :tags ["perl"]))
(hoarder:record "kuerbis/Term-Choose_HAE"
  '(:tags ["perl"]))
(hoarder:record "giftnuss/p5-ho-tmpl-markup-cdml"
  '(:description "CDML Markup Generation"
    :tags ["perl"]))
(hoarder:record "oalders/html-restrict"
  '(:description "HTML::Restrict - Strip away unwanted HTML tags"
    :tags ["parse" "perl" "strip-html" "unwanted-html-tags"]))
(hoarder:record "gsliepen/ikistrap"
  '(:description "Bootstrap 4 theme for ikiwiki."
    :tags ["perl"]))
(hoarder:record "zoocide/pts"
  '(:description "task processing system"
    :tags ["perl"]))
(hoarder:record "briandfoy/Set-CrossProduct"
  '(:description "(Perl) The Set::CrossProduct module"
    :tags ["combinatorics" "perl" "sets"]))
(hoarder:record "bas-jpro/apache-controller"
  '(:description "Apache::Controller is a mod_perl based web application template system"
    :tags ["perl"]))
(hoarder:record "dagolden/Data-GUID-Any"
  '(:description "Generic interface for GUID creation"
    :tags ["perl"]))
(hoarder:record "powerman/perl-FCGI-EV"
  '(:description "Perl module: FCGI::EV - Implement FastCGI protocol for use in EV-based applications"
    :tags ["perl"]))
(hoarder:record "powerman/perl-IO-Stream-Proxy-HTTPS"
  '(:description "Perl module: IO::Stream::Proxy::HTTPS - HTTPS proxy plugin for IO::Stream"
    :tags ["perl"]))
(hoarder:record "ambs/Config-AutoConf"
  '(:description "Config::AutoConf Perl Module"
    :tags ["perl"]))
(hoarder:record "zhmylove/jplbot"
  '(:description "Simple jabber and telegram bot written in perl"
    :tags ["perl"]))
(hoarder:record "karpet/search-tools-perl"
  '(:description "Search::Tools - high performance toolkit for building search applications in Perl"
    :tags ["perl"]))
(hoarder:record "nigelhorne/cflags"
  '(:description "Generate the optimum cflags for your system"
    :tags ["perl"]))
(hoarder:record "csrss/PerlChat"
  '(:tags ["perl"]))
(hoarder:record "yunaranyancat/Mojolicious_tuto"
  '(:description "This repo is related with my progress on learning Mojolicious. More info at README"
    :tags ["perl"]))
(hoarder:record "ology/App-Provision-Tiny"
  '(:description "A lightweight but powerful application provisioning tool"
    :tags ["perl"]))
(hoarder:record "rurban/Crypt-OpenSSL-Random"
  '(:description "perl binding to libssl random functions"
    :tags ["perl"]))
(hoarder:record "do-know/Crypt-LE"
  '(:description "Crypt::LE (ZeroSSL project) - Let's Encrypt client and library in Perl for getting free SSL certificates (inc. generating RSA/ECC keys and CSRs). HTTP/DNS verification is supported out of the box, easily extended with plugins."
    :tags ["acme" "acme-client" "acme-v2" "certificate" "crypt" "crypt-le" "dns" "docker" "docker-ssl" "ecc" "ecdsa" "free-ssl-certificates" "pem" "perl" "pfx" "rsa" "security" "ssl" "windows-ssl" "zerossl"]))
(hoarder:record "unqueued/metastore"
  '(:tags ["perl"]))
(hoarder:record "ilmari/Acme-Holy-Shit-Here-Come-s-An-S"
  '(:tags ["perl"]))
(hoarder:record "Perl-Toolchain-Gang/File-Temp"
  '(:description "Temporary file handling in Perl"
    :tags ["perl"]))
(hoarder:record "PrincessRTFM/Filepp-Modules"
  '(:description "Custom modules I've written for filepp ( http://www-users.york.ac.uk/~dm26/filepp/ )"
    :tags ["perl"]))
(hoarder:record "Corion/Net-Google-Keep"
  '(:description "access Google Keep notes from Perl"
    :tags ["perl"]))
(hoarder:record "stustanet/paste"
  '(:description "Script of paste.debian.net adapted for StuStaNet e. V."
    :tags ["perl"]))
(hoarder:record "barzan/dbseer"
  '(:description "DBSeer"
    :tags ["perl"]))
(hoarder:record "ashaferian/freebsd-tools"
  '(:tags ["perl"]))
(hoarder:record "s1037989/adamsstore"
  '(:tags ["perl"]))
(hoarder:record "rmkml/etplc"
  '(:tags ["perl"]))
(hoarder:record "team-at-cpan/Net-Async-Trello"
  '(:description "Trello integration with the IO::Async Perl module"
    :tags ["perl"]))
(hoarder:record "fredericd/marc-moose"
  '(:tags ["perl"]))
(hoarder:record "pasichnykvasyl/Duties"
  '(:tags ["perl"]))
(hoarder:record "globau/logbot"
  '(:description "IRC logging bot"
    :tags ["perl"]))
(hoarder:record "vrag86/perl-yandex-disk-api"
  '(:tags ["perl"]))
(hoarder:record "Ocraz/DoNutS"
  '(:description "DNS hybrid bruteforcer with ability to enumerate SRV records"
    :tags ["perl"]))
(hoarder:record "racke/Template-Flute-Style-CSS"
  '(:description "CSS parser class for Template::Flute"
    :tags ["perl"]))
(hoarder:record "coljiang/Bbs-Advertising"
  '(:description "Not Complete.Developing AND Testing!"
    :tags ["perl"]))
(hoarder:record "burak/CPAN-Sys-Info"
  '(:tags ["perl"]))
(hoarder:record "r6eve/tweemo"
  '(:description "CLI-based twitter client calculating emotional value of tweet."
    :tags ["perl"]))
(hoarder:record "TheWatcher/Yog-Sothoth"
  '(:description "Yog-Sothoth knows the gate. Yog-Sothoth is the gate. Yog-Sothoth is the key and guardian of the gate... He also kills misbehaving IRC users"
    :tags ["perl"]))
(hoarder:record "jmacdotorg/microformats2-perl"
  '(:description "A Microformats2 parser library for Perl 5."
    :tags ["perl"]))
(hoarder:record "cschneemann/agordamon"
  '(:tags ["perl"]))
(hoarder:record "markcs/PlexGet"
  '(:tags ["perl"]))
(hoarder:record "akiym/Crypt-OpenSSL-Guess"
  '(:description "Guess OpenSSL include path"
    :tags ["perl"]))
(hoarder:record "rickumali/RickUmaliVanityWebsite"
  '(:description "This is the Perl source code that generates my vanity webpage (hosted at rickumali.com)."
    :tags ["perl" "personal-site" "tabs"]))
(hoarder:record "seppovic/FurnishRSS"
  '(:description "Quick solution to gather all the relevant updates from websites and maybe other sources that don't provide rss feeds. Based on Mojolicious"
    :tags ["perl"]))
(hoarder:record "watson-sm/cmdline_perl_googlesearch"
  '(:description "Perl commandline utility for simple google search"
    :tags ["perl"]))
(hoarder:record "rpodeschi/ping.pl"
  '(:description "Perl program to loop through IP addresses and ping to see if the host is alive."
    :tags ["perl"]))
(hoarder:record "Kuroneer/urxvt-buffer2vim"
  '(:description "urxvt extension to open the current buffer in vim"
    :tags ["perl" "urxvt" "vim"]))
(hoarder:record "dcx86r/kakaro"
  '(:description "A Kana/Kanji To Romaji Converter"
    :tags ["perl"]))
(hoarder:record "jfrotz/homebrew-scratchperl5modules"
  '(:description "Experiments creating Raspberry Pi based LinuxBrew tap for Perl modules."
    :tags ["perl"]))
(hoarder:record "carlhals/urxvtpass"
  '(:tags ["perl"]))
(hoarder:record "ruanqd/lxr"
  '(:description "lxr with easy jump to functions"
    :tags ["perl"]))
(hoarder:record "greg-kennedy/jpeg_dupe_test"
  '(:description "A simple tool to find duplicate JPEG files."
    :tags ["perl" "duplicate-files" "jpeg"]))
(hoarder:record "ewolf/StellarExpanse"
  '(:description "The space game"
    :tags ["perl"]))
(hoarder:record "joeldentici/praiser"
  '(:description "Perl template engine inspired by .NET Razor"
    :tags ["perl"]))
(hoarder:record "majensen/rest-neo4p"
  '(:description "REST::Neo4p - Perl 5 Objects and Bindings for Neo4j"
    :tags ["perl"]))
(hoarder:record "drumsoft/mangaz_dl"
  '(:description "マンガ図書館Z mangaz.com プレミアム会員向けのスクリプト: 毎月の無料枠でのPDFダウンロードを自動化."
    :tags ["perl"]))
(hoarder:record "perlancar/perl-App-ListNewCPANDists"
  '(:tags ["perl"]))
(hoarder:record "smls/gzip_static_generate"
  '(:description "Pre-compresses files for the nginx webserver"
    :tags ["compressed-files" "gzipped-files" "nginx" "perl"]))
(hoarder:record "karenetheridge/Acme-LookOfDisapproval"
  '(:description "send warnings with ಠ_ಠ"
    :tags ["perl"]))
(hoarder:record "FoxxyOS/tasksel"
  '(:tags ["perl"]))
(hoarder:record "endosynth/zip-subdirs"
  '(:description "Zip subdirectories to timstamped zip files, for backup or archiving."
    :tags ["perl"]))
(hoarder:record "dylanwh/Text-Markdown-GFM"
  '(:tags ["perl"]))
(hoarder:record "GeorgeBouras/ShellDB"
  '(:description "ShellDB is a fast and minimal document database"
    :tags ["perl"]))
(hoarder:record "mikegrb/solar_ng"
  '(:description "A Mojolicious webapp for visualizing home solar production and energy consumption"
    :tags ["perl" "energy-data" "energy-monitor" "mojolicious" "solar" "solar-energy"]))
(hoarder:record "borisdaeppen/App-Unding"
  '(:description "https://stackoverflow.com/questions/41061214/write-to-the-data-section-in-perl"
    :tags ["perl"]))
(hoarder:record "spajai/Yahoo-Weather-Api"
  '(:description "cpan module to interact with yahoo's weather api using YQL"
    :tags ["perl"]))
(hoarder:record "thruston/perl-vim-table"
  '(:tags ["perl"]))
(hoarder:record "reneeb/HTTP-Tiny-Multipart"
  '(:description "Support multipart post requests for HTTP::Tiny"
    :tags ["perl"]))
(hoarder:record "trizen/alsi"
  '(:description "A command-line system information tool for Arch Linux."
    :tags ["perl"]))
(hoarder:record "mche/Mojo-Log-Che"
  '(:description "Little child of big parent Mojo::Log"
    :tags ["log" "logging" "mojolicious" "perl"]))
(hoarder:record "mikegrb/energy-logging"
  '(:description "Log, Graph, & Tweet Electricity Generation/Consumption"
    :tags ["perl"]))
(hoarder:record "thrig/Unix-OpenBSD-Random"
  '(:description "interface to arc4random(3) on OpenBSD"
    :tags ["perl"]))
(hoarder:record "choroba/pm-cb"
  '(:description "PerlMonks ChatterBox"
    :tags ["perl"]))
(hoarder:record "jeremiah/spdxl"
  '(:description "spdxl (pronounced spud-exel) is a tool that attempts to identify FOSS licenses and corresponding files associated with them based on SPDX tags."
    :tags ["perl"]))
(hoarder:record "perl5-utils/MooX-File-ConfigDir"
  '(:description "Moose eXtension for File::ConfigDir"
    :tags ["perl"]))
(hoarder:record "Corion/App-Mojo-AssetReloader"
  '(:description "Webserver with live asset reloading"
    :tags ["perl"]))
(hoarder:record "bluefeet/GitLab-API-v4"
  '(:description "A complete GitLab API v4 client."
    :tags ["perl"]))
(hoarder:record "pjlsergeant/p5-data-jsonschema-ajv"
  '(:description "Data::JSONSchema::Ajv - JSON Schema Validator wrapping Ajv"
    :tags ["perl"]))
(hoarder:record "netcrave/oh-my-znc"
  '(:tags ["perl"]))
(hoarder:record "rsrchboy/moosex-relatedclasses"
  '(:description "Parameterized role for related class attributes"
    :tags ["perl"]))
(hoarder:record "rsrchboy/tap-simpleoutput"
  '(:description "Simple closure-driven TAP generator"
    :tags ["perl"]))
(hoarder:record "rsrchboy/moosex-traitfor-meta-class-betteranonclassnames"
  '(:description "Metaclass trait to *attempt* to demystify generated anonymous class names"
    :tags ["perl"]))
(hoarder:record "chocolateboy/wax"
  '(:description "A CLI tool which adds and enhances HTTP support in other CLI tools"
    :tags ["perl" "cache" "cli" "cli-flare" "cliflare" "command" "command-combinator" "command-line" "console" "http" "httpify" "https" "mirror" "uri" "url" "web" "webify"]))
(hoarder:record "miyagawa/cpanfile"
  '(:description "Yet another way to declare CPAN dependencies "
    :tags ["perl"]))
(hoarder:record "propertone/craigslist-renew"
  '(:description "A tool to auto-renew all inactive craigslist posts and notify of expired posts"
    :tags ["perl"]))
(hoarder:record "skirmess/Test-Pod-Links"
  '(:description "Test Pod for invalid HTTP(S) links"
    :tags ["perl"]))
(hoarder:record "gilmagno/marcelo"
  '(:tags ["perl"]))
(hoarder:record "smith153/Dancer2-Plugin-DomainModel"
  '(:description "Combat The Anemic Domain Model"
    :tags ["perl"]))
(hoarder:record "BigRedS/httptraceroute"
  '(:description "Follows HTTP redirects"
    :tags ["perl" "http" "trace" "traceroute"]))
(hoarder:record "genio/IO-Stringy"
  '(:description "I/O on in-core objects like strings and arrays"
    :tags ["perl"]))
(hoarder:record "xkdcc/Handy_Perl_Scripts"
  '(:description "This is a repository for accomodating Perl smart/quick/useful scripts written by me."
    :tags ["perl"]))
(hoarder:record "Zilainfo/YouTube-script"
  '(:tags ["perl"]))
(hoarder:record "leticiayepez/ejercicios"
  '(:description "Ejercicios"
    :tags ["perl"]))
(hoarder:record "kuerbis/Term-Form"
  '(:tags ["perl"]))
(hoarder:record "LeeThompson/personalreplayguide"
  '(:description "Provides web-based TV listings with optional ReplayTV integration for both scheduling and seeing what shows are scheduled."
    :tags ["perl"]))
(hoarder:record "rocky/p5-Term-ReadLine-Perl5"
  '(:description "A Perl5 implementation GNU Readline"
    :tags ["perl"]))
(hoarder:record "rikee/elsfeedfix"
  '(:description "Download images and generate sql to fix image feed errors"
    :tags ["perl"]))
(hoarder:record "paleobiodb/classic"
  '(:description "Comprehensive Web application (front and backend) for searching, editing and entering PBDB data."
    :tags ["perl"]))
(hoarder:record "perl5-utils/File-ConfigDir"
  '(:description "Get directories of configuration files"
    :tags ["perl"]))
(hoarder:record "rapilodev/stream-schedule-webapp"
  '(:description "web interface for stream-schedule"
    :tags ["perl"]))
(hoarder:record "colinnewell/TT2-Play-Area"
  '(:description "Template::Toolkit play area"
    :tags ["perl"]))
(hoarder:record "jef-sure/dbix-struct-github"
  '(:description "DBIx::Struct"
    :tags ["perl"]))
(hoarder:record "dagolden/DateTime-Tiny"
  '(:description "A date object with as little code as possible"
    :tags ["perl"]))
(hoarder:record "fayland/perl-javascript-beautifier"
  '(:description "Perl: Beautify Javascript (beautifier for javascript) "
    :tags ["perl"]))
(hoarder:record "robrwo/Template-Plugin-Path-Tiny"
  '(:tags ["perl"]))
(hoarder:record "ryangies/lsn-www-hub"
  '(:description "Web application server which harnesses the data-hub paradigm and runs on Apache mod_perl2"
    :tags ["perl"]))
(hoarder:record "c-hudson/muddler"
  '(:description "Perl based mud client reminiscent of TinyFugue"
    :tags ["perl"]))
(hoarder:record "avar/dist-zilla-plugin-makemaker-awesome"
  '(:description "Like Dist::Zilla::Plugin::MakeMaker but can be subclassed"
    :tags ["perl"]))
(hoarder:record "PBrady43/Channel-Editor"
  '(:description "Screen based channel editor for MythTV.  Uses API interface."
    :tags ["perl"]))
(hoarder:record "linuxfreeordie/captainAscii"
  '(:tags ["perl"]))
(hoarder:record "jberger/Mojo-JWT"
  '(:description "JSON Web Token in the Mojolicious style"
    :tags ["perl"]))
(hoarder:record "dmanto/Mojolicious-Plugin-Cron"
  '(:description "a Cron-like helper for Mojolicious full and lite apps"
    :tags ["perl"]))
(hoarder:record "matwei/perl-File-PCAP"
  '(:description "File::PCAP - a pure Perl library to handle libpcap based files."
    :tags ["perl"]))
(hoarder:record "geofabrik/Tirex"
  '(:description "Tirex tile queue manager. A drop-in replacement for renderd. Moved here from OSM SVN."
    :tags ["perl"]))
(hoarder:record "shlomif/perl-XML-GrammarBase"
  '(:tags ["perl"]))
(hoarder:record "dagolden/Test-TempDir-Tiny"
  '(:description "tempdirs that stick around when tests fail"
    :tags ["perl"]))
(hoarder:record "LorenzoTa/Stone-Jam"
  '(:description "Tk puzzle game with 21 difficulty levels"
    :tags ["perl"]))
(hoarder:record "medrbx/kibini"
  '(:description "Kibini - collecter, visualiser et diffuser les données d'usages de la Médiathèque"
    :tags ["perl"]))
(hoarder:record "miroR/stream-cont"
  '(:tags ["perl"]))
(hoarder:record "anisbet/pipe"
  '(:description "A Perl script that simplifies common flat text file queries and formatting."
    :tags ["perl"]))
(hoarder:record "sina2/moesec"
  '(:tags ["perl"]))
(hoarder:record "sina2/moemoe"
  '(:tags ["perl"]))
(hoarder:record "perlpunk/App-Spec-p5"
  '(:description "Writing command line apps made easy"
    :tags ["perl" "bash" "cli-framework" "command-line" "completion" "getopt" "perl5" "pod" "specification" "subcommands" "zsh"]))
(hoarder:record "stsc/BSD-Getfsent"
  '(:description "Get file system descriptor file entry"
    :tags ["perl"]))
(hoarder:record "EmbedJournal/web-content"
  '(:description "EmebdJournal.com's public web content. Arranged/split so authors can work on content creation without distraction"
    :tags ["perl" "blog" "blogging" "diy" "embedded-systems" "markdown-blog" "programming" "robotics"]))
(hoarder:record "kianmeng/webservice-swapi"
  '(:description "The Perl helper library for Star War API, http://swapi.co"
    :tags ["perl"]))
(hoarder:record "justjohn2001/Fn-Transduce"
  '(:tags ["perl"]))
(hoarder:record "jhthorsen/mojolicious-plugin-cgi"
  '(:description "Run CGI script from Mojolicious"
    :tags ["perl"]))
(hoarder:record "bpa/cyborg-rally"
  '(:description "Facilitate life sized RoboRally"
    :tags ["perl" "game-server" "human-actions" "mobile-first"]))
(hoarder:record "marghidanu/bones"
  '(:description "Project scaffolding"
    :tags ["perl"]))
(hoarder:record "PhaniTallapureddy/get-500px-image"
  '(:description "perl script to get image from 500px website !!"
    :tags ["perl"]))
(hoarder:record "ih8celery/App-Util-Bak"
  '(:description "command-line app to abstract away parts of archiving and compression"
    :tags ["perl"]))
(hoarder:record "SoylentNews/rehash"
  '(:description "Forked from Slashcode, rehash is the codebase that powers SoylentNews.org, powered by mod_perl 2"
    :tags ["perl"]))
(hoarder:record "floss1138/Minerva"
  '(:description "POC file parser for problem XML and tabbed lists"
    :tags ["perl"]))
(hoarder:record "vverdot/colslaw"
  '(:description "WIP"
    :tags ["perl"]))
(hoarder:record "krismatthews/homework-mojo-orders"
  '(:tags ["perl"]))
(hoarder:record "andre-st/goodreads"
  '(:description "Tools for Goodreads.com, such as an Amazon buyback price monitor to discover sales opportunities, or a \"follow book\" implementation to discover quality users and libraries"
    :tags ["perl" "amazon" "goodreads" "monitor" "price-tracker" "ratings" "tracker"]))
(hoarder:record "p5sagit/Package-Variant"
  '(:tags ["perl"]))
(hoarder:record "ddclient/ddclient"
  '(:description "Fork of the original ddclient code"
    :tags ["perl" "ddclient" "dynamic-dns-services"]))
(hoarder:record "caritofilaxy/prj"
  '(:tags ["perl"]))
(hoarder:record "krnowak/patch-splitter"
  '(:description "Splitter for git patches"
    :tags ["perl"]))
(hoarder:record "f0x52/terminal_art"
  '(:description "ugly perl script that does something cool :P"
    :tags ["perl"]))
(hoarder:record "shlomif/perl-Statistics-Descriptive"
  '(:description "The Statistics::Descriptive Perl 5/CPAN distribution"
    :tags ["perl"]))
(hoarder:record "Arxhtects/Perl-256Color-remind-script"
  '(:description "For personal use to remind me of the color numbers in 256 for use with Linux vte terminals. Free for anyone to use"
    :tags ["perl"]))
(hoarder:record "benjackson391/randomizer"
  '(:description "This is microapplication to automate creation of game's tickets"
    :tags ["perl"]))
(hoarder:record "perl5-utils/MooX-ConfigFromFile"
  '(:description "Moo eXtension for load initializing class settings from config file"
    :tags ["perl"]))
(hoarder:record "troxel/Data-LoggerSQL"
  '(:description "Perl module for logging time series data like weather data"
    :tags ["perl"]))
(hoarder:record "pablrod/p5-Chart-Plotly"
  '(:description "Generate html/javascript charts with perl data using javascript library Plotly.js"
    :tags ["chart" "javascript-library-plotly" "perl" "perl-data" "plot"]))
(hoarder:record "pjf/WebService-HabitRPG"
  '(:description "Access the HabitRPG API from Perl"
    :tags ["perl"]))
(hoarder:record "modell-aachen/UnifiedAuthContrib"
  '(:tags ["perl"]))
(hoarder:record "skyter10086/oo_module"
  '(:tags ["perl"]))
(hoarder:record "dod38fr/config-model-curses-ui"
  '(:description "User interfaces bases on Curses for Config::Model"
    :tags ["perl"]))
(hoarder:record "briandfoy/test-httpstatus"
  '(:tags ["http" "perl" "testing"]))
(hoarder:record "nixn/git-diffw"
  '(:description "A post-processor for git diff to combine the best of 'git diff' and 'git diff --color-words'"
    :tags ["perl" "diff" "diff-highlight" "git" "levenshtein-distance"]))
(hoarder:record "christophered/adblock2host"
  '(:description "Convert adblock lists (ublock, easylist, etc..) to a Host file"
    :tags ["perl"]))
(hoarder:record "AnotherFoxGuy/asciiquarium"
  '(:description "Asciiquarium - An aquarium animation in ASCII art"
    :tags ["perl"]))
(hoarder:record "chansen/p5-net-fastcgi"
  '(:description "Perl 5 FastCGI Toolkit"
    :tags ["perl"]))
(hoarder:record "aferreira/cpan-Role-NotSoTiny"
  '(:description "Role::NotSoTiny - Experiment with Role::Tiny / Role::NotSoTiny->make_role()"
    :tags ["perl"]))
(hoarder:record "qashqao/linux-xsuggest"
  '(:tags ["perl"]))
(hoarder:record "Grinnz/Unix-Groups-FFI"
  '(:description "Unix::Groups::FFI - Interface to Unix group syscalls"
    :tags ["perl"]))
(hoarder:record "shlomif/perl-Class-Generate"
  '(:description "The CPAN Class-Generate distribution for the Class::Generate family of modules (originally by Steve Wartik)"
    :tags ["perl"]))
(hoarder:record "vrurg/MooX-AttributeFilter"
  '(:description "Filtering functionality for Moo-class attributes"
    :tags ["perl"]))
(hoarder:record "icklekitten/MooseX-AttributeFilter"
  '(:description "MooX::AttributeFilter with cute antlers OwO"
    :tags ["perl" "moose-framework" "object-oriented-programming" "perl5"]))
(hoarder:record "jef-sure/d2-oar"
  '(:tags ["perl"]))
(hoarder:record "hlc926/gto"
  '(:description "Configurable remote host login script (with scp function)"
    :tags ["perl"]))
(hoarder:record "Ar-Men/armen.gui"
  '(:description "L'interface graphique de type web"
    :tags ["perl"]))
(hoarder:record "kianmeng/webservice-pokemon"
  '(:description "The Perl helper library for Pokémon API, https://pokeapi.co/"
    :tags ["perl"]))
(hoarder:record "0xw4r/Botnet-Perl"
  '(:description "Crie uma botnet, com esse script upe ele em uma web shell ou em uma vps e execute ele, assim ira subir o bot (webshell, ou a vps) no servidor irc que você configurar."
    :tags ["perl"]))
(hoarder:record "louarnos/googleScraper"
  '(:tags ["perl"]))
(hoarder:record "marlencrabapple/Frame"
  '(:description "An opinionated take on a barebones, \"best practices\" web framework for the Perl programming language"
    :tags ["perl" "perl5" "web-development" "web-framework"]))
(hoarder:record "gitpan/Gungho"
  '(:description "Read-only release history for Gungho"
    :tags ["perl"]))
(hoarder:record "gitpan/GunghoX-DeepCrawler"
  '(:description "Read-only release history for GunghoX-DeepCrawler"
    :tags ["perl"]))
(hoarder:record "gitpan/GunghoX-FollowLinks"
  '(:description "Read-only release history for GunghoX-FollowLinks"
    :tags ["perl"]))
(hoarder:fetch "kraih/mojo"
  '(:description ":sparkles: Mojolicious - Perl real-time web framework"
    :tags ["event-loop" "html" "http" "json" "mojolicious" "mvc" "perl" "user-agent" "web-framework" "web-server" "websocket"]))
(hoarder:record "robkinyon/dbm-deep"
  '(:description "DBM::Deep Perl module"
    :tags ["perl"]))
(hoarder:record "dsmi/mkmovie"
  '(:tags ["perl"]))
(hoarder:record "zarethustra/DIYmedia"
  '(:description "Home media server"
    :tags ["perl"]))
(hoarder:record "doriantaylor/p5-uri-ni"
  '(:description "Perl implementation of RFC 6920"
    :tags ["perl"]
    :memo "[[https://tools.ietf.org/html/draft-hallambaker-digesturi-02][draft-hallambaker-digesturi-02 - The di (DIGEST) URI Scheme]]"))
(hoarder:record "skington/lwp-json-tiny"
  '(:description "Home to the LWP::JSON::Tiny Perl module"
    :tags ["perl"]))
(hoarder:record "haarg/MooX-CloneWith"
  '(:tags ["perl"]))
(hoarder:record "mfocuz/DNS_Hunter"
  '(:description "DNS enumeration tool"
    :tags ["perl"]))
(hoarder:record "janeskil1525/webshop"
  '(:description "Mojolicious webshop"
    :tags ["perl"]))
(hoarder:record "qashqao/hurl"
  '(:tags ["perl"]))
(hoarder:record "CybernetiX-S3C/IP-Locator"
  '(:description "This tools is used to gather info on an IP or a Domain. Info such as Geolocation."
    :tags ["perl"]))
(hoarder:record "crazy-camel/razur"
  '(:description "A minimalistic JSON/Mustache framework for the Web Mason"
    :tags ["perl"]))
(hoarder:record "karpet/Dezi"
  '(:description "Apache Lucy search platform"
    :tags ["perl"]))
(hoarder:record "vishalgupta97/Automake-Fork"
  '(:description "Automake local development repository"
    :tags ["perl"]))
(hoarder:record "ddmitov/perl-executing-browser"
  '(:description "HTML interface for Perl 5 desktop applications :dromedary_camel:"
    :tags ["c++" "desktop" "electron" "gui" "html" "html5" "linux" "macos" "nwjs" "peb" "perl5" "qt5" "qtwebengine" "qtwebkit" "windows"]
    :memo "[[https://www.reddit.com/r/perl/comments/8n1yfk/options_for_distributing_a_perl_application/][Too Many Requests]]"))
(hoarder:record "bagder/dns2doh"
  '(:description "DNS to DOH"
    :tags ["perl" "dns" "dns-over-https" "doh"]
    :memo "[[https://www.reddit.com/r/perl/comments/8oijkw/dns_over_https_client/][DNS over HTTPS client : perl]]"))
(hoarder:record "moritz/ilbot"
  '(:description "IRC logging bot and web frontend"
    :tags ["perl"]
    :memo "[[https://www.reddit.com/r/perl/comments/8okkhi/no_more_irc_logs_due_to_privacy_concerns/][Too Many Requests]]"))
(hoarder:record "mnunberg/perl-JSON-SL"
  '(:description "jsonsl for Perl"
    :tags ["c"]
    :memo "[[https://www.reddit.com/r/perl/comments/8olcn2/musings_on_parsing_a_json_file_from_perl/][Too Many Requests]]"))
(hoarder:record "neilb/File-JSON-Slurper"
  '(:description "functions to read JSON from a file and decode it, or do the reverse"
    :tags ["perl"]
    :memo "[[https://www.reddit.com/r/perl/comments/8olcn2/musings_on_parsing_a_json_file_from_perl/][Too Many Requests]]"))
(hoarder:record "shartge/netcomics"
  '(:description "Netcomics is a program that downloads today's comic strips from the Web"
    :tags ["perl"]))
(hoarder:record "zoffixznet/WWW-Lipsum"
  '(:description "WWW::Lipsum Perl module"
    :tags ["perl"]))
(hoarder:record "sweany/protolag"
  '(:tags ["perl"]))
(hoarder:record "XlogicX/YouFLATE"
  '(:description "An interactive tool that allows you to DEFLATE (compress) data using your own length-distance pairs, not merely the most efficient ones as is default with DEFLATE."
    :tags ["perl"]))
(hoarder:fetch "eserte/perl-tk"
  '(:description "the perl module Tk"
    :tags ["c" "gui" "perl" "tk" "x11"]))
(hoarder:fetch "gisle/tkx"
  '(:description "A Tk interface for Perl"
    :tags ["perl"]))
(hoarder:record "dagolden/Data-Fake"
  '(:description "Declaratively generate fake structured data for testing"
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=USF4BHMFKbg][David Golden - \"Taking Perl to Eleven with Higher-Order Functions\" - YouTube]]"))
(hoarder:record "ingydotnet/cafescript-talk"
  '(:tags ["makefile"]
    :memo "[[https://www.youtube.com/watch?v=RtN8CKozIf0][LIGHTNING TALK: Ingy döt Net - \"You + Idea + CafeScript + L’Ingy\" - YouTube]]"))
(hoarder:record "ethanjarrell/randomUsers"
  '(:tags ["perl"]
    :memo "[[https://hackernoon.com/generating-mock-data-with-perl-7836a2ca0548][302 Found]]
[[https://www.reddit.com/r/perl/comments/8sulv5/generating_mock_data_with_perl_hacker_noon/][reddit: the front page of the internet]]"))
(hoarder:record "alnewkirk/Faker"
  '(:description "Extensible Fake Data Generator"
    :tags ["perl"]
    :memo "[[https://www.reddit.com/r/perl/comments/8sulv5/generating_mock_data_with_perl_hacker_noon/][Too Many Requests]]"))
(hoarder:record "Grinnz/perldoc-browser"
  '(:description "Perldoc Browser"
    :tags ["perl"]
    :memo "[[https://perldoc.pl/][perl - The Perl 5 language interpreter - Perldoc Browser]]"))
(hoarder:record "kraih/mojo"
  '(:description ":sparkles: Mojolicious - Perl real-time web framework"
    :tags ["event-loop" "html" "http" "json" "mojolicious" "mvc" "perl" "user-agent" "web-framework" "web-server" "websocket"]))
(hoarder:record "metacpan/MetaCPAN-Pod-XHTML"
  '(:tags ["perl"]))
(hoarder:record "hiratara/p5-Data-Monad"
  '(:description "A implementation of monads in Perl 5."
    :tags ["perl"]
    :memo "[[https://www.youtube.com/watch?v=tMvod3-fSFY][Masahiro Honma - Monads in Perl - YouTube]]"))
(hoarder:record "timj/perl-Astro-Catalog"
  '(:description "The repository for the Astro::Catalog CPAN module"
    :tags ["astronomy" "catalog" "perl"]))
(hoarder:record "tobyink/p5-moox-classattribute"
  '(:tags ["perl"]))
(hoarder:record "oetiker/SmokePing"
  '(:description "The Active Monitoring System"
    :tags ["perl"]))
(hoarder:record "skirmess/App-ReportPrereqs"
  '(:description "Report prerequisite versions"
    :tags ["perl"]))
(hoarder:record "gryphonshafer/MojoX-ConfigAppStart"
  '(:description "Start a Mojolicious application with Config::App"
    :tags ["perl"]))
(hoarder:record "gryphonshafer/Config-App"
  '(:description "Cascading merged application configuration"
    :tags ["perl"]))

;; init.el ends here
