<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>
	<xsl:template match="/">
		<xsl:for-each select="//familia">
			<div>
				<a>
					<xsl:attribute name="href">
					modulo.php?id=<xsl:value-of select="@id"/>
					</xsl:attribute>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="icono_g"/>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="nombre"/>
						</xsl:attribute>
					</img>
				</a>
			</div>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
