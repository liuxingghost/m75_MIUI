.class public Lcom/mediatek/simservs/capability/DiversionServiceCapability;
.super Lcom/mediatek/simservs/capability/CapabilitiesType;
.source "DiversionServiceCapability.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-diversion-serv-cap"


# instance fields
.field mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

.field mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
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
.method public getActionCapabilities()Lcom/mediatek/simservs/capability/ActionCapabilities;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

    return-object v0
.end method

.method public getConditionCapabilities()Lcom/mediatek/simservs/capability/ConditionCapabilities;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "communication-diversion-serv-cap"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 17
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 40
    const-string v1, "serv-cap-actions"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 41
    .local v15, "actionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    .line 42
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 43
    .local v7, "actionNode":Lorg/w3c/dom/Element;
    new-instance v1, Lcom/mediatek/simservs/capability/ActionCapabilities;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "communication-diversion-serv-cap"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v6}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/simservs/capability/ActionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

    .line 47
    .end local v7    # "actionNode":Lorg/w3c/dom/Element;
    :cond_0
    const-string v1, "serv-cap-conditions"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 48
    .local v16, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    .line 49
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 50
    .local v14, "conditionNode":Lorg/w3c/dom/Element;
    new-instance v8, Lcom/mediatek/simservs/capability/ConditionCapabilities;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v10, "communication-diversion-serv-cap"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v8 .. v14}, Lcom/mediatek/simservs/capability/ConditionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    .line 54
    .end local v14    # "conditionNode":Lorg/w3c/dom/Element;
    :cond_1
    return-void
.end method
