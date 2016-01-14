.class public Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
.super Lcom/mediatek/simservs/client/SimservType;
.source "TerminatingIdentityPresentationRestriction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;
    }
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "terminating-identity-presentation-restriction"


# instance fields
.field public mContainDefaultBehaviour:Z

.field public mDefaultBehaviour:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "xui"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 30
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "terminating-identity-presentation-restriction"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 9
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 34
    const-string v0, "default-behaviour"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 35
    .local v8, "defaultBehaviour":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 37
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 38
    .local v7, "defaultBehaviourElement":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;

    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "terminating-identity-presentation-restriction"

    iget-object v4, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;-><init>(Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;

    .line 46
    .end local v7    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;

    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "terminating-identity-presentation-restriction"

    iget-object v4, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;-><init>(Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;

    goto :goto_0
.end method

.method public isContainDefaultBehaviour()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    return v0
.end method

.method public isDefaultPresentationRestricted()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;->isPresentationRestricted()Z

    move-result v0

    return v0
.end method

.method public saveConfiguration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "serviceXml":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setContent(Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 57
    return-void
.end method

.method public setDefaultPresentationRestricted(Z)V
    .locals 2
    .param p1, "presentationRestricted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;

    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;->setPresentationRestricted(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "defaultBehaviourXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;->setContent(Ljava/lang/String;)V

    .line 100
    .end local v0    # "defaultBehaviourXml":Ljava/lang/String;
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->saveConfiguration()V

    goto :goto_0
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 60
    const/4 v6, 0x0

    .line 61
    .local v6, "root":Lorg/w3c/dom/Element;
    const/4 v7, 0x0

    .line 62
    .local v7, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 64
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 65
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 66
    .local v2, "document":Lorg/w3c/dom/Document;
    const-string v8, "terminating-identity-presentation-restriction"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 67
    invoke-interface {v2, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 68
    iget-object v8, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;

    invoke-virtual {v8, v2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction$DefaultBehaviour;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 69
    .local v1, "defaultElement":Lorg/w3c/dom/Element;
    invoke-interface {v6, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 70
    invoke-virtual {p0, v6}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 79
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "defaultElement":Lorg/w3c/dom/Element;
    .end local v2    # "document":Lorg/w3c/dom/Document;
    :goto_0
    return-object v7

    .line 71
    :catch_0
    move-exception v5

    .line 73
    .local v5, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v5    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 75
    .local v3, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v3    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v3

    .line 77
    .local v3, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0
.end method
