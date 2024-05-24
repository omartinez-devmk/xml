<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>LIBRERIA</h2>
                <table border="1">
                    <tr bgcolor="a9f8ff">
                        <th>COSTE TOTAL</th>
                    </tr>
                    <xsl:variable name="total">
                        <xsl:value-of select="sum(libreria/libro/precio)"/>
                    </xsl:variable>
                    <tr>
                        <td><xsl:value-of select="$total"></xsl:value-of></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>