.class public Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "CommunicationDiversion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/simservs/client/CommunicationDiversion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoReplyTimer"
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "NoReplyTimer"


# instance fields
.field public mValue:I

.field final synthetic this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;


# direct methods
.method public constructor <init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "initValue"    # I

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput p7, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    .line 105
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "NoReplyTimer"

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    return v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 109
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    .line 122
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<NoReplyTimer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</NoReplyTimer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
