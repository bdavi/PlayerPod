# These feeds are huge chunks of text. We pull them out into this helper so 
# that the logic of the spec isn't obscured by hundreds of lines of xml. 
# The class ExampleFeed is defined at the end of the module.
module FeedSpecHelper
  attr_accessor :simple_valid_feed, :valid_feed_with_cdata

  def set_up_example_feeds
    set_up_simple_valid_feed
    set_up_valid_feed_with_cdata
  end

  def set_up_simple_valid_feed
    @simple_valid_feed = ExampleFeed.new(
      "This American Life",
      "This American Life is a weekly public radio show, heard by 2.2 million people on more than 500 stations. Another 1.5 million people download the weekly podcast. It is hosted by Ira Glass, produced in collaboration with Chicago Public Media, delivered to stations by PRX The Public Radio Exchange, and has won all of the major broadcasting awards.",
      4,
      "http://feed.thisamericanlife.org/talpodcast",
<<-xml
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" media="screen" href="/~d/styles/rss2enclosuresfull.xsl"?><?xml-stylesheet type="text/css" media="screen" href="http://feed.thisamericanlife.org/~d/styles/itemcontent.css"?><rss xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd" xmlns:media="http://search.yahoo.com/mrss/" xmlns:feedburner="http://rssnamespace.org/feedburner/ext/1.0" version="2.0" xml:base="http://www.thisamericanlife.org">
<channel>
 <title>This American Life</title>
 <link>http://www.thisamericanlife.org</link>
 <description>This American Life is a weekly public radio show, heard by 2.2 million people on more than 500 stations. Another 1.5 million people download the weekly podcast. It is hosted by Ira Glass, produced in collaboration with Chicago Public Media, delivered to stations by PRX The Public Radio Exchange, and has won all of the major broadcasting awards.</description>
 <language>en</language>
 <copyright>Copyright 1995-2015 Ira Glass</copyright>
 <itunes:new-feed-url>http://feed.thisamericanlife.org/talpodcast</itunes:new-feed-url>
<atom10:link xmlns:atom10="http://www.w3.org/2005/Atom" rel="self" type="application/rss+xml" href="http://feed.thisamericanlife.org/talpodcast" /><feedburner:info uri="talpodcast" /><atom10:link xmlns:atom10="http://www.w3.org/2005/Atom" rel="hub" href="http://pubsubhubbub.appspot.com/" /><media:copyright>Copyright 1995-2015 Ira Glass</media:copyright><media:thumbnail url="http://www.thisamericanlife.org/sites/all/themes/thislife/images/logo-square-1400.jpg" /><media:category scheme="http://www.itunes.com/dtds/podcast-1.0.dtd">Society &amp; Culture</media:category><media:category scheme="http://www.itunes.com/dtds/podcast-1.0.dtd">Arts</media:category><media:category scheme="http://www.itunes.com/dtds/podcast-1.0.dtd">News &amp; Politics</media:category><itunes:author>This American Life</itunes:author><itunes:explicit>no</itunes:explicit><itunes:image href="http://www.thisamericanlife.org/sites/all/themes/thislife/images/logo-square-1400.jpg" /><itunes:subtitle>This American Life is a weekly public radio show, heard by 2.2 million people on more than 500 stations. Another 1.5 million people download the weekly podcast. It is hosted by Ira Glass, produced in collaboration with Chicago Public Media, delivered to s</itunes:subtitle><itunes:category text="Society &amp; Culture" /><itunes:category text="Arts" /><itunes:category text="News &amp; Politics" /><feedburner:feedFlare href="http://www.podnova.com/add.srf?url=http%3A%2F%2Ffeed.thisamericanlife.org%2Ftalpodcast" src="http://www.podnova.com/img_chicklet_podnova.gif">Subscribe with Podnova</feedburner:feedFlare><feedburner:feedFlare href="http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeed.thisamericanlife.org%2Ftalpodcast" src="http://www.netvibes.com/img/add2netvibes.gif">Subscribe with Netvibes</feedburner:feedFlare><feedburner:feedFlare href="http://add.my.yahoo.com/rss?url=http%3A%2F%2Ffeed.thisamericanlife.org%2Ftalpodcast" src="http://us.i1.yimg.com/us.yimg.com/i/us/my/addtomyyahoo4.gif">Subscribe with My Yahoo!</feedburner:feedFlare><feedburner:feedFlare href="http://feedly.com/#subscription/feed/http://feed.thisamericanlife.org/talpodcast" src="http://s3.feedly.com/feedburner/feedly.png">Subscribe with Feedly</feedburner:feedFlare><feedburner:feedFlare href="https://www.subtome.com/#/subscribe?feeds=http%3A%2F%2Ffeed.thisamericanlife.org%2Ftalpodcast" src="http://www.subtome.com/subtome-feedburner.png">Subscribe with SubToMe</feedburner:feedFlare><feedburner:feedFlare href="http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeed.thisamericanlife.org%2Ftalpodcast" src="http://buttons.googlesyndication.com/fusion/add.gif">Subscribe with Google</feedburner:feedFlare><item>
 <title>#564: Too Soon?</title>
 <link>http://feed.thisamericanlife.org/~r/talpodcast/~3/c6wwh60U2lQ/too-soon</link>
 <description>When is too soon for that celebrity comeback; that joke that is either brilliant or full-on repugnant; that parent-child conversation? This week: stories about a fallen man trying to kickstart his career with a reality show, and an awkward moment between a mom and a daughter.&lt;img src="http://feeds.feedburner.com/~r/talpodcast/~4/c6wwh60U2lQ" height="1" width="1" alt=""/&gt;</description>
 <pubDate>Mon, 17 Aug 2015 00:00:00 +0000</pubDate>
 <dc:creator>This American Life</dc:creator>
 <guid isPermaLink="false">6805 at http://www.thisamericanlife.org</guid>
 
 <itunes:duration>01:03:56</itunes:duration>
<media:content url="http://feed.thisamericanlife.org/~r/talpodcast/~5/wcYLKJ2dW0o/564.mp3" type="audio/mpeg" /><itunes:explicit>no</itunes:explicit><itunes:subtitle>When is too soon for that celebrity comeback; that joke that is either brilliant or full-on repugnant; that parent-child conversation? This week: stories about a fallen man trying to kickstart his career with a reality show, and an awkward moment between </itunes:subtitle><itunes:author>This American Life</itunes:author><itunes:summary>When is too soon for that celebrity comeback; that joke that is either brilliant or full-on repugnant; that parent-child conversation? This week: stories about a fallen man trying to kickstart his career with a reality show, and an awkward moment between a mom and a daughter.</itunes:summary><feedburner:origLink>http://www.thisamericanlife.org/radio-archives/episode/564/too-soon</feedburner:origLink><enclosure url="http://feed.thisamericanlife.org/~r/talpodcast/~5/wcYLKJ2dW0o/564.mp3" length="0" type="audio/mpeg" /><feedburner:origEnclosureLink>http://www.podtrac.com/pts/redirect.mp3/podcast.thisamericanlife.org/podcast/564.mp3</feedburner:origEnclosureLink></item>
<item>
 <title>#563: The Problem We All Live With - Part Two</title>
 <link>http://feed.thisamericanlife.org/~r/talpodcast/~3/aAwWp2g9298/the-problem-we-all-live-with-part-two</link>
 <description>Last week we looked at a school district integrating by accident. This week: a city going all out to integrate its schools. Plus, a girl who comes up with her own one-woman integration plan.&lt;img src="http://feeds.feedburner.com/~r/talpodcast/~4/aAwWp2g9298" height="1" width="1" alt=""/&gt;</description>
 <pubDate>Mon, 10 Aug 2015 00:00:00 +0000</pubDate>
 <dc:creator>This American Life</dc:creator>
 <guid isPermaLink="false">6811 at http://www.thisamericanlife.org</guid>
 
 <itunes:duration>00:59:12</itunes:duration>
<media:content url="http://feed.thisamericanlife.org/~r/talpodcast/~5/qhpV9Ggk3n4/563.mp3" type="audio/mpeg" /><itunes:explicit>no</itunes:explicit><itunes:subtitle>Last week we looked at a school district integrating by accident. This week: a city going all out to integrate its schools. Plus, a girl who comes up with her own one-woman integration plan.</itunes:subtitle><itunes:author>This American Life</itunes:author><itunes:summary>Last week we looked at a school district integrating by accident. This week: a city going all out to integrate its schools. Plus, a girl who comes up with her own one-woman integration plan.</itunes:summary><feedburner:origLink>http://www.thisamericanlife.org/radio-archives/episode/563/the-problem-we-all-live-with-part-two</feedburner:origLink><enclosure url="http://feed.thisamericanlife.org/~r/talpodcast/~5/qhpV9Ggk3n4/563.mp3" length="0" type="audio/mpeg" /><feedburner:origEnclosureLink>http://www.podtrac.com/pts/redirect.mp3/podcast.thisamericanlife.org/extended/563.mp3</feedburner:origEnclosureLink></item>
<item>
 <title>#562: The Problem We All Live With</title>
 <link>http://feed.thisamericanlife.org/~r/talpodcast/~3/TgQ-xR7Gww4/the-problem-we-all-live-with</link>
 <description>Right now, all sorts of people are trying to rethink and reinvent education, to get poor minority kids performing as well as white kids. But there's one thing nobody tries anymore, despite lots of evidence that it works: desegregation. Nikole Hannah-Jones looks at a district that, not long ago, accidentally launched a desegregation program. First of a two-part series.&lt;img src="http://feeds.feedburner.com/~r/talpodcast/~4/TgQ-xR7Gww4" height="1" width="1" alt=""/&gt;</description>
 <pubDate>Mon, 03 Aug 2015 00:00:00 +0000</pubDate>
 <dc:creator>This American Life</dc:creator>
 <guid isPermaLink="false">6809 at http://www.thisamericanlife.org</guid>
 
 <itunes:duration>01:00:44</itunes:duration>
<media:content url="http://feed.thisamericanlife.org/~r/talpodcast/~5/pefLQQnXt-g/562.mp3" type="audio/mpeg" /><itunes:explicit>no</itunes:explicit><itunes:subtitle>Right now, all sorts of people are trying to rethink and reinvent education, to get poor minority kids performing as well as white kids. But there's one thing nobody tries anymore, despite lots of evidence that it works: desegregation. Nikole Hannah-Jones</itunes:subtitle><itunes:author>This American Life</itunes:author><itunes:summary>Right now, all sorts of people are trying to rethink and reinvent education, to get poor minority kids performing as well as white kids. But there's one thing nobody tries anymore, despite lots of evidence that it works: desegregation. Nikole Hannah-Jones looks at a district that, not long ago, accidentally launched a desegregation program. First of a two-part series.</itunes:summary><feedburner:origLink>http://www.thisamericanlife.org/radio-archives/episode/562/the-problem-we-all-live-with</feedburner:origLink><enclosure url="http://feed.thisamericanlife.org/~r/talpodcast/~5/pefLQQnXt-g/562.mp3" length="0" type="audio/mpeg" /><feedburner:origEnclosureLink>http://www.podtrac.com/pts/redirect.mp3/podcast.thisamericanlife.org/extended/562.mp3</feedburner:origEnclosureLink></item>
<item>
 <title>#443: Amusement Park</title>
 <link>http://feed.thisamericanlife.org/~r/talpodcast/~3/bMvN03Bjd7w/amusement-park</link>
 <description>We head to some of the happiest places on Earth: Amusement Parks! Jonathan Goldstein revisits one he worked at as a teen, Ira takes us behind the scenes at Worlds of Fun in Kansas City, where the staff so loves their jobs they make &lt;a href="http://www.youtube.com/watch?v=GkmR_-_tv7c&amp;feature=related"&gt;music videos&lt;/a&gt; and &lt;a href="http://www.youtube.com/user/woffilms"&gt;other videos&lt;/a&gt;.&lt;img src="http://feeds.feedburner.com/~r/talpodcast/~4/bMvN03Bjd7w" height="1" width="1" alt=""/&gt;</description>
 <pubDate>Mon, 27 Jul 2015 00:00:00 +0000</pubDate>
 <dc:creator>This American Life</dc:creator>
 <guid isPermaLink="false">4464 at http://www.thisamericanlife.org</guid>
 
 <itunes:duration>01:00:16</itunes:duration>
<media:content url="http://feed.thisamericanlife.org/~r/talpodcast/~5/if-ei-Df7Wk/443.mp3" type="audio/mpeg" /><itunes:explicit>no</itunes:explicit><itunes:subtitle>We head to some of the happiest places on Earth: Amusement Parks! Jonathan Goldstein revisits one he worked at as a teen, Ira takes us behind the scenes at Worlds of Fun in Kansas City, where the staff so loves their jobs they make music videos and other </itunes:subtitle><itunes:author>This American Life</itunes:author><itunes:summary>We head to some of the happiest places on Earth: Amusement Parks! Jonathan Goldstein revisits one he worked at as a teen, Ira takes us behind the scenes at Worlds of Fun in Kansas City, where the staff so loves their jobs they make music videos and other videos. </itunes:summary><feedburner:origLink>http://www.thisamericanlife.org/radio-archives/episode/443/amusement-park</feedburner:origLink><enclosure url="http://feed.thisamericanlife.org/~r/talpodcast/~5/if-ei-Df7Wk/443.mp3" length="0" type="audio/mpeg" /><feedburner:origEnclosureLink>http://www.podtrac.com/pts/redirect.mp3/podcast.thisamericanlife.org/extended/443.mp3</feedburner:origEnclosureLink></item>
<media:credit role="author">This American Life</media:credit><media:rating>nonadult</media:rating></channel>
</rss>
xml
  )
  end # End simple valid feed set up

  def set_up_valid_feed_with_cdata
    @valid_feed_with_cdata = ExampleFeed.new(
      "The Ruby Rogues",
      "A weekly discussion by Ruby developers about programming, life, and careers.",
      3,
      "http://feeds.feedwrench.com/RubyRogues.rss",
<<-xml
<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0" xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">
  <channel>
    <title>The Ruby Rogues</title>
    <description>
      <![CDATA[A weekly discussion by Ruby developers about programming, life, and careers.]]>
    </description>
    <link>http://rubyrogues.com</link>
    <language>en</language>
    <managingEditor>Charles Max Wood (chuck@devchat.tv)</managingEditor>
    <webMaster>Charles Max Wood (chuck@devchat.tv)</webMaster>
    <copyright>2014 Intentional Excellence Productions, LLC</copyright>
    <pubdate>Wed, 19 Aug 2015 09:00:00 -0600</pubdate>
    <lastBuildDate>Fri, 21 Aug 2015 12:23:44 -0400</lastBuildDate>
    <image>
      <link>http://rubyrogues.com</link>
      <url>https://s3.amazonaws.com/devchat.tv/ruby-rogues-thumb.jpg</url>
      <title>The Ruby Rogues</title>
    </image>
    <category>ruby</category>
    <category>ruby on rails</category>
    <category>rails</category>
    <category>podcast</category>
    <category>programming</category>
    <category>technology</category>
    <category>developer</category>
    <category>development</category>
    <category>careers</category>
    <itunes:subtitle>A weekly show about Ruby and Programming</itunes:subtitle>
    <itunes:author>DevChat.tv</itunes:author>
    <itunes:summary>
      <![CDATA[A weekly discussion by Ruby developers about programming, life, and careers.]]>
    </itunes:summary>
    <itunes:keywords>ruby, ruby on rails, rails, podcast, programming, technology, developer, development, careers</itunes:keywords>
    <itunes:owner>
      <itunes:name>Charles Max Wood</itunes:name>
      <itunes:email>chuck@devchat.tv</itunes:email>
    </itunes:owner>
    <itunes:image href="https://s3.amazonaws.com/devchat.tv/ruby-rogues-thumb.jpg"/>
    <itunes:category text="Business">
      <itunes:category text="Careers"/>
    </itunes:category>
    <itunes:category text="Technology">
      <itunes:category text="Software How-To"/>
    </itunes:category>



    <item>
      <title>221 RR Sidekiq with Mike Perham</title>
      <link>https://devchat.tv/ruby-rogues/221-rr-sidekiq-with-mike-perham</link>
      <pubDate>Wed, 19 Aug 2015 09:00:00 -0600</pubDate>
      <description>&lt;p dir="ltr" style="text-align:center"&gt;&lt;span style="font-size:18px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Check out &lt;/span&gt;&lt;a href="http://www.angularremoteconf.com" style="text-decoration:none;"&gt;Angular Remote Conf&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; and &lt;/span&gt;&lt;a href="https://devchat.tv/rails-clips" style="text-decoration:none;"&gt;RailsClips&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;!&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;03:15 - Mike Perham Introduction&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://twitter.com/mperham" style="text-decoration:none;"&gt;Twitter&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham" style="text-decoration:none;"&gt;GitHub&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.mikeperham.com/" style="text-decoration:none;"&gt;Blog&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;u&gt;&lt;a href="http://contribsys.com/" style="text-decoration:none;"&gt;Contributed Systems&lt;/a&gt;&lt;/u&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham/sidekiq" style="text-decoration:none;"&gt;sidekiq&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham/dalli" style="line-height: 1.6; text-decoration: none;"&gt;dalli&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;03:43 - &lt;/span&gt;&lt;a href="http://contribsys.com/sidekiq/" style="text-decoration:none;"&gt;Sidekiq&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; Overview&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/resque/resque" style="text-decoration:none;"&gt;resque&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://jruby.org" style="text-decoration:none;"&gt;JRuby&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;05:18 - Job Runners vs Queuing Systems, Background Jobs&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.rabbitmq.com/" style="text-decoration:none;"&gt;RabbitMQ&lt;/a&gt;&lt;/span&gt;

  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/jondot/sneakers" style="text-decoration:none;"&gt;sneakers&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;08:47 - Performance&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/celluloid/celluloid" style="text-decoration:none;"&gt;celluloid&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;09:49 - &lt;/span&gt;&lt;a href="https://github.com/celluloid/celluloid" style="text-decoration:none;"&gt;celluloid&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; vs Ruby Threads&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;11:47 - &lt;/span&gt;&lt;a href="https://en.wikipedia.org/wiki/Global_Interpreter_Lock" style="text-decoration:none;"&gt;The GIL (Global Interpreter Lock)&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;12:49 - Passing Data&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;14:01 - Performance Boost From Using &lt;/span&gt;&lt;a href="http://jruby.org" style="text-decoration:none;"&gt;JRuby&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;?&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;15:48 - &lt;/span&gt;&lt;a href="https://en.wikipedia.org/wiki/Actor_model" style="text-decoration:none;"&gt;The Actor Model&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/tarcieri/revactor" style="text-decoration:none;"&gt;revactor&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://rubini.us" style="text-decoration:none;"&gt;Rubinius&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham/girl_friday" style="text-decoration:none;"&gt;girl_friday&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;20:39 - Sidekiq Roadmap&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Statistics &amp;amp; History&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;21:44 - &lt;/span&gt;&lt;a href="http://www.mikeperham.com/2015/08/06/sidekiq-enterprise" style="text-decoration:none;"&gt;Sidekiq Enterprise&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;27:58 - Sidekiq vs Resque&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham/sidekiq/wiki/Scheduled-Jobs" style="text-decoration:none;"&gt;Scheduled-Jobs&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;29:50 - Adding Features to Sidekiq&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;30:28 - &amp;ldquo;Unique Job&amp;rdquo;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;31:17 - &lt;/span&gt;&lt;a href="https://en.wikipedia.org/wiki/Idempotence" style="text-decoration:none;"&gt;Idempotency&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham/sidekiq/wiki/Best-Practices" style="text-decoration:none;"&gt;Sidekiq Best Practices Page&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;33:12 - Mixing In Other Data Stores&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://redis.io" style="text-decoration:none;"&gt;Redis&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://kafka.apache.org/" style="line-height: 1.6; text-decoration: none;"&gt;Kafka&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://activemq.apache.org/apollo/" style="text-decoration:none;"&gt;Apollo&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;38:42 - Encoding&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;40:04 - Format&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;40:36 - &lt;/span&gt;&lt;a href="https://github.com/mperham/sidekiq/wiki/Active-Job" style="text-decoration:none;"&gt;The Active Job Adapter&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;41:23 - Making Open Source Viable and Sustainable&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;44:04 - Launching An Open Source Project&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.kickstarter.com/" style="text-decoration:none;"&gt;Kickstarter&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://en.wikipedia.org/wiki/BSD_licenses" style="text-decoration:none;"&gt;BSD&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &amp;amp; &lt;/span&gt;&lt;a href="http://www.gnu.org/licenses/lgpl-3.0.en.html" style="text-decoration:none;"&gt;LGPL&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; Licences&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Picks&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://exple.tive.org/blarg/2013/10/22/citation-needed/" style="text-decoration:none;"&gt;Mike Hoye: Citation Needed&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (David)&lt;/span&gt;&lt;br /&gt;
&lt;a href="http://www.target.com/p/code-master/-/A-17065131" style="text-decoration:none;"&gt;Code Master&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Coraline)&lt;/span&gt;&lt;br /&gt;
&lt;a href="http://www.robotturtles.com" style="text-decoration:none;"&gt;Robot Turtles&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Coraline)&lt;/span&gt;&lt;br /&gt;
&lt;a href="https://stups.io" style="text-decoration:none;"&gt;Zalando STUPS&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Jessica)&lt;/span&gt;&lt;br /&gt;
&lt;a href="http://play.elevatorsaga.com/" style="text-decoration:none;"&gt;Elevator Saga&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;br /&gt;
&lt;a href="http://developeronfire.com/Podcast/Episodes/episode-17-charles-max-wood-get-involved-and-try-new-things" style="text-decoration:none;"&gt;Developer On Fire: Episode 017 - Charles Max Wood - Get Involved and Try New Things&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;br /&gt;
&lt;a href="https://modelviewculture.com" style="text-decoration:none;"&gt;Model View Culture&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Mike)&lt;/span&gt;&lt;br /&gt;
&lt;a href="https://plasso.co" style="text-decoration:none;"&gt;Plasso&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Mike)&lt;/span&gt;&lt;br /&gt;
&lt;a href="https://vimeo.com/135347162" style="text-decoration:none;"&gt;James Mickens: Not Even Close: The State of Computer Security (with slides) from NDC Conferences&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Mike)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
</description>
      <source url="http://rubyrogues.com">The Ruby Rogues</source>
      <author></author>
      <guid isPermalink="false">df9e1722-dbce-47d7-8ccb-6935cc6aa41b</guid>
      <itunes:author></itunes:author>
      <itunes:subtitle></itunes:subtitle>
      <itunes:summary>&lt;p dir="ltr" style="text-align:center"&gt;&lt;span style="font-size:18px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Check out &lt;/span&gt;&lt;a href="http://www.angularremoteconf.com" style="text-decoration:none;"&gt;Angular Remote Conf&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; and &lt;/span&gt;&lt;a href="https://devchat.tv/rails-clips" style="text-decoration:none;"&gt;RailsClips&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;!&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;03:15 - Mike Perham Introduction&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://twitter.com/mperham" style="text-decoration:none;"&gt;Twitter&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham" style="text-decoration:none;"&gt;GitHub&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.mikeperham.com/" style="text-decoration:none;"&gt;Blog&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;u&gt;&lt;a href="http://contribsys.com/" style="text-decoration:none;"&gt;Contributed Systems&lt;/a&gt;&lt;/u&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham/sidekiq" style="text-decoration:none;"&gt;sidekiq&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham/dalli" style="line-height: 1.6; text-decoration: none;"&gt;dalli&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;03:43 - &lt;/span&gt;&lt;a href="http://contribsys.com/sidekiq/" style="text-decoration:none;"&gt;Sidekiq&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; Overview&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/resque/resque" style="text-decoration:none;"&gt;resque&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://jruby.org" style="text-decoration:none;"&gt;JRuby&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;05:18 - Job Runners vs Queuing Systems, Background Jobs&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.rabbitmq.com/" style="text-decoration:none;"&gt;RabbitMQ&lt;/a&gt;&lt;/span&gt;

  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/jondot/sneakers" style="text-decoration:none;"&gt;sneakers&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;08:47 - Performance&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/celluloid/celluloid" style="text-decoration:none;"&gt;celluloid&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;09:49 - &lt;/span&gt;&lt;a href="https://github.com/celluloid/celluloid" style="text-decoration:none;"&gt;celluloid&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; vs Ruby Threads&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;11:47 - &lt;/span&gt;&lt;a href="https://en.wikipedia.org/wiki/Global_Interpreter_Lock" style="text-decoration:none;"&gt;The GIL (Global Interpreter Lock)&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;12:49 - Passing Data&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;14:01 - Performance Boost From Using &lt;/span&gt;&lt;a href="http://jruby.org" style="text-decoration:none;"&gt;JRuby&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;?&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;15:48 - &lt;/span&gt;&lt;a href="https://en.wikipedia.org/wiki/Actor_model" style="text-decoration:none;"&gt;The Actor Model&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/tarcieri/revactor" style="text-decoration:none;"&gt;revactor&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://rubini.us" style="text-decoration:none;"&gt;Rubinius&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham/girl_friday" style="text-decoration:none;"&gt;girl_friday&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;20:39 - Sidekiq Roadmap&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Statistics &amp;amp; History&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;21:44 - &lt;/span&gt;&lt;a href="http://www.mikeperham.com/2015/08/06/sidekiq-enterprise" style="text-decoration:none;"&gt;Sidekiq Enterprise&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;27:58 - Sidekiq vs Resque&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham/sidekiq/wiki/Scheduled-Jobs" style="text-decoration:none;"&gt;Scheduled-Jobs&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;29:50 - Adding Features to Sidekiq&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;30:28 - &amp;ldquo;Unique Job&amp;rdquo;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;31:17 - &lt;/span&gt;&lt;a href="https://en.wikipedia.org/wiki/Idempotence" style="text-decoration:none;"&gt;Idempotency&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/mperham/sidekiq/wiki/Best-Practices" style="text-decoration:none;"&gt;Sidekiq Best Practices Page&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;33:12 - Mixing In Other Data Stores&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://redis.io" style="text-decoration:none;"&gt;Redis&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://kafka.apache.org/" style="line-height: 1.6; text-decoration: none;"&gt;Kafka&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://activemq.apache.org/apollo/" style="text-decoration:none;"&gt;Apollo&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;38:42 - Encoding&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;40:04 - Format&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;40:36 - &lt;/span&gt;&lt;a href="https://github.com/mperham/sidekiq/wiki/Active-Job" style="text-decoration:none;"&gt;The Active Job Adapter&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;41:23 - Making Open Source Viable and Sustainable&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;44:04 - Launching An Open Source Project&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.kickstarter.com/" style="text-decoration:none;"&gt;Kickstarter&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://en.wikipedia.org/wiki/BSD_licenses" style="text-decoration:none;"&gt;BSD&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &amp;amp; &lt;/span&gt;&lt;a href="http://www.gnu.org/licenses/lgpl-3.0.en.html" style="text-decoration:none;"&gt;LGPL&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; Licences&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Picks&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://exple.tive.org/blarg/2013/10/22/citation-needed/" style="text-decoration:none;"&gt;Mike Hoye: Citation Needed&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (David)&lt;/span&gt;&lt;br /&gt;
&lt;a href="http://www.target.com/p/code-master/-/A-17065131" style="text-decoration:none;"&gt;Code Master&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Coraline)&lt;/span&gt;&lt;br /&gt;
&lt;a href="http://www.robotturtles.com" style="text-decoration:none;"&gt;Robot Turtles&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Coraline)&lt;/span&gt;&lt;br /&gt;
&lt;a href="https://stups.io" style="text-decoration:none;"&gt;Zalando STUPS&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Jessica)&lt;/span&gt;&lt;br /&gt;
&lt;a href="http://play.elevatorsaga.com/" style="text-decoration:none;"&gt;Elevator Saga&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;br /&gt;
&lt;a href="http://developeronfire.com/Podcast/Episodes/episode-17-charles-max-wood-get-involved-and-try-new-things" style="text-decoration:none;"&gt;Developer On Fire: Episode 017 - Charles Max Wood - Get Involved and Try New Things&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;br /&gt;
&lt;a href="https://modelviewculture.com" style="text-decoration:none;"&gt;Model View Culture&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Mike)&lt;/span&gt;&lt;br /&gt;
&lt;a href="https://plasso.co" style="text-decoration:none;"&gt;Plasso&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Mike)&lt;/span&gt;&lt;br /&gt;
&lt;a href="https://vimeo.com/135347162" style="text-decoration:none;"&gt;James Mickens: Not Even Close: The State of Computer Security (with slides) from NDC Conferences&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Mike)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
</itunes:summary>
      <itunes:duration>55:20</itunes:duration>
      <enclosure url="http://www.podtrac.com/pts/redirect.mp3/media.devchat.tv/ruby-rogues/RR221Sidekiq.mp3?rss=true" length="53132789" type="audio/mpeg"/>
    </item>



    <item>
      <title>220 RR Augmenting Your Reality with Leon Gersing</title>
      <link>http://devchat.tv/ruby-rogues/220-rr-augmenting-your-reality-with-leon-gersing</link>
      <pubDate>Wed, 12 Aug 2015 09:00:00 -0600</pubDate>
      <description>&lt;p dir="ltr" style="text-align:center"&gt;&lt;span style="font-size:18px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Check out &lt;/span&gt;&lt;a href="http://devchat.tv/rails-clips" style="text-decoration:none;"&gt;RailsClips&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; and &lt;/span&gt;&lt;a href="http://angularremoteconf.com" style="text-decoration:none;"&gt;Angular Remote Conf&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;!&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;02:46 - Leon Gersing Introduction&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://twitter.com/rubybuddha" style="text-decoration:none;"&gt;Twitter&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/leongersing" style="text-decoration:none;"&gt;GitHhub&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://leongersing.com/" style="text-decoration:none;"&gt;Blog&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://devbootcamp.com/" style="text-decoration:none;"&gt;Dev Bootcamp&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.youtube.com/watch?v=5HRgfxDtaPI" style="text-decoration:none;"&gt;[Talk] Leon Gersing: Keep Software Weird&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;03:24 - &amp;ldquo;Augmenting Your Reality&amp;rdquo;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;07:06 - Emotional Goals and Quantifying Happiness&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://hackinghappy.com" style="text-decoration:none;"&gt;Hacking Happy by Dusty Phillips&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;13:49 - Quantification&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;15:32 - Reacting to Data&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;17:49 - Recognizing Patterns and Trends&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Journaling and Meditation&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;21:58 - &lt;/span&gt;&lt;a href="https://en.wikipedia.org/wiki/Fear_of_missing_out" style="text-decoration:none;"&gt;FOMO (Fear Of Missing Out)&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;26:20 - The Software Development Mindset&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Teams Should Play More&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Encouraging Easter Eggs&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Following Trails&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;31:55 - The Ruby Community, Whimsy, and Creating Realities&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/1512212938/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=1512212938&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=3GCHNDHALUNEQGEN" style="text-decoration:none;"&gt;why&amp;#39;s (poignant) guide to Ruby: in color by why the lucky stiff&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;40:41 - Leon&amp;rsquo;s Role at &lt;/span&gt;&lt;a href="http://devbootcamp.com/" style="text-decoration:none;"&gt;Dev Bootcamp&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;42:16 - Wisdom; Not Authority&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;44:14 - Recommended Reading&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Aldous Huxley&lt;/span&gt;&lt;/span&gt;

  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/0061724947/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0061724947&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=FD7HS2MWHLDGTM2O" style="text-decoration:none;"&gt;The Perennial Philosophy: An Interpretation of the Great Mystics, East and West&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Jean Baudrillard&lt;/span&gt;&lt;/span&gt;
  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/0472065211/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0472065211&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=6735SRDAL2AWPR2O" style="text-decoration:none;"&gt;Simulacra and Simulation (The Body, In Theory: Histories of Cultural Materialism)&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/184467682X/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=184467682X&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=4KF7XVB5ZESAO3RS" style="line-height: 1.6; text-decoration: none;"&gt;America&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/1583333789/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=1583333789&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=J7PEWNJTEMUHCEDQ" style="text-decoration:none;"&gt;Play: How it Shapes the Brain, Opens the Imagination, and Invigorates the Soul by Stuart Brown&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Picks&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.dollywood.com/waterpark.aspx" style="text-decoration:none;"&gt;Dollywood&amp;#39;s Splash Country Water Adventures Park&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Normality (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="https://www.youtube.com/watch?v=viyIGHiYCk8" style="text-decoration:none;"&gt;Jessica Kerr: Meritocracy @ PolyConf 2015&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Jessica)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="https://www.periscope.tv/" style="text-decoration:none;"&gt;Periscope&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://eventualmillionaire.com/2011/01/eventual-millionaire-podcast-episode-one-about-jaime/" style="text-decoration:none;"&gt;The Eventual Millionaire Podcast&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://entreprogrammers.com/retreat2015" style="text-decoration:none;"&gt;Entreprogrammers Retreat 2015&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &amp;nbsp;(Chuck)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/0307352153/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0307352153&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=3IVE3W3W5LLCLVTF" style="text-decoration:none;"&gt;Quiet: The Power of Introverts in a World That Can&amp;#39;t Stop Talking by Susan Cain&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Leon)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/1583333789/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=1583333789&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=J7PEWNJTEMUHCEDQ" style="text-decoration:none;"&gt;Play: How it Shapes the Brain, Opens the Imagination, and Invigorates the Soul by Stuart Brown&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Leon)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/B00HSW6VHE/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=B00HSW6VHE&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=XFSER2HLRVVGBOCD" style="text-decoration:none;"&gt;Shel Silverstein - Freakin At The Freakers Ball&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Leon)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/0345807294/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0345807294&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=U4TMTJHCH7KCNX5I" style="text-decoration:none;"&gt;The Circle by Dave Eggers&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Leon)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
</description>
      <source url="http://rubyrogues.com">The Ruby Rogues</source>
      <author></author>
      <guid isPermalink="false">ff1e373b-5075-410a-8423-575a1b09ae41</guid>
      <itunes:author></itunes:author>
      <itunes:subtitle></itunes:subtitle>
      <itunes:summary>&lt;p dir="ltr" style="text-align:center"&gt;&lt;span style="font-size:18px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Check out &lt;/span&gt;&lt;a href="http://devchat.tv/rails-clips" style="text-decoration:none;"&gt;RailsClips&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; and &lt;/span&gt;&lt;a href="http://angularremoteconf.com" style="text-decoration:none;"&gt;Angular Remote Conf&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;!&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;02:46 - Leon Gersing Introduction&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://twitter.com/rubybuddha" style="text-decoration:none;"&gt;Twitter&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/leongersing" style="text-decoration:none;"&gt;GitHhub&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://leongersing.com/" style="text-decoration:none;"&gt;Blog&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://devbootcamp.com/" style="text-decoration:none;"&gt;Dev Bootcamp&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.youtube.com/watch?v=5HRgfxDtaPI" style="text-decoration:none;"&gt;[Talk] Leon Gersing: Keep Software Weird&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;03:24 - &amp;ldquo;Augmenting Your Reality&amp;rdquo;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;07:06 - Emotional Goals and Quantifying Happiness&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://hackinghappy.com" style="text-decoration:none;"&gt;Hacking Happy by Dusty Phillips&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;13:49 - Quantification&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;15:32 - Reacting to Data&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;17:49 - Recognizing Patterns and Trends&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Journaling and Meditation&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;21:58 - &lt;/span&gt;&lt;a href="https://en.wikipedia.org/wiki/Fear_of_missing_out" style="text-decoration:none;"&gt;FOMO (Fear Of Missing Out)&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;26:20 - The Software Development Mindset&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Teams Should Play More&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Encouraging Easter Eggs&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Following Trails&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;31:55 - The Ruby Community, Whimsy, and Creating Realities&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/1512212938/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=1512212938&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=3GCHNDHALUNEQGEN" style="text-decoration:none;"&gt;why&amp;#39;s (poignant) guide to Ruby: in color by why the lucky stiff&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;40:41 - Leon&amp;rsquo;s Role at &lt;/span&gt;&lt;a href="http://devbootcamp.com/" style="text-decoration:none;"&gt;Dev Bootcamp&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;42:16 - Wisdom; Not Authority&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;44:14 - Recommended Reading&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Aldous Huxley&lt;/span&gt;&lt;/span&gt;

  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/0061724947/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0061724947&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=FD7HS2MWHLDGTM2O" style="text-decoration:none;"&gt;The Perennial Philosophy: An Interpretation of the Great Mystics, East and West&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Jean Baudrillard&lt;/span&gt;&lt;/span&gt;
  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/0472065211/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0472065211&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=6735SRDAL2AWPR2O" style="text-decoration:none;"&gt;Simulacra and Simulation (The Body, In Theory: Histories of Cultural Materialism)&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/184467682X/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=184467682X&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=4KF7XVB5ZESAO3RS" style="line-height: 1.6; text-decoration: none;"&gt;America&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/1583333789/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=1583333789&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=J7PEWNJTEMUHCEDQ" style="text-decoration:none;"&gt;Play: How it Shapes the Brain, Opens the Imagination, and Invigorates the Soul by Stuart Brown&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Picks&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://www.dollywood.com/waterpark.aspx" style="text-decoration:none;"&gt;Dollywood&amp;#39;s Splash Country Water Adventures Park&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Normality (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="https://www.youtube.com/watch?v=viyIGHiYCk8" style="text-decoration:none;"&gt;Jessica Kerr: Meritocracy @ PolyConf 2015&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Jessica)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="https://www.periscope.tv/" style="text-decoration:none;"&gt;Periscope&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://eventualmillionaire.com/2011/01/eventual-millionaire-podcast-episode-one-about-jaime/" style="text-decoration:none;"&gt;The Eventual Millionaire Podcast&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://entreprogrammers.com/retreat2015" style="text-decoration:none;"&gt;Entreprogrammers Retreat 2015&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &amp;nbsp;(Chuck)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/0307352153/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0307352153&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=3IVE3W3W5LLCLVTF" style="text-decoration:none;"&gt;Quiet: The Power of Introverts in a World That Can&amp;#39;t Stop Talking by Susan Cain&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Leon)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/1583333789/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=1583333789&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=J7PEWNJTEMUHCEDQ" style="text-decoration:none;"&gt;Play: How it Shapes the Brain, Opens the Imagination, and Invigorates the Soul by Stuart Brown&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Leon)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/B00HSW6VHE/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=B00HSW6VHE&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=XFSER2HLRVVGBOCD" style="text-decoration:none;"&gt;Shel Silverstein - Freakin At The Freakers Ball&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Leon)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/0345807294/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0345807294&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=U4TMTJHCH7KCNX5I" style="text-decoration:none;"&gt;The Circle by Dave Eggers&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Leon)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
</itunes:summary>
      <itunes:duration>58:21</itunes:duration>
      <enclosure url="http://www.podtrac.com/pts/redirect.mp3/media.devchat.tv/ruby-rogues/RR220AugmentingReality.mp3?rss=true" length="55695731" type="audio/mpeg"/>
    </item>



    <item>
      <title>219 RR Brakeman and Rails Security with Justin Collins</title>
      <link>http://devchat.tv/ruby-rogues/219-rr-brakeman-and-rails-security-with-justin-collins</link>
      <pubDate>Wed, 05 Aug 2015 09:00:00 -0600</pubDate>
      <description>&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;02:40 - Justin Collins Introduction&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://twitter.com/presidentbeef" style="text-decoration:none;"&gt;Twitter&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/presidentbeef" style="text-decoration:none;"&gt;GitHub&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://presidentbeef.com/" style="text-decoration:none;"&gt;Blog&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://brakemanscanner.org/" style="text-decoration:none;"&gt;Brakeman&lt;/a&gt;&lt;/span&gt;
  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://twitter.com/brakeman" style="line-height: 1.6; text-decoration: none;"&gt;@brakeman&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.surveymonkey.com/" style="text-decoration:none;"&gt;SurveyMonkey&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.brakemanpro.com/" style="text-decoration:none;"&gt;Brakeman Pro&lt;/a&gt;&lt;/span&gt;
  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://twitter.com/brakemanpro" style="line-height: 1.6; text-decoration: none;"&gt;@brakemanpro&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;03:40 - &lt;/span&gt;&lt;a href="http://brakemanscanner.org/" style="text-decoration:none;"&gt;Brakeman&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &amp;amp; &lt;/span&gt;&lt;a href="https://en.wikipedia.org/wiki/Static_program_analysis" style="text-decoration:none;"&gt;Static Analysis&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;04:02 - Common Security Vulnerabilities (and Definitions)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://en.wikipedia.org/wiki/Cross-site_scripting" style="text-decoration:none;"&gt;Cross-site Scripting&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://en.wikipedia.org/wiki/SQL_injection" style="text-decoration:none;"&gt;SQL Injection&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;
  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://rails-sqli.org/" style="text-decoration:none;"&gt;rails-sqli.org&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://en.wikipedia.org/wiki/Mass_assignment_vulnerability" style="text-decoration:none;"&gt;Mass Assignment&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.owasp.org/index.php/Open_redirect" style="text-decoration:none;"&gt;Open Redirects&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;08:57 - The Inspiration for Brakeman&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;09:47 - Getting Brakeman Working (Process)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;10:41 - Learning About Security&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.owasp.org/index.php/Ruby_on_Rails_Cheatsheet" style="text-decoration:none;"&gt;The Rails Cheat Sheets&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.owasp.org/" style="text-decoration:none;"&gt;The Open Web Application Security Project (OWASP)&lt;/a&gt;&lt;/span&gt;
  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project" style="line-height: 1.6; text-decoration: none;"&gt;The OWASP Top Ten&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;13:01 - Security and The Rails Core Team&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://docs.google.com/presentation/d/1P5bpHyCwQUglmBbm8ltNImIDv4Hg8vbJ-PmDXIpKgA4/pub?start=false&amp;amp;loop=false&amp;amp;delayms=3000&amp;amp;slide=id.p" style="text-decoration:none;"&gt;Justin Collins: The World of Ruby on Rails Security @ RailsConf 2015&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;15:19 - Should Brakeman be integrated into Rails?&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;16:29 - Running Brakeman On Your CI Machine&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/guard/guard-brakeman" style="text-decoration:none;"&gt;guard-brakeman&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;17:43 - Are there specific types of vulnerabilities that are hard to find with static analysis?&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;19:18 - Rails Engines&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;20:56 - When building an app, is security something you should focus on from the get-go?&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Where should you get started?&lt;/span&gt;&lt;/span&gt;

  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project" style="text-decoration:none;"&gt;The OWASP Top Ten&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;25:32 - Code Schools Teaching Security&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;26:17 - Translating Lessons Learned Into Brakeman&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;27:24 - Handling Security and Data Breaches&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://en.wikipedia.org/wiki/Charlie_Miller_(security_researcher)" style="text-decoration:none;"&gt;Charlie Miller&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;32:28 - Crowdsourcing Security (Security in Open Source)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://opensourcebridge.org/sessions/1554" style="text-decoration:none;"&gt;Terri Oda: Bringing Security to Your Open Source Project&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;34:54 - The Technical Side of Brakeman and Static Analysis Tools&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Identifying a Dangerous Value&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;37:34 - Data Tracing, Limited Data Flow Analysis &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;40:52 - Future Brakeman Features&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;43:29 - Supporting and Contributing to Brakeman&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;48:23 - PhDs&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Picks&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://parley.rubyrogues.com/t/why-didnt-you-just-and-did-you-consider/3246/6" style="text-decoration:none;"&gt;&amp;quot;Why didn&amp;#39;t you [just]...&amp;quot; and &amp;quot;Did you consider...&amp;quot; Parley Thread&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/0735619654/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0735619654&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=CSFX6XCZ6KFOVHJS" style="text-decoration:none;"&gt;Object Thinking (Developer Reference) by David West&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://idlewords.com/talks/web_design_first_100_years.htm" style="text-decoration:none;"&gt;Web Design - The First 100 Years&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://brightonruby.com/" style="text-decoration:none;"&gt;Brighton Ruby Conference&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Email (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;The Twitter Mute Button (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://rogerdudler.github.io/git-guide/" style="text-decoration:none;"&gt;git - the simple guide&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Saron)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://i.imgur.com/VoylY6D.gifv" style="text-decoration:none;"&gt;I Love My Campus&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Saron)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.lonestarruby.org/" style="text-decoration:none;"&gt;LoneStarRuby&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Saron)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.reactrally.com/" style="text-decoration:none;"&gt;React Rally&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Jessica)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://livecoding.tv" style="text-decoration:none;"&gt;Livecoding.tv&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Jessica)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://time.com/3948364/moon-landing-apollo-11-margaret-hamilton/" style="text-decoration:none;"&gt;Remembering the Apollo 11 Moon Landing With the Woman Who Made It Happen&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Coraline)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://showgoers.tv/" style="text-decoration:none;"&gt;Showgoers&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Coraline)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.iterativ.ch/angularjskurs/" style="text-decoration:none;"&gt;AngularJS Kurs&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/ParkinT/HireMe" style="text-decoration:none;"&gt;Hire Thom Parkin!&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://rethinkdb.com/" style="text-decoration:none;"&gt;RethinkDB&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Justin)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;a href="http://www.amazon.com/gp/product/0887309895/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0887309895&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=NQLXUVEANFGWPQKY" style="text-decoration:none;"&gt;Dealers of Lightning: Xerox PARC and the Dawn of the Computer Age by Michael A. Hiltzik&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Justin)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.imdb.com/title/tt3576038/" style="text-decoration:none;"&gt;The Search for General Tso&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Justin)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
</description>
      <source url="http://rubyrogues.com">The Ruby Rogues</source>
      <author></author>
      <guid isPermalink="false">3350db65-11a8-4d68-906a-ffbe2b6770fe</guid>
      <itunes:author></itunes:author>
      <itunes:subtitle></itunes:subtitle>
      <itunes:summary>&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;02:40 - Justin Collins Introduction&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://twitter.com/presidentbeef" style="text-decoration:none;"&gt;Twitter&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/presidentbeef" style="text-decoration:none;"&gt;GitHub&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://presidentbeef.com/" style="text-decoration:none;"&gt;Blog&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://brakemanscanner.org/" style="text-decoration:none;"&gt;Brakeman&lt;/a&gt;&lt;/span&gt;
  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://twitter.com/brakeman" style="line-height: 1.6; text-decoration: none;"&gt;@brakeman&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.surveymonkey.com/" style="text-decoration:none;"&gt;SurveyMonkey&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.brakemanpro.com/" style="text-decoration:none;"&gt;Brakeman Pro&lt;/a&gt;&lt;/span&gt;
  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://twitter.com/brakemanpro" style="line-height: 1.6; text-decoration: none;"&gt;@brakemanpro&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;03:40 - &lt;/span&gt;&lt;a href="http://brakemanscanner.org/" style="text-decoration:none;"&gt;Brakeman&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &amp;amp; &lt;/span&gt;&lt;a href="https://en.wikipedia.org/wiki/Static_program_analysis" style="text-decoration:none;"&gt;Static Analysis&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;04:02 - Common Security Vulnerabilities (and Definitions)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://en.wikipedia.org/wiki/Cross-site_scripting" style="text-decoration:none;"&gt;Cross-site Scripting&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://en.wikipedia.org/wiki/SQL_injection" style="text-decoration:none;"&gt;SQL Injection&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;
  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://rails-sqli.org/" style="text-decoration:none;"&gt;rails-sqli.org&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://en.wikipedia.org/wiki/Mass_assignment_vulnerability" style="text-decoration:none;"&gt;Mass Assignment&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.owasp.org/index.php/Open_redirect" style="text-decoration:none;"&gt;Open Redirects&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;08:57 - The Inspiration for Brakeman&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;09:47 - Getting Brakeman Working (Process)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;10:41 - Learning About Security&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.owasp.org/index.php/Ruby_on_Rails_Cheatsheet" style="text-decoration:none;"&gt;The Rails Cheat Sheets&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.owasp.org/" style="text-decoration:none;"&gt;The Open Web Application Security Project (OWASP)&lt;/a&gt;&lt;/span&gt;
  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project" style="line-height: 1.6; text-decoration: none;"&gt;The OWASP Top Ten&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;13:01 - Security and The Rails Core Team&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://docs.google.com/presentation/d/1P5bpHyCwQUglmBbm8ltNImIDv4Hg8vbJ-PmDXIpKgA4/pub?start=false&amp;amp;loop=false&amp;amp;delayms=3000&amp;amp;slide=id.p" style="text-decoration:none;"&gt;Justin Collins: The World of Ruby on Rails Security @ RailsConf 2015&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;15:19 - Should Brakeman be integrated into Rails?&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;16:29 - Running Brakeman On Your CI Machine&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/guard/guard-brakeman" style="text-decoration:none;"&gt;guard-brakeman&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;17:43 - Are there specific types of vulnerabilities that are hard to find with static analysis?&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;19:18 - Rails Engines&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;20:56 - When building an app, is security something you should focus on from the get-go?&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Where should you get started?&lt;/span&gt;&lt;/span&gt;

  &lt;ul&gt;
    &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project" style="text-decoration:none;"&gt;The OWASP Top Ten&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;25:32 - Code Schools Teaching Security&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;26:17 - Translating Lessons Learned Into Brakeman&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;27:24 - Handling Security and Data Breaches&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="https://en.wikipedia.org/wiki/Charlie_Miller_(security_researcher)" style="text-decoration:none;"&gt;Charlie Miller&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;32:28 - Crowdsourcing Security (Security in Open Source)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://opensourcebridge.org/sessions/1554" style="text-decoration:none;"&gt;Terri Oda: Bringing Security to Your Open Source Project&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;34:54 - The Technical Side of Brakeman and Static Analysis Tools&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;ul dir="ltr"&gt;
  &lt;li&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Identifying a Dangerous Value&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;37:34 - Data Tracing, Limited Data Flow Analysis &lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;40:52 - Future Brakeman Features&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;43:29 - Supporting and Contributing to Brakeman&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;48:23 - PhDs&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p&gt;&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Picks&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;

&lt;p dir="ltr"&gt;&lt;span style="font-size:14px"&gt;&lt;a href="http://parley.rubyrogues.com/t/why-didnt-you-just-and-did-you-consider/3246/6" style="text-decoration:none;"&gt;&amp;quot;Why didn&amp;#39;t you [just]...&amp;quot; and &amp;quot;Did you consider...&amp;quot; Parley Thread&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.amazon.com/gp/product/0735619654/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0735619654&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=CSFX6XCZ6KFOVHJS" style="text-decoration:none;"&gt;Object Thinking (Developer Reference) by David West&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://idlewords.com/talks/web_design_first_100_years.htm" style="text-decoration:none;"&gt;Web Design - The First 100 Years&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://brightonruby.com/" style="text-decoration:none;"&gt;Brighton Ruby Conference&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;Email (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt;The Twitter Mute Button (Avdi)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://rogerdudler.github.io/git-guide/" style="text-decoration:none;"&gt;git - the simple guide&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Saron)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://i.imgur.com/VoylY6D.gifv" style="text-decoration:none;"&gt;I Love My Campus&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Saron)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.lonestarruby.org/" style="text-decoration:none;"&gt;LoneStarRuby&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Saron)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.reactrally.com/" style="text-decoration:none;"&gt;React Rally&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Jessica)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://livecoding.tv" style="text-decoration:none;"&gt;Livecoding.tv&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Jessica)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://time.com/3948364/moon-landing-apollo-11-margaret-hamilton/" style="text-decoration:none;"&gt;Remembering the Apollo 11 Moon Landing With the Woman Who Made It Happen&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Coraline)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://showgoers.tv/" style="text-decoration:none;"&gt;Showgoers&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Coraline)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.iterativ.ch/angularjskurs/" style="text-decoration:none;"&gt;AngularJS Kurs&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="https://github.com/ParkinT/HireMe" style="text-decoration:none;"&gt;Hire Thom Parkin!&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Chuck)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://rethinkdb.com/" style="text-decoration:none;"&gt;RethinkDB&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Justin)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; &lt;/span&gt;&lt;a href="http://www.amazon.com/gp/product/0887309895/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&amp;amp;camp=1789&amp;amp;creative=9325&amp;amp;creativeASIN=0887309895&amp;amp;linkCode=as2&amp;amp;tag=chamaxwoo-20&amp;amp;linkId=NQLXUVEANFGWPQKY" style="text-decoration:none;"&gt;Dealers of Lightning: Xerox PARC and the Dawn of the Computer Age by Michael A. Hiltzik&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Justin)&lt;/span&gt;&lt;/span&gt;&lt;br /&gt;
&lt;span style="font-size:14px"&gt;&lt;a href="http://www.imdb.com/title/tt3576038/" style="text-decoration:none;"&gt;The Search for General Tso&lt;/a&gt;&lt;span style="background-color:transparent; color:rgb(0, 0, 0); font-family:arial"&gt; (Justin)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;
</itunes:summary>
      <itunes:duration>01:06:18</itunes:duration>
      <enclosure url="http://www.podtrac.com/pts/redirect.mp3/media.devchat.tv/ruby-rogues/RR219Brakeman.mp3?rss=true" length="63657860" type="audio/mpeg"/>
    </item>
</channel>
</rss>
xml
    )

  end




  class ExampleFeed
    attr_accessor :xml, :expected_title, :expected_description, :expected_episode_count, :feed_url 

    def initialize(title, description, episode_count, url, xml)
      @xml = xml
      @expected_title = title
      @expected_description = description
      @expected_episode_count = episode_count
      @feed_url = url
    end
  end

end


  # def set_up_valid_feed_with_cdata

  #   @valid_feed_with_cdata = ExampleFeed.new(
  #     title,
  #     description,
  #     episode_count,
  #     url,
  #     xml

  #   )

  # end






