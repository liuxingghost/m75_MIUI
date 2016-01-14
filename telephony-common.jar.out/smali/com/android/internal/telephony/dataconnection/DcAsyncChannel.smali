.class public Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
.super Lcom/android/internal/util/AsyncChannel;
.source "DcAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcAsyncChannel$LinkPropertyChangeAction;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x41000

.field private static final CMD_TO_STRING_COUNT:I = 0x10

.field private static final DBG:Z = false

.field public static final REQ_GET_APNSETTING:I = 0x41004

.field public static final REQ_GET_CID:I = 0x41002

.field public static final REQ_GET_CONCATENATED_PROPERTIES:I = 0x4101e

.field public static final REQ_GET_DEFAULT_BEARER_DEACTIVATE_CID_ARRAY:I = 0x41024

.field public static final REQ_GET_DEFAULT_BEARER_PROPERTIES:I = 0x41022

.field public static final REQ_GET_LAST_DATA_CONN_FAIL_CAUSE:I = 0x41026

.field public static final REQ_GET_LINK_CAPABILITIES:I = 0x4100a

.field public static final REQ_GET_LINK_PROPERTIES:I = 0x41006

.field public static final REQ_GET_PCSCF:I = 0x41020

.field public static final REQ_IS_ACTIVE:I = 0x4100e

.field public static final REQ_IS_INACTIVE:I = 0x41000

.field public static final REQ_RESET:I = 0x4100c

.field public static final REQ_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41008

.field public static final RSP_GET_APNSETTING:I = 0x41005

.field public static final RSP_GET_CID:I = 0x41003

.field public static final RSP_GET_CONCATENATED_PROPERTIES:I = 0x4101f

.field public static final RSP_GET_DEFAULT_BEARER_DEACTIVATE_CID_ARRAY:I = 0x41025

.field public static final RSP_GET_DEFAULT_BEARER_PROPERTIES:I = 0x41023

.field public static final RSP_GET_LAST_DATA_CONN_FAIL_CAUSE:I = 0x41027

.field public static final RSP_GET_LINK_CAPABILITIES:I = 0x4100b

.field public static final RSP_GET_LINK_PROPERTIES:I = 0x41007

.field public static final RSP_GET_PCSCF:I = 0x41021

.field public static final RSP_IS_ACTIVE:I = 0x4100f

.field public static final RSP_IS_INACTIVE:I = 0x41001

.field public static final RSP_RESET:I = 0x4100d

.field public static final RSP_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41009

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private mDcThreadId:J

.field private mLogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "REQ_IS_INACTIVE"

    aput-object v2, v0, v1

    .line 92
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "RSP_IS_INACTIVE"

    aput-object v2, v0, v1

    .line 93
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "REQ_GET_CID"

    aput-object v2, v0, v1

    .line 94
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "RSP_GET_CID"

    aput-object v2, v0, v1

    .line 95
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "REQ_GET_APNSETTING"

    aput-object v2, v0, v1

    .line 96
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "RSP_GET_APNSETTING"

    aput-object v2, v0, v1

    .line 97
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "REQ_GET_LINK_PROPERTIES"

    aput-object v2, v0, v1

    .line 98
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "RSP_GET_LINK_PROPERTIES"

    aput-object v2, v0, v1

    .line 99
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "REQ_SET_LINK_PROPERTIES_HTTP_PROXY"

    aput-object v2, v0, v1

    .line 101
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "RSP_SET_LINK_PROPERTIES_HTTP_PROXY"

    aput-object v2, v0, v1

    .line 103
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "REQ_GET_LINK_CAPABILITIES"

    aput-object v2, v0, v1

    .line 104
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "RSP_GET_LINK_CAPABILITIES"

    aput-object v2, v0, v1

    .line 105
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "REQ_RESET"

    aput-object v2, v0, v1

    .line 106
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "RSP_RESET"

    aput-object v2, v0, v1

    .line 107
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "REQ_IS_ACTIVE"

    aput-object v2, v0, v1

    .line 108
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "RSP_IS_ACTIVE"

    aput-object v2, v0, v1

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDcThreadId:J

    .line 142
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mLogTag:Ljava/lang/String;

    .line 143
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # I

    .prologue
    const v1, 0x41000

    .line 111
    sub-int/2addr p0, v1

    .line 112
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 113
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    add-int v0, p0, v1

    invoke-static {v0}, Lcom/android/internal/util/AsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isCallerOnDifferentThread()Z
    .locals 5

    .prologue
    .line 458
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 459
    .local v0, "curThreadId":J
    iget-wide v3, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDcThreadId:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 461
    .local v2, "value":Z
    :goto_0
    return v2

    .line 459
    .end local v2    # "value":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnectionAc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void
.end method


# virtual methods
.method public bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILandroid/os/Message;)V
    .locals 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "initialMaxRetry"    # I
    .param p3, "profileId"    # I
    .param p4, "rilRadioTechnology"    # I
    .param p5, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 403
    const/high16 v6, 0x40000

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILandroid/os/Message;)V

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 406
    return-void
.end method

.method public bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILandroid/os/Message;Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;)V
    .locals 8
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "initialMaxRetry"    # I
    .param p3, "profileId"    # I
    .param p4, "rilRadioTechnology"    # I
    .param p5, "onCompletedMsg"    # Landroid/os/Message;
    .param p6, "defaultBearerConfig"    # Lcom/android/internal/telephony/dataconnection/DefaultBearerConfig;

    .prologue
    .line 411
    const/high16 v7, 0x40000

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILcom/android/internal/telephony/dataconnection/DefaultBearerConfig;Landroid/os/Message;)V

    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 414
    return-void
.end method

.method public getApnSettingSync()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 4

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    const v2, 0x41004

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x41005

    if-ne v2, v3, :cond_0

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    .line 264
    .end local v0    # "response":Landroid/os/Message;
    .local v1, "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :goto_0
    return-object v1

    .line 258
    .end local v1    # "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApnSetting error response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 259
    const/4 v1, 0x0

    .restart local v1    # "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0

    .line 262
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    .restart local v1    # "value":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_0
.end method

.method public getCidSync()I
    .locals 4

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    const v2, 0x41002

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x41003

    if-ne v2, v3, :cond_0

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspCid(Landroid/os/Message;)I

    move-result v1

    .line 222
    .end local v0    # "response":Landroid/os/Message;
    .local v1, "value":I
    :goto_0
    return v1

    .line 216
    .end local v1    # "value":I
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rspCid error response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 217
    const/4 v1, -0x1

    .restart local v1    # "value":I
    goto :goto_0

    .line 220
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    move-result v1

    .restart local v1    # "value":I
    goto :goto_0
.end method

.method public getConcatenatedBearersPropertiesOfDefaultBearerSync()[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getConcatenatedPropertiesSync()[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getConcatenatedPropertiesSync()[Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 3

    .prologue
    .line 505
    const v1, 0x4101e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 506
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4101f

    if-ne v1, v2, :cond_0

    .line 507
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    check-cast v1, [Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .line 510
    :goto_0
    return-object v1

    .line 509
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConcatenatedPropertiesSync error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 510
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataConnectionIdSync()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getDataConnectionId()I

    move-result v0

    return v0
.end method

.method public getDeactivateCidArraySync()[I
    .locals 3

    .prologue
    .line 539
    const v1, 0x41024

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 540
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41025

    if-ne v1, v2, :cond_0

    .line 541
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    .line 544
    :goto_0
    return-object v1

    .line 543
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeactivateCidArraySync error response= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 544
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultBearerPropertiesSync()Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 3

    .prologue
    .line 525
    const v1, 0x41022

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 526
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41023

    if-ne v1, v2, :cond_0

    .line 527
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .line 530
    :goto_0
    return-object v1

    .line 529
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultBearerPropertiesSync error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 530
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastDataConnectionFailCauseSync()Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 3

    .prologue
    .line 549
    const v1, 0x41026

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 550
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41027

    if-ne v1, v2, :cond_0

    .line 551
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 554
    :goto_0
    return-object v1

    .line 553
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastDataConnectionFailCauseSync error response= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 554
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    goto :goto_0
.end method

.method public getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;
    .locals 4

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    const v2, 0x4100a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 365
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x4100b

    if-ne v2, v3, :cond_0

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspLinkCapabilities(Landroid/os/Message;)Landroid/net/LinkCapabilities;

    move-result-object v1

    .line 373
    .end local v0    # "response":Landroid/os/Message;
    .local v1, "value":Landroid/net/LinkCapabilities;
    :goto_0
    return-object v1

    .line 368
    .end local v1    # "value":Landroid/net/LinkCapabilities;
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "value":Landroid/net/LinkCapabilities;
    goto :goto_0

    .line 371
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "value":Landroid/net/LinkCapabilities;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v1

    .restart local v1    # "value":Landroid/net/LinkCapabilities;
    goto :goto_0
.end method

.method public getLinkPropertiesSync()Landroid/net/LinkProperties;
    .locals 4

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    const v2, 0x41006

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 297
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x41007

    if-ne v2, v3, :cond_0

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 306
    .end local v0    # "response":Landroid/os/Message;
    .local v1, "value":Landroid/net/LinkProperties;
    :goto_0
    return-object v1

    .line 300
    .end local v1    # "value":Landroid/net/LinkProperties;
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLinkProperties error response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 301
    const/4 v1, 0x0

    .restart local v1    # "value":Landroid/net/LinkProperties;
    goto :goto_0

    .line 304
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "value":Landroid/net/LinkProperties;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .restart local v1    # "value":Landroid/net/LinkProperties;
    goto :goto_0
.end method

.method public getPcscfSync()Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    .locals 3

    .prologue
    .line 515
    const v1, 0x41020

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 516
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41021

    if-ne v1, v2, :cond_0

    .line 517
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .line 520
    :goto_0
    return-object v1

    .line 519
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPcscfSync error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 520
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActiveSync()Z
    .locals 3

    .prologue
    .line 493
    const v1, 0x4100e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 494
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4100f

    if-ne v1, v2, :cond_0

    .line 495
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspIsActive(Landroid/os/Message;)Z

    move-result v1

    .line 498
    :goto_0
    return v1

    .line 497
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsActive error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 498
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInactiveSync()Z
    .locals 4

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    const v2, 0x41000

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x41001

    if-ne v2, v3, :cond_0

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->rspIsInactive(Landroid/os/Message;)Z

    move-result v1

    .line 182
    .end local v0    # "response":Landroid/os/Message;
    .local v1, "value":Z
    :goto_0
    return v1

    .line 176
    .end local v1    # "value":Z
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rspIsInactive error response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    .restart local v1    # "value":Z
    goto :goto_0

    .line 180
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "value":Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getIsInactive()Z

    move-result v1

    .restart local v1    # "value":Z
    goto :goto_0
.end method

.method public reqApnSetting()V
    .locals 1

    .prologue
    .line 230
    const v0, 0x41004

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 232
    return-void
.end method

.method public reqCid()V
    .locals 1

    .prologue
    .line 190
    const v0, 0x41002

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 192
    return-void
.end method

.method public reqIsActive()V
    .locals 1

    .prologue
    .line 474
    const v0, 0x4100e

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 476
    return-void
.end method

.method public reqIsInactive()V
    .locals 1

    .prologue
    .line 150
    const v0, 0x41000

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 152
    return-void
.end method

.method public reqLinkCapabilities()V
    .locals 1

    .prologue
    .line 340
    const v0, 0x4100a

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 342
    return-void
.end method

.method public reqLinkProperties()V
    .locals 1

    .prologue
    .line 272
    const v0, 0x41006

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 274
    return-void
.end method

.method public reqReset()V
    .locals 1

    .prologue
    .line 381
    const v0, 0x4100c

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(I)V

    .line 383
    return-void
.end method

.method public reqSetLinkPropertiesHttpProxy(Landroid/net/ProxyProperties;)V
    .locals 1
    .param p1, "proxy"    # Landroid/net/ProxyProperties;

    .prologue
    .line 314
    const v0, 0x41008

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 316
    return-void
.end method

.method public rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 241
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 243
    .local v0, "retVal":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    return-object v0
.end method

.method public rspCid(Landroid/os/Message;)I
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 201
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 203
    .local v0, "retVal":I
    return v0
.end method

.method public rspIsActive(Landroid/os/Message;)Z
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 484
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 486
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 484
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rspIsInactive(Landroid/os/Message;)Z
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 160
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 162
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 160
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rspLinkCapabilities(Landroid/os/Message;)Landroid/net/LinkCapabilities;
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 351
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkCapabilities;

    .line 353
    .local v0, "retVal":Landroid/net/LinkCapabilities;
    return-object v0
.end method

.method public rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 283
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkProperties;

    .line 285
    .local v0, "retVal":Landroid/net/LinkProperties;
    return-object v0
.end method

.method public setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    .locals 3
    .param p1, "proxy"    # Landroid/net/ProxyProperties;

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isCallerOnDifferentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    const v1, 0x41008

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 325
    .local v0, "response":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41009

    if-ne v1, v2, :cond_0

    .line 333
    .end local v0    # "response":Landroid/os/Message;
    :goto_0
    return-void

    .line 328
    .restart local v0    # "response":Landroid/os/Message;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLinkPropertiesHttpPoxy error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v0    # "response":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkPropertiesHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0
.end method

.method public tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 427
    const v0, 0x40004

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 429
    return-void
.end method

.method public tearDownAll(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 440
    const v0, 0x40006

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 442
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
