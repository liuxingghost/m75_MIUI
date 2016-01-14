.class public Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction$DefaultBehaviour;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "OriginatingIdentityPresentationRestriction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultBehaviour"
.end annotation


# static fields
.field public static final DEFAULT_BEHAVIOUR_PRESENTATION_NOT_RESTRICTED:Ljava/lang/String; = "presentation-not-restricted"

.field public static final DEFAULT_BEHAVIOUR_PRESENTATION_RESTRICTED:Ljava/lang/String; = "presentation-restricted"

.field public static final NODE_NAME:Ljava/lang/String; = "default-behaviour"


# instance fields
.field public mPresentationRestricted:Z

.field final synthetic this$0:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;


# direct methods
.method public constructor <init>(Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction$DefaultBehaviour;->this$0:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 7
    .param p2, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction$DefaultBehaviour;->this$0:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-interface {p7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "content":Ljava/lang/String;
    const-string v0, "presentation-restricted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction$DefaultBehaviour;->mPresentationRestricted:Z

    .line 123
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "default-behaviour"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 127
    return-void
.end method

.method public isPresentationRestricted()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction$DefaultBehaviour;->mPresentationRestricted:Z

    return v0
.end method

.method public setPresentationRestricted(Z)V
    .locals 0
    .param p1, "presentationRestricted"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction$DefaultBehaviour;->mPresentationRestricted:Z

    .line 159
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 144
    const-string v1, "default-behaviour"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 145
    .local v0, "defaultElement":Lorg/w3c/dom/Element;
    iget-boolean v1, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction$DefaultBehaviour;->mPresentationRestricted:Z

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "presentation-restricted"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const-string v1, "presentation-not-restricted"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction$DefaultBehaviour;->mPresentationRestricted:Z

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "<default-behaviour>presentation-restricted</default-behaviour>"

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<default-behaviour>presentation-not-restricted</default-behaviour>"

    goto :goto_0
.end method
