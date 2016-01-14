.class public Lcom/android/internal/telephony/ConferenceCallXml;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ConferenceCallXml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ConferenceCallXml$User;
    }
.end annotation


# static fields
.field public static final STATUS_CONNECTED:Ljava/lang/String; = "connected"

.field public static final STATUS_DISCONNECTED:Ljava/lang/String; = "disconnected"

.field public static final STATUS_ON_HOLD:Ljava/lang/String; = "on-hold"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCallId:I

.field private mDuringEndPointTag:Z

.field private mIndex:I

.field private mMaxUserCount:I

.field private preTag:Ljava/lang/String;

.field private tempVal:Ljava/lang/String;

.field private user:Lcom/android/internal/telephony/ConferenceCallXml$User;

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ConferenceCallXml$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 22
    const-string v0, "ConferenceCallXml"

    iput-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mCallId:I

    .line 29
    iput-boolean v1, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mDuringEndPointTag:Z

    .line 30
    iput v1, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mIndex:I

    .line 40
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->tempVal:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    const-string v0, "user"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->users:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iput-object v3, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    .line 166
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/ConferenceCallXml;->preTag:Ljava/lang/String;

    .line 167
    return-void

    .line 154
    :cond_1
    const-string v0, "endpoint"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    if-eqz v0, :cond_2

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mDuringEndPointTag:Z

    goto :goto_0

    .line 156
    :cond_2
    const-string v0, "display-text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mDuringEndPointTag:Z

    if-nez v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    iget-object v1, p0, Lcom/android/internal/telephony/ConferenceCallXml;->tempVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ConferenceCallXml$User;->setDisplayText(Ljava/lang/String;)V

    .line 158
    const-string v0, "ConferenceCallXml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user - DisplayText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_3
    const-string v0, "maximum-user-count"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->tempVal:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ConferenceCallXml;->setMaxUserCount(Ljava/lang/String;)V

    .line 161
    const-string v0, "ConferenceCallXml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxUserCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ConferenceCallXml;->getMaxUserCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_4
    const-string v0, "status"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    iget-object v1, p0, Lcom/android/internal/telephony/ConferenceCallXml;->tempVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ConferenceCallXml$User;->setStatus(Ljava/lang/String;)V

    .line 164
    const-string v0, "ConferenceCallXml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mCallId:I

    return v0
.end method

.method public getMaxUserCount()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mMaxUserCount:I

    return v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ConferenceCallXml$User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->users:Ljava/util/List;

    return-object v0
.end method

.method public setCallId(I)V
    .locals 0
    .param p1, "callId"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mCallId:I

    .line 102
    return-void
.end method

.method setMaxUserCount(Ljava/lang/String;)V
    .locals 1
    .param p1, "maxUserCount"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mMaxUserCount:I

    .line 94
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->users:Ljava/util/List;

    .line 114
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v0, "user"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mIndex:I

    .line 133
    new-instance v0, Lcom/android/internal/telephony/ConferenceCallXml$User;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ConferenceCallXml$User;-><init>(Lcom/android/internal/telephony/ConferenceCallXml;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    iget v1, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ConferenceCallXml$User;->setIndex(I)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    const-string v1, ""

    const-string v2, "entity"

    invoke-interface {p4, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ConferenceCallXml$User;->setEntity(Ljava/lang/String;)V

    .line 136
    const-string v0, "ConferenceCallXml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user - entity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getEntity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/internal/telephony/ConferenceCallXml;->preTag:Ljava/lang/String;

    .line 143
    return-void

    .line 137
    :cond_1
    const-string v0, "endpoint"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ConferenceCallXml;->mDuringEndPointTag:Z

    .line 140
    const-string v0, "ConferenceCallXml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endpoint - entity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ConferenceCallXml;->user:Lcom/android/internal/telephony/ConferenceCallXml$User;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getEntity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
