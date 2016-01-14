.class public Lcom/mediatek/simservs/client/policy/Rule;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Rule.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:rule"


# instance fields
.field public mActions:Lcom/mediatek/simservs/client/policy/Actions;

.field public mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

.field public mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "none"

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "none"

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p6}, Lcom/mediatek/simservs/client/policy/Rule;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 31
    return-void
.end method


# virtual methods
.method public createActions()Lcom/mediatek/simservs/client/policy/Actions;
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    return-object v0
.end method

.method public createConditions()Lcom/mediatek/simservs/client/policy/Conditions;
    .locals 6

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    return-object v0
.end method

.method public getActions()Lcom/mediatek/simservs/client/policy/Actions;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    return-object v0
.end method

.method public getConditions()Lcom/mediatek/simservs/client/policy/Conditions;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "cp:rule"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 11
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v10, 0x0

    .line 40
    move-object v9, p1

    check-cast v9, Lorg/w3c/dom/Element;

    .line 41
    .local v9, "domElement":Lorg/w3c/dom/Element;
    const-string v0, "id"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 42
    const-string v0, "cp:conditions"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 43
    .local v8, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 44
    new-instance v0, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    .line 49
    :cond_0
    const-string v0, "cp:actions"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 50
    .local v7, "actionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 51
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    .line 55
    :cond_1
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v3, "cp:rule"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 59
    .local v2, "ruleElement":Lorg/w3c/dom/Element;
    const-string v3, "id"

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/policy/Conditions;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 63
    .local v1, "conditionsElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 66
    .end local v1    # "conditionsElement":Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    if-eqz v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/policy/Actions;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 68
    .local v0, "actionsElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 70
    .end local v0    # "actionsElement":Lorg/w3c/dom/Element;
    :cond_1
    return-object v2
.end method
