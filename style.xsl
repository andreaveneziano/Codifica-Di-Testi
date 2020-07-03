<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml" xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
   <xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
   <xsl:template match="/">
      <html>
         <head>
            <title>Le cartoline di Giovannino ad Oliva</title>
            <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet"/>
            <link href="css.css" rel="stylesheet" type="text/css"/>
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"/>
            <script src= "galleria.js"/> 
            <meta charset="UTF-8"/>
         </head>
         <header>
            <!-- menu di navigazione -->
            <input type="checkbox" id="chec">
            <label for="chec">
               <img id="imgmenu" src="immagini/menu.png"> </img>
            </label>	
         </input>
            <nav>
               <ul>
                  <li>
                     <a href="#menu1">Cartolina 1:  <xsl:value-of select="//tei:title[@xml:id='title1']"/> </a>
                  </li>
                  <li>
                     <a href="#menu2">Cartolina 2: <xsl:value-of select="//tei:title[@xml:id='title2']"/></a>
                  </li>
                  <li>
                     <a href="#galleria"> Photogallery </a>
                  </li>
                  <li>
                     <a href="#footer"> <xsl:value-of select="//tei:title[@xml:id='titprinc']"/></a>
                  </li>
               </ul>
            </nav>
            <!-- Titolo pagina -->
                <p>Le cartoline di Giovannino ad Oliva</p>
         </header> 
         <body>
            <div id="galleria">
               <h2> Photogallery </h2>
               <input id="indietro" type="button" value="&lt;"/>
                  <img id="foto"/>  	
                  
                  <input id="avanti" type="button" value="&gt;"/> 
            </div>		
            <!-- div per posizionare il menu -->
            <div id="menu1"></div>
            <!-- Contenitore cartolina 1 -->
            <a id = "ps1"> Cartolina 90 </a> 
            <xsl:element name="div2">
               <xsl:attribute name="id">cartolina1</xsl:attribute>
               <div id="contenitore1">
                  <xsl:apply-templates select="//tei:sourceDesc[@xml:id = 'sourceDesc1']"/>
                  <div id="contenitoreimg1">
                     <xsl:apply-templates select="//tei:figure[@xml:id = 'figure1']"/>
                     <xsl:apply-templates select="//tei:surface[@xml:id = 'fronte1']"/>
                     
                     <!-- Immagine retro -->
                     <img usemap="#retro1">
                        <xsl:attribute name="src">
                           <xsl:value-of select="//tei:graphic[@xml:id = 'Retro1']/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                           <xsl:value-of select="//tei:graphic[@xml:id = 'Retro1']/@xml:id"/>
                        </xsl:attribute>
                     </img>
                     <map name = "retro1">
                        <xsl:for-each select = "//tei:surface[@n = 'R1']//tei:zone">
                           <xsl:variable name = "ux">
                              <xsl:value-of select = "current()/@ulx"/>
                           </xsl:variable>
                           <xsl:variable name = "uy">
                              <xsl:value-of select = "current()/@uly"/>
                           </xsl:variable>
                           <xsl:variable name = "lx">
                              <xsl:value-of select = "current()/@lrx"/>
                           </xsl:variable>
                           <xsl:variable name = "ly">
                              <xsl:value-of select = "current()/@lry"/>
                           </xsl:variable>
                           <area shape = "rect">
                              <xsl:attribute name = "coords">
                                 <xsl:value-of select = "$ux"/>,<xsl:value-of select = "$uy"/>,<xsl:value-of select = "$lx"/>,<xsl:value-of select = "$ly"/>
                              </xsl:attribute>
                              <xsl:attribute name = "href">
                                 <xsl:text>#</xsl:text><xsl:value-of select = "current()/@xml:id"/>
                              </xsl:attribute>
                           </area>
                        </xsl:for-each>
                     </map>
                  </div>
                  <xsl:apply-templates select="//tei:div[@xml:id = 'divTxt1']"/>
               </div>
            </xsl:element>
            <!-- div per posizionare il menu -->
            <div id="menu2"></div>
            <br/>
            <br/>
            <!-- Contenitore cartolina 2 -->
            <a id = "ps2">Cartolina 136</a>
            <xsl:element name="div3">
               <xsl:attribute name="id">cartolina2</xsl:attribute>
               <div id="contenitore2">
                  <xsl:apply-templates select="//tei:sourceDesc[@xml:id = 'sourceDesc2']"/>
                  <div id="contenitoreimg1">
                     <xsl:apply-templates select="//tei:figure[@xml:id = 'figure2']"/>
                     <xsl:apply-templates select="//tei:surface[@xml:id = 'fronte2']"/>
                     <!-- Immagine retro-->
                     <img usemap="#retro2">
                        <xsl:attribute name="src">
                           <xsl:value-of select="//tei:graphic[@xml:id = 'Retro2']/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                           <xsl:value-of select="//tei:graphic[@xml:id = 'Retro2']/@xml:id"/>
                        </xsl:attribute>
                     </img>
                     <map name = "retro2">
                        <xsl:for-each select = "//tei:surface[@n = 'R2']//tei:zone">
                           <xsl:variable name = "ux">
                              <xsl:value-of select = "current()/@ulx"/>
                           </xsl:variable>
                           <xsl:variable name = "uy">
                              <xsl:value-of select = "current()/@uly"/>
                           </xsl:variable>
                           <xsl:variable name = "lx">
                              <xsl:value-of select = "current()/@lrx"/>
                           </xsl:variable>
                           <xsl:variable name = "ly">
                              <xsl:value-of select = "current()/@lry"/>
                           </xsl:variable>
                           <area shape = "rect">
                              <xsl:attribute name = "coords">
                                 <xsl:value-of select = "$ux"/>,<xsl:value-of select = "$uy"/>,<xsl:value-of select = "$lx"/>,<xsl:value-of select = "$ly"/>
                              </xsl:attribute>
                              <xsl:attribute name = "href">
                                 <xsl:text>#</xsl:text><xsl:value-of select = "current()/@xml:id"/>
                              </xsl:attribute>
                           </area>
                        </xsl:for-each>
                     </map>
                  </div>
                  <xsl:apply-templates select="//tei:div[@xml:id = 'divTxt2']"/>
               </div>
            </xsl:element>
         <!-- div per posizionare il footer -->
         <div id="footer">
         <xsl:element name="div1">
            <xsl:attribute name="id">Informazioni</xsl:attribute>
            <xsl:apply-templates select="//tei:title[@xml:id = 'titprinc']"/>
            <xsl:apply-templates select="//tei:respStmt[@xml:id = 'resp1' or @xml:id = 'resp2']"/>
            <xsl:apply-templates select="//tei:respStmt[@xml:id = 'resp3' or @xml:id = 'resp4' or @xml:id = 'resp5' or @xml:id = 'resp6']"/>
         </xsl:element> 
         </div>
         <div id="pubbli">
         <xsl:element name="div2">
            <h2> Informazioni sulla pubblicazione </h2>
            <xsl:apply-templates select="//tei:edition[@xml:id = 'edit']"/>
            <xsl:apply-templates select="//tei:publicationStmt[@xml:id = 'pub']"/>
         </xsl:element>
          </div> 
         <div id="credits">
            <xsl:element name="none1">
               <h2> Crediti </h2>
               <p> Progetto realizzato per il corso di Codifica di Testi a.a. 2019/2020</p>
            </xsl:element>   
         </div>
            <button id="topBtn"> <i class="fa fa-arrow-circle-up"> </i></button>   
            <script type="text/javascript" src="topBtn.js"> </script>
         </body>    
      </html>
   </xsl:template>
   <xsl:template match="tei:surface[@xml:id = 'fronte1' or @xml:id = 'fronte2']/tei:graphic">
      <img id="dimFronte" src="{@url}"/>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:sourceDesc[@xml:id = 'sourceDesc1' or @xml:id = 'sourceDesc2']">
      <div id="sourceDescStile">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match = "tei:additions">
      <span>
         <xsl:attribute name="id">
            <xsl:value-of select="translate(current()/@facs,'#','')"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </span>
   </xsl:template>
   <xsl:template match="tei:div">
      <p>
         <xsl:apply-templates/>
      </p>
   </xsl:template>
   <xsl:template match="tei:availability">
       <b> 
        <xsl:text> Copyright:</xsl:text>     
      </b>  
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:distributor"> 
      <br> </br>
         <b>  
            <xsl:text> Distributor:</xsl:text>        
         </b>
      <xsl:apply-templates/>  
   </xsl:template>
   <xsl:template match="tei:address[@xml:id = 'lab']">
         <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:lb">
      <br/>
   </xsl:template>
   <xsl:template match="tei:title">
      <p class="title">
         <xsl:apply-templates/>
      </p>
   </xsl:template>

   <xsl:template match="tei:name">
      <xsl:choose>
         <xsl:when test="@xml:id = 'GP'">
            <xsl:apply-templates/>
            <xsl:text>,</xsl:text>
         </xsl:when>
         <xsl:when test="@xml:id = 'AV'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id = 'SP'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id = 'XY1'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id = 'XY2'">
            <xsl:apply-templates/>
            <xsl:text>,</xsl:text>
         </xsl:when>
         <xsl:when test="@xml:id = 'XZ1'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id = 'ES'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id = 'ER'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:apply-templates/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="tei:edition">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:pubPlace">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:publisher">
      <b>
         <xsl:text>Pubblicazione: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <xsl:text>,</xsl:text>
   </xsl:template>
   <xsl:template match="tei:date">
      <xsl:choose>
         <xsl:when test="@when = '2018'">
            <br/>
            <b>
               <xsl:text>Anno di compilazione: </xsl:text>
            </b>
            <xsl:apply-templates/>
         </xsl:when>
         <xsl:when test="@when = '1913' or @when = '1915'">
            <b>
               <xsl:text>Anno: </xsl:text>
            </b>
            <xsl:apply-templates/>
         </xsl:when>
         <xsl:when test="@when = '2020'">
            <b>
               <xsl:apply-templates/>
            </b>
         </xsl:when>
         <xsl:otherwise>
            <xsl:apply-templates/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="tei:publicationStmt">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:note[@xml:id = 'cart1']">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:bibl">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:date[@xml:id = 'date1' or @xml:id = 'date2']">
      <b>
         <xsl:text>Data: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:pubPlace[@xml:id = 'pubPlace1' or @xml:id = 'pubPlace2']">
      <b>
         <xsl:text>Luogo: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:repository">
      <b>
         <xsl:text>Deposito: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:summary">
      <b>
         <xsl:text>Tipo: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:idno">
      <b>
         <xsl:text>Codice identificativo: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:textLang">
      <b>
         <xsl:text>Lingua: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:objectType">
      <b>
         <xsl:text>Oggetto: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:material">
      <b>
         <xsl:text>Materiale: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:dimensions">
      <b>
         <xsl:text>Dimensioni: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:height">
      <xsl:apply-templates/>
      <xsl:text>cm x</xsl:text>
   </xsl:template>
   <xsl:template match="tei:width">
      <xsl:apply-templates/>
      <xsl:text>cm</xsl:text>
   </xsl:template>
   <xsl:template match="tei:stamp">
      <b>
         <xsl:text>Timbro: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:stamp[@type = 'postmark']">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:stamp[@type = 'postage']">
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:condition">
      <b>
         <xsl:text>Conservazone: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:support">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:physDesc">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:listPerson">
      <b>
         <xsl:text>Persone nominate:</xsl:text>
      </b>
      <br/>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:person">
      <li>
         <xsl:apply-templates/>
      </li>
   </xsl:template>
   <xsl:template match="tei:listPlace">
      <b>
         <xsl:text>Luoghi nominati:</xsl:text>
      </b>
      <br/>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:place">
      <li>
         <xsl:apply-templates/>
      </li>
   </xsl:template>
   <xsl:template match="tei:listOrg">
      <b>
         <xsl:text>Organizzazioni: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:sex">
      <xsl:text>Sesso: </xsl:text>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:note">
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:settlement">
      <b>
         <xsl:text>Città: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:country[@key = 'N']">
      <xsl:apply-templates/>
      <xsl:text>)</xsl:text>
   </xsl:template>
   <xsl:template match="tei:resp">
      <b>
         <xsl:apply-templates/>
         <xsl:text>:</xsl:text>
      </b>
   </xsl:template>
   <xsl:template match="tei:district[@type = 'comune']">
      <xsl:text>(comune di </xsl:text>
      <xsl:apply-templates/>
      <xsl:text>,</xsl:text>
   </xsl:template>
   <xsl:template match="tei:district[@type = 'provincia']">
      <xsl:apply-templates/>
      <xsl:text>,</xsl:text>
   </xsl:template>
   <xsl:template match="tei:country">
      <b>
         <xsl:text>Paese: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:figure">
      <div id="imgDesc">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:author">
      <b>
         <xsl:text>Autore: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:author[@xml:id = 'Giovannino']">
      <b>
         <xsl:text>Autore: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id = 'divTxt1']">
      <div id="txt1">
         <xsl:apply-templates/>
      </div>
      <br/>
   </xsl:template>
   <!---TEMPLATE PER LA MAP1-->
   <xsl:template match = "tei:p[@xml:id = 'corpo1']//tei:w">
      <span>
         <xsl:attribute name="id">
            <xsl:value-of select = "translate(current()/@facs,'#','')"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </span>
   </xsl:template>  
   
   <xsl:template match = "tei:div[@xml:id = 'divTxt1']//tei:p ">
      <span>
         <xsl:attribute name="id">
            <xsl:value-of select = "translate(current()/@facs,'#','')"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </span>
   </xsl:template>
   <xsl:template match = "tei:stamp[@xml:id ='stamp1']">
      <span>
         <xsl:attribute name="id">
            <xsl:value-of select = "translate(current()/@facs,'#','')"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </span>
   </xsl:template>
   <xsl:template match = "tei:stamp[@xml:id ='fr1']">
      <span>
         <xsl:attribute name="id">
            <xsl:value-of select = "translate(current()/@facs,'#','')"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </span>
   </xsl:template>
   <!---TEMPLATE PER LA MAP2-->
   <xsl:template match = "tei:div[@xml:id = 'divTxt2']//tei:p ">
      <span>
         <xsl:attribute name="id">
            <xsl:value-of select = "translate(current()/@facs,'#','')"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </span>
   </xsl:template>
   <xsl:template match = "tei:p[@xml:id = 'corpo2']//tei:s">
      <span>
         <xsl:attribute name="id">
            <xsl:value-of select = "translate(current()/@facs,'#','')"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </span>
   </xsl:template>  
   <xsl:template match = "tei:stamp[@xml:id ='stamp2']">
      <span>
         <xsl:attribute name="id">
            <xsl:value-of select = "translate(current()/@facs,'#','')"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </span>
   </xsl:template>
   <xsl:template match = "tei:stamp[@xml:id ='fr2']">
      <span>
         <xsl:attribute name="id">
            <xsl:value-of select = "translate(current()/@facs,'#','')"/>
         </xsl:attribute>
         <xsl:apply-templates/>
      </span>
   </xsl:template>
   <!--TEMPLATE GENERICI-->
   <xsl:template match="tei:div[@xml:id = 'divTxt2']">
      <div id="txt2">
         <xsl:apply-templates/>
      </div>
      <br/>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id = 'timbri1' or @xml:id = 'timbri2']">
      <div id="timbri">
         <xsl:text> Timbri: </xsl:text>
         <br/>
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:p[@xml:id = 'corpo1' or @xml:id = 'corpo2']">
      <i>
         <xsl:apply-templates/>
      </i>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id = 'testo1' or @xml:id = 'testo2']">
      <div id="testo">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id = 'indDest1' or @xml:id = 'indDest2']">
      <div id="indirizzo">
         <xsl:apply-templates/>
      </div>
   </xsl:template><xsl:template match="tei:TEI[@xml:id = 'tei1' or @xml:id = 'tei2']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:teiHeader[@xml:id = 'teiHeader']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
      <br/>
   </xsl:template>
   <xsl:template match="tei:profileDesc">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:notesStmt[@xml:id = 'noteStmt1' or @xml:id = 'noteStmt2']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:titleStmt[@xml:id = 'titleStmt1' or @xml:id = 'titleStmt2']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:editionStmt[@xml:id = 'editionStmt1' or @xml:id = 'editionStmt2']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:publicationStmt[@xml:id = 'publicationStmt1' or @xml:id = 'publicationStmt2']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:expan">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:p[@xml:id = 'address1' or @xml:id = 'address2']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:orig">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:langUsage">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
</xsl:stylesheet>