<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>
  <xsl:template match="/">
        <div class="principal">
          <xsl:for-each select="//familia">
            <a>
              <xsl:attribute name="href">
          modulo_grado.php?id=<xsl:value-of select="@id"/>
          </xsl:attribute>
              <div class="panel">
                <h2>
                  <xsl:value-of select="nombre"/>
                </h2>
                <img>
                  <xsl:attribute name="class">imagenes
              </xsl:attribute>
                  <xsl:attribute name="src">
                    <xsl:value-of select="icono"/>
                  </xsl:attribute>
                  <xsl:attribute name="alt">
                    <xsl:value-of select="nombre"/>
                  </xsl:attribute>
                </img>
              </div>
            </a>
          </xsl:for-each>
          </div>
  </xsl:template>
</xsl:stylesheet>