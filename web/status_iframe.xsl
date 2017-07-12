<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0">
<xsl:output omit-xml-declaration="no" method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<xsl:for-each select="source">
		<xsl:choose>
			<xsl:when test="listeners">
				<div class="listener-info-box">
					<h2>(Now Playing)</h2>
					<xsl:for-each select="artist">
						<h3 class="tags custom-artist-tag">
						   <xsl:value-of select="name()" />
						   -
						   <xsl:value-of select="." />
						</h3>
					</xsl:for-each>
					<xsl:for-each select="album">
						<h2 class="tags custom-playlist-tag">
						   <xsl:value-of select="name()" />
						   -
						   <xsl:value-of select="." />
						</h2>
					</xsl:for-each>
					<xsl:for-each test="genre">
						<h3 class="tags custom-playlist-tag">
							<!--Playlist/Album: - -->
							<xsl:value-of select="name()" />
							-
							<xsl:value-of select="." />
						</h3>
					</xsl:for-each>
					<xsl:for-each select="title">
						<h3 class="tags custom-title-tag">
						   <xsl:value-of select="name()" />
						   -
						   <xsl:value-of select="." />
						</h3>
					</xsl:for-each>
					<xsl:for-each select="album">
						<h2 class="tags custom-playlist-tag">
						   <xsl:value-of select="name()" />
						   -
						   <xsl:value-of select="." />
						</h2>
					</xsl:for-each>
					<xsl:if test="listeners">
						<h4 class="tags custom-playlist-tag">
							Listeners (current): 
							<xsl:value-of select="listeners" />
						</h4>
					</xsl:if>
					<xsl:if test="listener_peak">
						<h4 class="tags custom-playlist-tag">
							Listeners (peak): 
							<xsl:value-of select="listener_peak" />
						</h4>
					</xsl:if>
				</div>
				</xsl:when>
		</xsl:choose>
	</xsl:for-each>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
