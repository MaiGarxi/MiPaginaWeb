<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>
	<xsl:param name="modulo"></xsl:param>
	<xsl:template match="/">
		<nav class="skew-menu">
			<ul  class="tabs-nav">
				<li><a href="index.php">Inicio</a></li>
				<li><a href="familias.php">Familias Profesionales</a></li>				
				<li><a><xsl:attribute name="href">modulo.php?id=<xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/../@id"/></xsl:attribute>Ciclos</a></li>
				<li><a><xsl:attribute name="href">info.php?id=<xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/@id"/></xsl:attribute>MENU DE INFORMACIÓN</a></li>
				<li id="hover"><a><xsl:attribute name="href"></xsl:attribute>TRABAJO</a></li>
				<li><a href="mapa.php">Plano</a></li>
			</ul>
		</nav>
		<h2><xsl:value-of select="//familia/ciclo[@id=$modulo]/nombre"/></h2>
		<div id="main">
			<div id="primer_div">
				<h3>TÍTULO OBTENIDO</h3>
				<p><xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/titulacion"/></p>
				<h3>COMPETENCIAS DEL MODULO</h3>
				<p><xsl:value-of select="elorrieta/familia/ciclo[@id=$modulo]/competencia"/></p>
			</div>
			<div id="segundo_div">
				<h3>TRABAJOS QUE SE PUEDEN REALIZAR UNA VEZ ACABADO EL CICLO</h3>
				<ul>
					<xsl:for-each select="elorrieta/familia/ciclo[@id=$modulo]/trabajo">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ul>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
