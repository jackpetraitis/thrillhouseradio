<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0">
<xsl:output omit-xml-declaration="no" method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<title>
		<xsl:for-each select="source">
		<xsl:choose>
			<xsl:when test="listeners">
		<xsl:for-each select="artist">
			   <xsl:value-of select="." />
			   -
		</xsl:for-each>
		<xsl:for-each select="title">
			   <xsl:value-of select="." />
		</xsl:for-each>
		</xsl:when>
		</xsl:choose>
	</xsl:for-each>
	</title>
<script src="https://www.googletagmanager.com/gtag/js?id=UA-46438048-4"></script>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
</head>
<body>
	<header>
		<div class="containHdrImg">
			<img src="thrillho.png"/>
		</div>
		
		<h1 id="header">Welcome to Thrillhouse Radio v1</h1>
	</header>
	<!--index header menu -->
	<div id="menu">
		<ul>
			<li><a href="admin/">Administration</a></li>
			<li><a href="status.xsl">Server Status</a></li>
			<li><a href="server_version.xsl">Version</a></li>
			<li><a href="http://www.pleasetunein.com" target="_blank">Check Out My Blog</a></li>
		</ul>
	</div>
	<!--end index header menu -->
	<xsl:text disable-output-escaping="yes">
	&lt;!-- WARNING:
	 DO NOT ATTEMPT TO PARSE ICECAST HTML OUTPUT!
	 Suck my ass -@papajack
	 The web interface may change completely between releases.
	 If you have a need for automatic processing of server data,
	 please read the appropriate documentation. Latest docs:
	 http://icecast.org/docs/icecast-latest/icecast2_stats.html
	-->
	</xsl:text>
	<!--mount point stats-->
	<xsl:for-each select="source">
		<xsl:choose>
			<xsl:when test="listeners">
				<div class="listener-info-box">
					<iframe id="my_pleb_frame" src="status_iframe.xsl" height="210" width="500"></iframe>
				</div>
			<div class="roundbox">
				<div class="mounthead">
					<h3 class="mount">Mount Point <xsl:value-of select="@mount" /></h3>
					<div class="right">
						<xsl:choose>
							<xsl:when test="authenticator">
								<a class="auth" href="/auth.xsl">Login</a>
							</xsl:when>
							<xsl:otherwise>
								<ul class="mountlist">
									<li>Download <a class="play" href="{@mount}.m3u">this m3u file</a> to stream in VLC or foobar2000</li>
									<li><a class="xspf-whut play" href="{@mount}.xspf">I have no idea what this XSPF file is</a></li>
									<!-- <li><a class="play" href="{@mount}.vclt">VCLT</a></li> -->
								</ul>
							</xsl:otherwise>
						</xsl:choose>
					</div>
				</div>
				<div class="mountcont">
					<xsl:if test="server_type and ((server_type = 'application/ogg') or (server_type = 'audio/ogg'))">
						<div class="audioplayer">
							<audio id="audio_ctrl_elem" controls="controls" preload="auto">
								<source src="{@mount}" type="{server_type}" />
							</audio>
						</div>
					</xsl:if>
					<table class="yellowkeys">
						<tbody>
							<xsl:if test="server_name">
								<tr>
									<td>Stream Name:</td>
									<td><xsl:value-of select="server_name" /></td>
								</tr>
							</xsl:if>
							<xsl:if test="server_description">
								<tr>
									<td>Stream Description:</td>
									<td><xsl:value-of select="server_description" /></td>
								</tr>
							</xsl:if>
							<xsl:if test="server_type">
								<tr>
									<td>Content Type:</td>
									<td><xsl:value-of select="server_type" /></td>
								</tr>
							</xsl:if>
							<xsl:if test="stream_start">
								<tr>
									<td>Stream started:</td>
									<td class="streamstats"><xsl:value-of select="stream_start" /></td>
								</tr>
							</xsl:if>
							<xsl:if test="bitrate">
								<tr>
									<td>Bitrate:</td>
									<td class="streamstats"><xsl:value-of select="bitrate" /></td>
								</tr>
							</xsl:if>
							<xsl:if test="quality">
								<tr>
									<td>Quality:</td>
									<td class="streamstats"><xsl:value-of select="quality" /></td>
								</tr>
							</xsl:if>
							<xsl:if test="video_quality">
								<tr>
									<td>Video Quality:</td>
									<td class="streamstats"><xsl:value-of select="video_quality" /></td>
								</tr>
							</xsl:if>
							<xsl:if test="frame_size">
								<tr>
									<td>Framesize:</td>
									<td class="streamstats"><xsl:value-of select="frame_size" /></td>
								</tr>
							</xsl:if>
							<xsl:if test="frame_rate">
								<tr>
									<td>Framerate:</td>
									<td class="streamstats"><xsl:value-of select="frame_rate" /></td>
								</tr>
							</xsl:if>
							<xsl:if test="genre">
								<tr>
									<td>Genre:</td>
									<td class="streamstats"><xsl:value-of select="genre" /></td>
								</tr>
							</xsl:if>
							
						</tbody>
					</table>

				</div>
			</div>
			</xsl:when>
			<xsl:otherwise>
				<h3><xsl:value-of select="@mount" /> - Not Connected</h3>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:for-each>
	<div id="footer">
		<em>This <a href="http://www.icecast.org">icecast</a> installation has been heavily customized and continues to be in development.</em>
	</div>
	<script>
		(function() {
	    	document.getElementById("audio_ctrl_elem").play();
	    })();
	</script>
	<script>

		window.setInterval("reloadIFrame2();", 15000);

		function reloadIFrame2() {
		 document.getElementById('my_pleb_frame').src = document.getElementById('my_pleb_frame').src; 
		}

		window.setInterval("reloadTitle();", 16000);

		function reloadTitle() {
		  $.get('status_iframe.xsl', null, function(text){
		      var songName = $(text).find('#songName').html();
		      var artistName = $(text).find('#artistName').html();
		      document.title = artistName + " - " + songName;
		  });
		}

	</script>
	<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments)};
  gtag('js', new Date());

  gtag('config', 'UA-46438048-4');
</script>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
