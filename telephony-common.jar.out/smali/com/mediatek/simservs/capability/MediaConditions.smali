.class public Lcom/mediatek/simservs/capability/MediaConditions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "MediaConditions.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "serv-cap-media"

.field static final TAG_MEDIA:Ljava/lang/String; = "media"


# instance fields
.field mMedias:Ljava/util/List;
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
    invoke-virtual {p0, p6}, Lcom/mediatek/simservs/capability/MediaConditions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 31
    return-void
.end method


# virtual methods
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
    .line 51
    iget-object v0, p0, Lcom/mediatek/simservs/capability/MediaConditions;->mMedias:Ljava/util/List;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "serv-cap-media"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 35
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 36
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v4, "media"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 37
    .local v3, "mediasNode":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/mediatek/simservs/capability/MediaConditions;->mMedias:Ljava/util/List;

    .line 38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 39
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 40
    .local v2, "mediaElement":Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/mediatek/simservs/capability/MediaConditions;->mMedias:Ljava/util/List;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_0
    return-void
.end method
