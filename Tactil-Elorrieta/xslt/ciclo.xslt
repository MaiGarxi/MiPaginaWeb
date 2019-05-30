<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>
	<xsl:param name="familia"></xsl:param>
	<xsl:template match="/">
		<nav class="skew-menu">
			<ul  class="tabs-nav">
				<li><a href="index.php">Inicio</a></li>
				<li><a href="familias.php">Familias Profesionales</a></li>
				<li id="hover"><a href="">Ciclos</a></li>
				<li><a href="mapa.php">Plano</a></li>
			</ul>
		</nav>
		<h1>
			<xsl:value-of select="elorrieta/familia[@id=$familia]/nombre"/>
		</h1>
		<div id="modulo">
			<div class="contenedor">
				<xsl:choose>
					<xsl:when test="elorrieta/familia[@id=$familia]/ciclo[tipo='Medio']">
						<h2>GRADO MEDIO</h2>
						<xsl:for-each select="elorrieta/familia[@id=$familia]/ciclo[tipo='Medio']">
							<a>
								<xsl:attribute name="href">
									info.php?id=<xsl:value-of select="@id"/>
								</xsl:attribute>
								<div class="medio">
									<h3>
										<xsl:value-of select="nombre"/>
									</h3>
								</div>
							</a>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<div class="nomodulo">
							<h2>GRADO MEDIO</h2>
							<p>Este modulo no contiene ningún grado medio.</p>
						</div>
					</xsl:otherwise>
				</xsl:choose>
			</div>
			<div class="contenedor">
				<h2>GRADO SUPERIOR</h2>
				<xsl:for-each select="elorrieta/familia[@id=$familia]/ciclo[tipo='Superior']">
					<a>
						<xsl:attribute name="href">
							info.php?id=<xsl:value-of select="@id"/>
						</xsl:attribute>
						<div class="superior">
							<h3>
								<xsl:value-of select="nombre"/>
							</h3>
						</div>
					</a>
				</xsl:for-each>
			</div>
		</div>	
	</xsl:template>
</xsl:stylesheet>
