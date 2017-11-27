<?xml version="1.0"?>
<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:json='http://james.newtonking.com/projects/json'>
  <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
  <xsl:template match="AML">
    <xsl:element name="root">
      <xsl:apply-templates select="./Item[1]"/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="AML/Item[1]">
    <xsl:apply-templates select="./*[not(name()='Relationships')]"/>
    <xsl:element name="Parts">
      <xsl:attribute name="Array" namespace="json" value="true" />
      <xsl:apply-templates select="Relationships/Item[@alias='PartBOM']"/>
    </xsl:element>
    <xsl:element name="CADs">
      <xsl:attribute name="Array" namespace="json" value="true" />
      <xsl:apply-templates select="Relationships/Item[@alias='PartCAD']"/>
    </xsl:element>
    <xsl:element name="Documents">
      <xsl:attribute name="Array" namespace="json" value="true" />
      <xsl:apply-templates select="Relationships/Item[@alias='PartDocument']"/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="Relationships/Item">
    <xsl:variable name="x" select="@alias"/>
    <xsl:element name="{$x}">
      <xsl:apply-templates select="./*[not(name()='Relationships')]"/>
      <xsl:choose>
        <xsl:when test="self::node()[Relationships]">
          <xsl:element name="related">
            <xsl:apply-templates select="./Relationships/Item"/>
          </xsl:element>
        </xsl:when>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  <xsl:template match="Item/*[not(name()='Relationships')]">
    <xsl:variable name="x" select="name()"/>
    <xsl:variable name="val" select="current()"/>
    <xsl:variable name="itype" select="../@alias"/>
    <xsl:variable name="isnull" select="./@is_null"/>
    <xsl:variable name="base">
      <xsl:text>http://test.com/</xsl:text>
    </xsl:variable>
    <xsl:variable name="slash">
      <xsl:text>/</xsl:text>
    </xsl:variable>
    <xsl:variable name="iden">
      <xsl:text>identity</xsl:text>
    </xsl:variable>
    <xsl:variable name="user">
      <xsl:text>user</xsl:text>
    </xsl:variable>
    <xsl:choose>
      <xsl:when test="$isnull='1'">
        <xsl:element name="{$x}">
          <xsl:text></xsl:text>
        </xsl:element>
      </xsl:when>
      <xsl:when test="$x='id'">
        <xsl:element name="id">
          <xsl:value-of select="concat($base,$itype,$slash,$val)" />
        </xsl:element>
        <xsl:element name="aras_id">
          <xsl:value-of select="$val" />
        </xsl:element>
      </xsl:when>
      <xsl:when test="$x='managed_by_id' or $x='owned_by_id'">
        <xsl:element name="{$x}">
          <xsl:value-of select="concat($base,$iden,$slash,$val)" />
        </xsl:element>
      </xsl:when>
      <xsl:when test="$x='created_by_id'">
        <xsl:element name="{$x}">
          <xsl:value-of select="concat($base,$user,$slash,$val)" />
        </xsl:element>
      </xsl:when>
      <xsl:otherwise>
        <xsl:element name="{$x}">
          <xsl:value-of select="$val" />
        </xsl:element>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
