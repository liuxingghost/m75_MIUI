.class public Lcom/mediatek/simservs/client/policy/Conditions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Conditions.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:conditions"

.field static final TAG_BUSY:Ljava/lang/String; = "busy"

.field static final TAG_COMMUNICATION_DIVERTED:Ljava/lang/String; = "communication-diverted"

.field static final TAG_INTERNATIONAL:Ljava/lang/String; = "international"

.field static final TAG_INTERNATIONAL_EXHC:Ljava/lang/String; = "international-exHC"

.field static final TAG_MEDIA:Ljava/lang/String; = "media"

.field static final TAG_NOT_REACHABLE:Ljava/lang/String; = "not-reachable"

.field static final TAG_NOT_REGISTERED:Ljava/lang/String; = "not-registered"

.field static final TAG_NO_ANSWER:Ljava/lang/String; = "no-answer"

.field static final TAG_PRESENCE_STATUS:Ljava/lang/String; = "presence-status"

.field static final TAG_ROAMING:Ljava/lang/String; = "roaming"

.field static final TAG_RULE_DEACTIVATED:Ljava/lang/String; = "rule-deactivated"


# instance fields
.field public mComprehend_Busy:Z

.field public mComprehend_CommunicationDiverted:Z

.field public mComprehend_International:Z

.field public mComprehend_International_exHc:Z

.field public mComprehend_NoAnswer:Z

.field public mComprehend_NotReachable:Z

.field public mComprehend_NotRegistered:Z

.field public mComprehend_PresenceStatus:Z

.field public mComprehend_Roaming:Z

.field public mComprehend_RuleDeactivated:Z

.field public mMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    .line 33
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    .line 34
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    .line 35
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    .line 36
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International_exHc:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    .line 48
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
    const/4 v0, 0x0

    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    .line 33
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    .line 34
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    .line 35
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    .line 36
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International_exHc:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    .line 54
    invoke-virtual {p0, p6}, Lcom/mediatek/simservs/client/policy/Conditions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 55
    return-void
.end method


# virtual methods
.method public addBusy()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    .line 183
    return-void
.end method

.method public addCommunicationDiverted()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    .line 215
    return-void
.end method

.method public addInternational()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    .line 207
    return-void
.end method

.method public addInternationalExHc()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International_exHc:Z

    .line 211
    return-void
.end method

.method public addMedia(Ljava/lang/String;)V
    .locals 1
    .param p1, "media"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method public addNoAnswer()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    .line 187
    return-void
.end method

.method public addNotReachable()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    .line 191
    return-void
.end method

.method public addNotRegistered()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    .line 195
    return-void
.end method

.method public addPresenceStatus()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    .line 219
    return-void
.end method

.method public addRoaming()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    .line 199
    return-void
.end method

.method public addRuleDeactivated()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    .line 203
    return-void
.end method

.method public clearConditions()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    .line 273
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    .line 274
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    .line 275
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    .line 276
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    .line 277
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    .line 278
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    .line 279
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    .line 280
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    .line 281
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    return-void
.end method

.method public comprehendBusy()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    return v0
.end method

.method public comprehendCommunicationDiverted()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    return v0
.end method

.method public comprehendInternational()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    return v0
.end method

.method public comprehendInternationalExHc()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International_exHc:Z

    return v0
.end method

.method public comprehendNoAnswer()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    return v0
.end method

.method public comprehendNotReachable()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    return v0
.end method

.method public comprehendNotRegistered()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    return v0
.end method

.method public comprehendPresenceStatus()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    return v0
.end method

.method public comprehendRoaming()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    return v0
.end method

.method public comprehendRuleDeactivated()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    return v0
.end method

.method public getMedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "cp:conditions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v5, 0x1

    .line 64
    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 66
    .local v1, "domElement":Lorg/w3c/dom/Element;
    const-string v4, "busy"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 67
    .local v0, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_0

    .line 68
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    .line 70
    :cond_0
    const-string v4, "no-answer"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    .line 72
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    .line 74
    :cond_1
    const-string v4, "not-reachable"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_2

    .line 76
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    .line 78
    :cond_2
    const-string v4, "not-registered"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_3

    .line 80
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    .line 82
    :cond_3
    const-string v4, "roaming"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_4

    .line 84
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    .line 86
    :cond_4
    const-string v4, "rule-deactivated"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_5

    .line 88
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    .line 90
    :cond_5
    const-string v4, "international"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_6

    .line 92
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    .line 94
    :cond_6
    const-string v4, "international-exHC"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_7

    .line 96
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International_exHc:Z

    .line 98
    :cond_7
    const-string v4, "communication-diverted"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_8

    .line 100
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    .line 102
    :cond_8
    const-string v4, "presence-status"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_9

    .line 104
    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    .line 106
    :cond_9
    const-string v4, "media"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 107
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 109
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 110
    .local v3, "mediaElement":Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_a
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 115
    const-string v4, "cp:conditions"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 117
    .local v1, "conditionsElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    const-string v4, "busy"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 119
    .local v0, "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 122
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    const-string v4, "no-answer"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 124
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 127
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    const-string v4, "not-reachable"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 129
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 132
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    const-string v4, "not-registered"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 134
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 137
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 138
    const-string v4, "roaming"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 139
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 142
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    const-string v4, "rule-deactivated"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 144
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 147
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 148
    const-string v4, "international"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 149
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 152
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 153
    const-string v4, "international-exHC"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 154
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 157
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 158
    const-string v4, "communication-diverted"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 159
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 162
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 163
    const-string v4, "presence-status"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 164
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 167
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_9
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-eqz v4, :cond_a

    .line 168
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 169
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 170
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 172
    const-string v4, "media"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 173
    .local v3, "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 174
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 178
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "ruleElement":Lorg/w3c/dom/Element;
    :cond_a
    return-object v1
.end method
