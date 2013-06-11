<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:android="http://schemas.android.com/apk/res/android">

	<xsl:param name="TapJoyAppID"></xsl:param>
	<xsl:param name="TapJoySecretKey"></xsl:param>

	<xsl:template match="meta-data[@android:name='TapJoyAppID']">
		<meta-data android:name="TapJoyAppID" android:value="{$TapJoyAppID}"/>
	</xsl:template>

	<xsl:template match="meta-data[@android:name='TapJoySecretKey']">
		<meta-data android:name="TapJoySecretKey" android:value="{$TapJoySecretKey}"/>
	</xsl:template>

	<!--	<xsl:strip-space elements="*" />-->
	<xsl:output indent="yes" />

	<xsl:template match="comment()" />

	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>
