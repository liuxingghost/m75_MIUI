.class public Lcom/mediatek/simservs/client/policy/Actions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Actions.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:actions"

.field static final TAG_ALLOW:Ljava/lang/String; = "allow"


# instance fields
.field public mAllow:Z

.field public mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p6}, Lcom/mediatek/simservs/client/policy/Actions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "cp:actions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 10
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 40
    move-object v6, p1

    check-cast v6, Lorg/w3c/dom/Element;

    .line 41
    .local v6, "domElement":Lorg/w3c/dom/Element;
    const-string v0, "allow"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 42
    .local v7, "actionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 44
    .local v8, "allowElement":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 45
    .local v9, "allowed":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 48
    .end local v8    # "allowElement":Lorg/w3c/dom/Element;
    .end local v9    # "allowed":Ljava/lang/String;
    :cond_0
    const-string v0, "forward-to"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 49
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 50
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:actions"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    .line 53
    :cond_1
    return-void
.end method

.method public isAllow()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    return v0
.end method

.method public setAllow(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 71
    return-void
.end method

.method public setFowardTo(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "notifyCaller"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Actions;->mParentUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setTarget(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setNotifyCaller(Z)V

    .line 84
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 56
    const-string v3, "cp:actions"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 58
    .local v0, "actionsElement":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/policy/ForwardTo;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 60
    .local v2, "forwardToElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 66
    .end local v2    # "forwardToElement":Lorg/w3c/dom/Element;
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const-string v3, "allow"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 63
    .local v1, "allowElement":Lorg/w3c/dom/Element;
    iget-boolean v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    if-eqz v3, :cond_1

    const-string v3, "true"

    :goto_1
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 64
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 63
    :cond_1
    const-string v3, "false"

    goto :goto_1
.end method
