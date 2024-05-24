<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>LIBRERIA</h2>
                <table border="1">
                    <tr bgcolor="a9f8ff">
                        <th>TITULO</th>
                        <th>AUTOR</th>
                        <th>FORMATO</th>
                        <th>PUBLICACIÓN</th>
                        <th>PRECIO</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <xsl:choose>
                            <xsl:when test="precio > 20">
                                <tr bgcolor="2f7800">
                                    <td><xsl:value-of select="titulo"></xsl:value-of></td>
                                    <td><xsl:value-of select="autor"></xsl:value-of></td>
                                    <td><xsl:value-of select="formato"></xsl:value-of></td>
                                    <td><xsl:value-of select="publicacion"></xsl:value-of></td>
                                    <td><xsl:value-of select="precio"></xsl:value-of></td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr bgcolor="#FFA500">
                                    <td><xsl:value-of select="titulo"></xsl:value-of></td>
                                    <td><xsl:value-of select="autor"></xsl:value-of></td>
                                    <td><xsl:value-of select="formato"></xsl:value-of></td>
                                    <td><xsl:value-of select="publicacion"></xsl:value-of></td>
                                    <td><xsl:value-of select="precio"></xsl:value-of></td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>