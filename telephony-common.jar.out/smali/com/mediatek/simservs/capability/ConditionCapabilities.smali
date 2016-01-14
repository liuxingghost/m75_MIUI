.class public Lcom/mediatek/simservs/capability/ConditionCapabilities;
.super Lcom/mediatek/simservs/capability/ServiceCapabilities;
.source "ConditionCapabilities.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "serv-cap-conditions"

.field static final TAG_ANONYMOUS:Ljava/lang/String; = "serv-cap-anonymous"

.field static final TAG_BUSY:Ljava/lang/String; = "serv-cap-busy"

.field static final TAG_COMMUNICATION_DIVERTED:Ljava/lang/String; = "serv-cap-communication-diverted"

.field static final TAG_EXTERNAL_LIST:Ljava/lang/String; = "serv-cap-external-list"

.field static final TAG_IDENTITY:Ljava/lang/String; = "serv-cap-identity"

.field static final TAG_INTERNATIONAL:Ljava/lang/String; = "serv-cap-international"

.field static final TAG_INTERNATIONAL_EXHC:Ljava/lang/String; = "serv-cap-international-exHC"

.field static final TAG_MEDIA:Ljava/lang/String; = "serv-cap-media"

.field static final TAG_NOT_REACHABLE:Ljava/lang/String; = "serv-cap-not-reachable"

.field static final TAG_NOT_REGISTERED:Ljava/lang/String; = "serv-cap-not-registered"

.field static final TAG_NO_ANSWER:Ljava/lang/String; = "serv-cap-no-answer"

.field static final TAG_OTHER_IDENTITY:Ljava/lang/String; = "serv-cap-other-identity"

.field static final TAG_PRESENCE_STATUS:Ljava/lang/String; = "serv-cap-presence-status"

.field static final TAG_REQUEST_NAME:Ljava/lang/String; = "serv-cap-request-name"

.field static final TAG_ROAMING:Ljava/lang/String; = "serv-cap-roaming"

.field static final TAG_RULE_DEACTIVATED:Ljava/lang/String; = "serv-cap-rule-deactivated"

.field static final TAG_VALIDITY:Ljava/lang/String; = "serv-cap-validity"


# instance fields
.field public mAnonymousProvisioned:Z

.field public mCommunicationDivertedProvisioned:Z

.field public mExternalListProvisioned:Z

.field public mIdentityProvisioned:Z

.field public mInternationalProvisioned:Z

.field public mInternationalexHCProvisioned:Z

.field mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

.field public mOtherIdentityProvisioned:Z

.field public mPresenceStatusProvisioned:Z

.field public mRequestNameProvisioned:Z

.field public mRoamingProvisioned:Z

.field public mRuleDeactivatedProvisioned:Z

.field public mValidityProvisioned:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 33
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 34
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 35
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 36
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "nodes"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 33
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 34
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 35
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 36
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 57
    invoke-virtual {p0, p6}, Lcom/mediatek/simservs/capability/ConditionCapabilities;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getMediaConditions()Lcom/mediatek/simservs/capability/MediaConditions;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "serv-cap-conditions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 12
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v6, 0x0

    .line 62
    move-object v9, p1

    check-cast v9, Lorg/w3c/dom/Element;

    .line 64
    .local v9, "domElement":Lorg/w3c/dom/Element;
    const-string v0, "serv-cap-anonymous"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 65
    .local v8, "conditionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 67
    .local v7, "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 71
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_0
    const-string v0, "serv-cap-request-name"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 72
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 73
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 74
    .restart local v7    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 75
    .restart local v11    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 78
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_1
    const-string v0, "serv-cap-communication-diverted"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 79
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_2

    .line 80
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 81
    .restart local v7    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 82
    .restart local v11    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 85
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_2
    const-string v0, "serv-cap-external-list"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 86
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_3

    .line 87
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 88
    .restart local v7    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 89
    .restart local v11    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 92
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_3
    const-string v0, "serv-cap-identity"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 93
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_4

    .line 94
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 95
    .restart local v7    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 96
    .restart local v11    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 99
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_4
    const-string v0, "serv-cap-international"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 100
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_5

    .line 101
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 102
    .restart local v7    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 103
    .restart local v11    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 106
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_5
    const-string v0, "serv-cap-international-exHC"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 107
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_6

    .line 108
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 109
    .restart local v7    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 110
    .restart local v11    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 113
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_6
    const-string v0, "serv-cap-other-identity"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 114
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_7

    .line 115
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 116
    .restart local v7    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 117
    .restart local v11    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 120
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_7
    const-string v0, "serv-cap-presence-status"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 121
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_8

    .line 122
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 123
    .restart local v7    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .restart local v11    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 127
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_8
    const-string v0, "serv-cap-roaming"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 128
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_9

    .line 129
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 130
    .restart local v7    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 131
    .restart local v11    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 134
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_9
    const-string v0, "serv-cap-rule-deactivated"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 135
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_a

    .line 136
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 137
    .restart local v7    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 138
    .restart local v11    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 141
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_a
    const-string v0, "serv-cap-validity"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 142
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_b

    .line 143
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 144
    .restart local v7    # "conditionElement":Lorg/w3c/dom/Element;
    const-string v0, "provisioned"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 145
    .restart local v11    # "provisioned":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 148
    .end local v7    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v11    # "provisioned":Ljava/lang/String;
    :cond_b
    const-string v0, "serv-cap-media"

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 149
    .local v10, "mediassNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_c

    .line 150
    new-instance v0, Lcom/mediatek/simservs/capability/MediaConditions;

    iget-object v1, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "serv-cap-conditions"

    iget-object v3, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/simservs/capability/MediaConditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

    .line 154
    :cond_c
    return-void
.end method

.method public isAnonymousProvisioned()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    return v0
.end method

.method public isCommunicationDivertedProvisioned()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    return v0
.end method

.method public isExternalListProvisioned()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    return v0
.end method

.method public isIdentityProvisioned()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    return v0
.end method

.method public isInternationalProvisioned()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    return v0
.end method

.method public isInternationalexHCProvisioned()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    return v0
.end method

.method public isOtherIdentityProvisioned()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    return v0
.end method

.method public isPresenceStatusProvisioned()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    return v0
.end method

.method public isRequestNameProvisioned()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    return v0
.end method

.method public isRoamingProvisioned()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    return v0
.end method

.method public isRuleDeactivatedProvisioned()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    return v0
.end method

.method public isValidityProvisioned()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    return v0
.end method
