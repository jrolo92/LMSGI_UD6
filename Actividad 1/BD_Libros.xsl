<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Listado de Libros</title>
            </head>
            <body>
                <h1>Listado de Libros</h1>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Código Libro</th>
                            <th>Título</th>
                            <th>Editorial</th>
                            <th>Edición</th>
                            <th>ISBN</th>
                            <th>Número de Páginas</th>
                            <th>Autor</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="Libros/libro">
                            <tr>
                                <td><xsl:value-of select="Cod_Libro"/></td>
                                <td><xsl:value-of select="Titulo"/></td>
                                <td><xsl:value-of select="Editorial"/></td>
                                <td><xsl:value-of select="Edicion"/></td>
                                <td><xsl:value-of select="ISBN"/></td>
                                <td><xsl:value-of select="NumPaginas"/></td>
                                <td>
                                    <xsl:for-each select="Autores/autor">
                                        <xsl:value-of select="Nombre"/>
                                        <xsl:text> </xsl:text> 
                                        <xsl:value-of select="Apellidos"/>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
