<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:android="http://schemas.android.com/apk/res/android">

	<xsl:param name="AppFloodAppKey"></xsl:param>
	<xsl:param name="AppFloodSecretKey"></xsl:param>

	<xsl:template match="meta-data[@android:name='AppFloodAppKey']">
		<meta-data android:name="AppFloodAppKey" android:value="{$AppFloodAppKey}"/>
	</xsl:template>

	<xsl:template match="meta-data[@android:name='AppFloodSecretKey']">
		<meta-data android:name="AppFloodSecretKey" android:value="{$AppFloodSecretKey}"/>
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
