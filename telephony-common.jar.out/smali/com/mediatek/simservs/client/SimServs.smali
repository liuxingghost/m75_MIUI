.class public Lcom/mediatek/simservs/client/SimServs;
.super Ljava/lang/Object;
.source "SimServs.java"


# static fields
.field public static final CARDTYPE_ISIM:I = 0x2

.field public static final CARDTYPE_UNSPECIFIED:I = 0x0

.field public static final CARDTYPE_USIM:I = 0x1

.field public static DEBUG:Z = false

.field public static final LIB_CONFIG_MULTIPLE_RULE_CONDITIONS:Z = true

.field public static final SIMSERVS_FILENAME:Ljava/lang/String; = "simservs"

.field public static final TAG:Ljava/lang/String; = "SimServs"

.field public static mInstance:Lcom/mediatek/simservs/client/SimServs;


# instance fields
.field private mCardType:I

.field public mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

.field public mDocumentUri:Ljava/net/URI;

.field private mImpi:Ljava/lang/String;

.field private mImpu:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mIntendedId:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;

.field private mXcapRoot:Ljava/lang/String;

.field public mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

.field private mXui:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/simservs/client/SimServs;->DEBUG:Z

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->mInstance:Lcom/mediatek/simservs/client/SimServs;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 30
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapRoot:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mXui:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImsi:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpu:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    .line 45
    const-string v1, "mediatek.simserv.debug"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "debug":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/simservs/client/SimServs;->DEBUG:Z

    .line 48
    const-string v1, "SimServs"

    const-string v2, "Debug enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    return-void
.end method

.method private buildRootUri()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v1, "xcapRoot":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 150
    const-string v2, "http://xcap.ims.mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pub.3gppnetwork.org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :goto_0
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapRoot:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimServs;->buildDocumentUri()V

    .line 175
    :cond_0
    return-void

    .line 155
    :cond_1
    iget v2, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 156
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string v3, "3gppnetwork.org"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->getImpiDomain()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "domain":Ljava/lang/String;
    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const/4 v2, 0x0

    const-string v3, ".3gppnetwork.org"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string v3, ".pub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    const-string v2, ".3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :cond_2
    const-string v2, ".pub.3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    .end local v0    # "domain":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->getImpiDomain()Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0    # "domain":Ljava/lang/String;
    const-string v2, "http://xcap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getImpiDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 135
    const/4 v2, 0x0

    .line 139
    :goto_0
    return-object v2

    .line 137
    :cond_0
    const-string v0, "@"

    .line 138
    .local v0, "delimiter":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "temp":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/simservs/client/SimServs;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->mInstance:Lcom/mediatek/simservs/client/SimServs;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/mediatek/simservs/client/SimServs;

    invoke-direct {v0}, Lcom/mediatek/simservs/client/SimServs;-><init>()V

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->mInstance:Lcom/mediatek/simservs/client/SimServs;

    .line 55
    :cond_0
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->mInstance:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method


# virtual methods
.method public buildDocumentUri()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    const-string v1, "simservs.ngn.etsi.org"

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mXui:Ljava/lang/String;

    const-string v3, "simservs"

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    .line 180
    const-string v0, "SimServs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "document selector is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v0}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 184
    const-string v0, "SimServs"

    const-string v1, "buildDocumentUri():Create instance for mXcapUri"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/uri/XcapUri;->setXcapRoot(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/uri/XcapUri;->setDocumentSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 187
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentUri:Ljava/net/URI;

    .line 188
    return-void
.end method

.method public getBarringServiceCapability(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/simservs/capability/BarringServiceCapability;
    .locals 6
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/mediatek/simservs/capability/BarringServiceCapability;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/capability/BarringServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBarringServiceCapability(Z)Lcom/mediatek/simservs/capability/BarringServiceCapability;
    .locals 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Lcom/mediatek/simservs/capability/BarringServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/capability/BarringServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCommunicationDiversion(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .locals 6
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCommunicationDiversion(Z)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .locals 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCommunicationWaiting(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .locals 6
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCommunicationWaiting(Z)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .locals 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDiversionServiceCapability(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/simservs/capability/DiversionServiceCapability;
    .locals 6
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/capability/DiversionServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDiversionServiceCapability(Z)Lcom/mediatek/simservs/capability/DiversionServiceCapability;
    .locals 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/capability/DiversionServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDocumentUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCommunicationBarring(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .locals 6
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIncomingCommunicationBarring(Z)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .locals 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIntendedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingIdentityPresentation(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .locals 6
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOriginatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .locals 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .locals 6
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .locals 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOutgoingCommunicationBarring(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .locals 6
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOutgoingCommunicationBarring(Z)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .locals 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentation(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .locals 6
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .locals 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .locals 6
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .locals 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getXcapRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getXui()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mXui:Ljava/lang/String;

    return-object v0
.end method

.method public setHttpCredential(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setIntendedId(Ljava/lang/String;)V
    .locals 0
    .param p1, "intendedId"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setXcapRoot(Ljava/lang/String;)V
    .locals 2
    .param p1, "xcapRoot"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapRoot:Ljava/lang/String;

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimServs;->buildDocumentUri()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapRoot:Ljava/lang/String;

    goto :goto_0
.end method

.method public setXcapRootByImpi(Ljava/lang/String;)V
    .locals 2
    .param p1, "impi"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 70
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    .line 72
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->buildRootUri()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 80
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->buildRootUri()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setXui(Ljava/lang/String;)V
    .locals 0
    .param p1, "xui"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mXui:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setXuiByImpu(Ljava/lang/String;)V
    .locals 1
    .param p1, "impu"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 95
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImpu:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mXui:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setXuiByImsiMccMnc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 100
    iput v3, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 101
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImsi:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 105
    const-string v0, "sip:%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mXui:Ljava/lang/String;

    .line 107
    return-void
.end method
