.class public Lcom/mediatek/simservs/client/policy/RuleSet;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "RuleSet.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:ruleset"


# instance fields
.field public mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
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
    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 32
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
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p6}, Lcom/mediatek/simservs/client/policy/RuleSet;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 39
    return-void
.end method

.method private unfoldRules(Lcom/mediatek/simservs/client/policy/Rule;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 12
    .param p1, "aRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "media"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:ruleset"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v6}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v6}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 90
    .local v0, "ruleBusy":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 91
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 92
    if-eqz p3, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v0    # "ruleBusy":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 97
    new-instance v1, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v3, "cp:ruleset"

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v6}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v6}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v6

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 99
    .local v1, "ruleNotReachable":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 100
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 101
    if-eqz p3, :cond_2

    .line 102
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 103
    :cond_2
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v1    # "ruleNotReachable":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 106
    new-instance v2, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v4, "cp:ruleset"

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v6}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v7}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v7

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 108
    .local v2, "ruleInternational":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 109
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 110
    if-eqz p3, :cond_4

    .line 111
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 112
    :cond_4
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v2    # "ruleInternational":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_5
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 115
    new-instance v3, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v5, "cp:ruleset"

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v7}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v8}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v8

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 117
    .local v3, "ruleInternationalExHc":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 118
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 119
    if-eqz p3, :cond_6

    .line 120
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 121
    :cond_6
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v3    # "ruleInternationalExHc":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_7
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 125
    new-instance v4, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v6, "cp:ruleset"

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v8}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v9}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v9

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 127
    .local v4, "ruleNoAnswer":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 128
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 129
    if-eqz p3, :cond_8

    .line 130
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 131
    :cond_8
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v4    # "ruleNoAnswer":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 134
    new-instance v5, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v7, "cp:ruleset"

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v9}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v10}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v10

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 136
    .local v5, "ruleRoaming":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 137
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 138
    if-eqz p3, :cond_a

    .line 139
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 140
    :cond_a
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v5    # "ruleRoaming":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_b
    return-void
.end method


# virtual methods
.method public clearRules()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    return-void
.end method

.method public createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 152
    :cond_0
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:ruleset"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v0, "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "cp:ruleset"

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 10
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 49
    move-object v7, p1

    check-cast v7, Lorg/w3c/dom/Element;

    .line 50
    .local v7, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "cp:rule"

    invoke-interface {v7, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 51
    .local v8, "domNodes":Lorg/w3c/dom/NodeList;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 52
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 53
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 54
    .local v6, "element":Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:ruleset"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mCredentials:Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 56
    .local v0, "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    :cond_0
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 167
    const/4 v6, 0x0

    .line 168
    .local v6, "root":Lorg/w3c/dom/Element;
    const/4 v9, 0x0

    .line 169
    .local v9, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 171
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 172
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 173
    .local v1, "document":Lorg/w3c/dom/Document;
    const-string v10, "cp:ruleset"

    invoke-interface {v1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 174
    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 176
    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-eqz v10, :cond_0

    .line 177
    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 178
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 179
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/simservs/client/policy/Rule;

    .line 180
    .local v7, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v7, v1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 181
    .local v8, "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 185
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v7    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v8    # "ruleElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v5

    .line 187
    .local v5, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 193
    .end local v5    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    return-object v9

    .line 184
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v6}, Lcom/mediatek/simservs/client/policy/RuleSet;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    goto :goto_1

    .line 188
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v2

    .line 189
    .local v2, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 190
    .end local v2    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2
    move-exception v2

    .line 191
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_1
.end method
