.class public Lcom/mediatek/simservs/capability/BarringServiceCapability;
.super Lcom/mediatek/simservs/capability/CapabilitiesType;
.source "BarringServiceCapability.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-barring-serv-cap"


# instance fields
.field mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/capability/CapabilitiesType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getConditionCapabilities()Lcom/mediatek/simservs/capability/ConditionCapabilities;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "communication-barring-serv-cap"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 8
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 36
    const-string v0, "serv-cap-conditions"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 37
    .local v7, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 39
    .local v6, "conditionNode":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/capability/ConditionCapabilities;

    iget-object v1, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "communication-barring-serv-cap"

    iget-object v3, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/simservs/capability/ConditionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    .line 43
    .end local v6    # "conditionNode":Lorg/w3c/dom/Element;
    :cond_0
    return-void
.end method
