.class public abstract Lcom/mediatek/simservs/capability/CapabilitiesType;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "CapabilitiesType.java"


# static fields
.field static final ATT_ACTIVE:Ljava/lang/String; = "active"


# instance fields
.field public mActived:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/CapabilitiesType;->mActived:Z

    .line 30
    invoke-direct {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->loadConfiguration()V

    .line 31
    return-void
.end method

.method private loadConfiguration()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getContent()Ljava/lang/String;

    move-result-object v9

    .line 41
    .local v9, "xmlContent":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 42
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6}, Lorg/xml/sax/InputSource;-><init>()V

    .line 43
    .local v6, "is":Lorg/xml/sax/InputSource;
    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 46
    :try_start_0
    invoke-virtual {v2, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 52
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 54
    .local v1, "currentNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_0

    .line 55
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 56
    .local v0, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 57
    .local v7, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-lez v10, :cond_0

    .line 58
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 59
    invoke-interface {v7, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 60
    .local v8, "node":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "active"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 61
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/mediatek/simservs/capability/CapabilitiesType;->mActived:Z

    .line 67
    .end local v0    # "activeElement":Lorg/w3c/dom/Element;
    .end local v5    # "i":I
    .end local v7    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "node":Lorg/w3c/dom/Node;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/mediatek/simservs/capability/CapabilitiesType;->initServiceInstance(Lorg/w3c/dom/Document;)V

    .line 68
    return-void

    .line 47
    .end local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v4

    .line 48
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    new-instance v10, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v11, 0x1f4

    invoke-direct {v10, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v10

    .line 58
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "activeElement":Lorg/w3c/dom/Element;
    .restart local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i":I
    .restart local v7    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v8    # "node":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract initServiceInstance(Lorg/w3c/dom/Document;)V
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 90
    return-void
.end method

.method public isActive()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v1, "active"

    invoke-virtual {p0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getByAttrName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 73
    const/4 v1, 0x1

    .line 75
    :goto_0
    return v1

    :cond_0
    const-string v1, "active"

    invoke-virtual {p0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getByAttrName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    const-string v0, "active"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v0, "active"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
