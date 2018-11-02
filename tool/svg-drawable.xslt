<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="svg"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:svg="http://www.w3.org/2000/svg"
    xmlns:android="http://schemas.android.com/apk/res/android"
    >

    <xsl:template match="svg:svg">
        <vector android:height="24dp" android:width="24dp">
            <xsl:attribute name="android:viewportHeight">
                <xsl:value-of select="@height" />
            </xsl:attribute>
            <xsl:attribute name="android:viewportWidth">
                <xsl:value-of select="@width" />
            </xsl:attribute>
            <xsl:apply-templates />
        </vector>
    </xsl:template>

    <xsl:template match="svg:path">
        <path>
            <xsl:attribute name="android:fillColor">
                <xsl:choose>
                    <xsl:when test="@fill">
                        <xsl:value-of select="@fill" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>#FF000000</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:attribute name="android:pathData">
                <xsl:value-of select="@d" />
            </xsl:attribute>
        </path>
    </xsl:template>

</xsl:stylesheet>
