<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<link rel="stylesheet" href="style/style.css"/>
	
		<!--[if !IE]><!-->
<style>
	@media
	only screen and (max-width: 760px),
	(min-device-width: 768px) and (max-device-width: 1024px)  {

		/* Force table to not be like tables anymore */
		td, th {
			font-size:80%;
		}
	}
</style>
	<!--<![endif]-->
	
  </head>
  <body>
  <div id="page-wrap">
  <h2>DLNA History</h2>
    <table>
      <thead>
      <tr>
        <th>Date</th>
        <th>Title</th>
        <th>Ratio</th>
        <th>Duration</th>
      </tr>
      </thead>
      <tbody>
      <xsl:for-each select="History/Entity">
      <xsl:sort select="position()" data-type="number" order="descending"/>
      <tr>
      	<td data-label="Date"><xsl:value-of select="date"/></td>
        <td data-label="Title"><xsl:value-of select="translate(file, '.', ' ')"/></td>
        <td data-label="Ratio"><xsl:value-of select="ratio"/></td>
        <td data-label="Duration"><xsl:value-of select="duration"/></td>
      </tr>
      </xsl:for-each>
      </tbody>
    </table>
    </div>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
