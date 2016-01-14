.class public Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
.super Lcom/mediatek/simservs/client/SimservType;
.source "IncomingCommunicationBarring.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "incoming-communication-barring"


# instance fields
.field mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;


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
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 6

    .prologue
    .line 54
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "incoming-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 56
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "incoming-communication-barring"

    return-object v0
.end method

.method public getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 8
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 28
    const-string v0, "cp:ruleset"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 29
    .local v7, "ruleSetNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 31
    .local v6, "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "incoming-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 37
    .end local v6    # "nruleSetElement":Lorg/w3c/dom/Element;
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "incoming-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    goto :goto_0
.end method

.method public saveRuleSet()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "ruleXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContent(Ljava/lang/String;)V

    .line 51
    return-void
.end method
