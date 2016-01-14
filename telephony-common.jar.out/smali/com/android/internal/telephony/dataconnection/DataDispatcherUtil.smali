.class public Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;
.super Ljava/lang/Object;
.source "DataDispatcherUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;,
        Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final IMC_IPV4_ADDR_LEN:I = 0x4

.field static final IMC_IPV6_ADDR_LEN:I = 0x10

.field static final IMC_MAXIMUM_NW_IF_NAME_STRING_SIZE:I = 0x64

.field static final IMC_MAX_AUTHORIZATION_TOKEN_LEN:I = 0x10

.field static final IMC_MAX_AUTHTOKEN_FLOWID_NUM:I = 0x4

.field static final IMC_MAX_CONCATENATED_NUM:I = 0xb

.field static final IMC_MAX_FLOW_IDENTIFIER_NUM:I = 0x4

.field static final IMC_MAX_PACKET_FILTER_NUM:I = 0x10

.field static final IMC_MAX_REMOTE_ADDR_AND_MASK_LEN:I = 0x20

.field static final IMC_PCSCF_MAX_NUM:I = 0xa

.field protected static final TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static dumpPdnAckRsp(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 6
    .param p0, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 496
    const-string v1, "[dumpPdnContextProp] "

    .line 499
    .local v1, "functionName":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v2, v4, [B

    .line 501
    .local v2, "pad2":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v3

    .line 502
    .local v3, "transactionId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 503
    .local v0, "addrCnt":I
    array-length v4, v2

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v2

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transactionId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr cnt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method static dumpPdnContextProp(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 8
    .param p0, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 509
    const/4 v6, 0x3

    new-array v4, v6, [B

    .line 510
    .local v4, "pad3":[B
    const-string v1, "[dumpPdnContextProp] "

    .line 516
    .local v1, "functionName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v0

    .line 517
    .local v0, "addrType":I
    array-length v6, v4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v4

    .line 519
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v5

    .line 521
    .local v5, "property":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pdn_contexts, addrType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", defaultCid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bearerId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Qos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", signalingFlag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tft: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v3

    .line 527
    .local v3, "num_of_concatenated_contexts":I
    array-length v6, v4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v4

    .line 529
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "concatenated num: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 531
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0xb

    if-ge v2, v6, :cond_1

    .line 532
    if-ge v2, v3, :cond_0

    .line 533
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    move-result-object v5

    .line 534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "concatenated contexts[: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], cid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", defaultCid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bearerId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Qos: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", signalingFlag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tft: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 531
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_1
    return-void
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 638
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcherUtil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 642
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] DataDispatcherUtil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void
.end method

.method static readDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .locals 11
    .param p0, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 80
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v4}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    .line 81
    .local v4, "property":Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    if-ne v10, v7, :cond_0

    move v1, v7

    .line 86
    .local v1, "hasQos":Z
    :goto_0
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/QosStatus;

    move-result-object v5

    .line 87
    .local v5, "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    if-eqz v1, :cond_1

    .end local v5    # "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    :goto_1
    iput-object v5, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    if-ne v10, v7, :cond_2

    move v2, v7

    .line 92
    .local v2, "hasTft":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    iput v10, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    if-ne v10, v7, :cond_3

    move v0, v7

    .line 95
    .local v0, "hasPcscf":Z
    :goto_3
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/TftStatus;

    move-result-object v6

    .line 96
    .local v6, "tftStatus":Lcom/android/internal/telephony/dataconnection/TftStatus;
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readPcscf(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    move-result-object v3

    .line 97
    .local v3, "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    if-eqz v2, :cond_4

    .end local v6    # "tftStatus":Lcom/android/internal/telephony/dataconnection/TftStatus;
    :goto_4
    iput-object v6, v4, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    .line 99
    return-object v4

    .end local v0    # "hasPcscf":Z
    .end local v1    # "hasQos":Z
    .end local v2    # "hasTft":Z
    .end local v3    # "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    :cond_0
    move v1, v8

    .line 85
    goto :goto_0

    .restart local v1    # "hasQos":Z
    .restart local v5    # "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    :cond_1
    move-object v5, v9

    .line 87
    goto :goto_1

    .end local v5    # "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    :cond_2
    move v2, v8

    .line 91
    goto :goto_2

    .restart local v2    # "hasTft":Z
    :cond_3
    move v0, v8

    .line 93
    goto :goto_3

    .restart local v0    # "hasPcscf":Z
    .restart local v3    # "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    .restart local v6    # "tftStatus":Lcom/android/internal/telephony/dataconnection/TftStatus;
    :cond_4
    move-object v6, v9

    .line 97
    goto :goto_4
.end method

.method static readPcscf(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    .locals 13
    .param p0, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    const/16 v12, 0x10

    const/16 v11, 0xa

    const/4 v10, 0x4

    const/4 v9, 0x3

    .line 395
    new-instance v4, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    .line 396
    .local v4, "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    .line 397
    .local v5, "v4AddrNum":I
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v11, :cond_3

    .line 399
    new-instance v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;-><init>()V

    .line 405
    .local v3, "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->protocol:I

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->port:I

    .line 409
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 410
    .local v1, "ipBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v10, :cond_1

    .line 411
    if-eqz v2, :cond_0

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 416
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    .line 418
    if-ge v0, v5, :cond_2

    iget-object v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 419
    iget-object v7, v4, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    .end local v1    # "ipBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "j":I
    .end local v3    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v6

    .line 423
    .local v6, "v6AddrNum":I
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 424
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v11, :cond_7

    .line 425
    new-instance v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;-><init>()V

    .line 431
    .restart local v3    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->protocol:I

    .line 432
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 433
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->port:I

    .line 435
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 436
    .restart local v1    # "ipBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    if-ge v2, v12, :cond_5

    .line 437
    if-eqz v2, :cond_4

    .line 438
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 440
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 442
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    .line 444
    if-ge v0, v6, :cond_6

    iget-object v7, v3, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 445
    iget-object v7, v4, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 447
    .end local v1    # "ipBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "j":I
    .end local v3    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :cond_7
    return-object v4
.end method

.method static readQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/QosStatus;
    .locals 6
    .param p0, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 126
    new-instance v2, Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/QosStatus;-><init>()V

    .line 127
    .local v2, "qosStatus":Lcom/android/internal/telephony/dataconnection/QosStatus;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/dataconnection/QosStatus;->qci:I

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    if-ne v5, v3, :cond_0

    move v0, v3

    .line 129
    .local v0, "isGbrPresent":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 130
    .local v1, "isMbrPresent":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    .line 135
    return-object v2

    .end local v0    # "isGbrPresent":Z
    .end local v1    # "isMbrPresent":Z
    :cond_0
    move v0, v4

    .line 128
    goto :goto_0

    .restart local v0    # "isGbrPresent":Z
    :cond_1
    move v1, v4

    .line 129
    goto :goto_1
.end method

.method static readTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/TftStatus;
    .locals 24
    .param p0, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 156
    new-instance v21, Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/TftStatus;-><init>()V

    .line 157
    .local v21, "tftStatus":Lcom/android/internal/telephony/dataconnection/TftStatus;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/TftStatus;->operation:I

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/4 v9, 0x1

    .line 159
    .local v9, "ebitFlag":Z
    :goto_0
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 160
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const/16 v22, 0x10

    move/from16 v0, v22

    if-ge v13, v0, :cond_4

    .line 180
    new-instance v19, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;-><init>()V

    .line 181
    .local v19, "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->id:I

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->precedence:I

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->direction:I

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->networkPfIdentifier:I

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    .line 187
    const/16 v22, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v2

    .line 188
    .local v2, "addrAndMaskArray":[B
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-lez v22, :cond_3

    .line 190
    const/16 v22, 0x0

    const/16 v23, 0x4

    :try_start_0
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    .line 191
    .local v3, "address":Ljava/net/InetAddress;
    const/16 v22, 0x4

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v18

    .line 192
    .local v18, "mask":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->address:Ljava/lang/String;

    .line 193
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->mask:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v18    # "mask":Ljava/net/InetAddress;
    :cond_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->protocolNextHeader:I

    .line 209
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->localPortLow:I

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->localPortHigh:I

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->remotePortLow:I

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getShort()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->remotePortHigh:I

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->spi:I

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->tos:I

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->tosMask:I

    .line 217
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->flowLabel:I

    .line 220
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->id:I

    move/from16 v22, v0

    if-lez v22, :cond_1

    .line 221
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 158
    .end local v2    # "addrAndMaskArray":[B
    .end local v9    # "ebitFlag":Z
    .end local v13    # "i":I
    .end local v19    # "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 194
    .restart local v2    # "addrAndMaskArray":[B
    .restart local v9    # "ebitFlag":Z
    .restart local v13    # "i":I
    .restart local v19    # "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :catch_0
    move-exception v8

    .line 195
    .local v8, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_2

    .line 197
    .end local v8    # "e":Ljava/net/UnknownHostException;
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-lez v22, :cond_0

    .line 199
    const/16 v22, 0x0

    const/16 v23, 0x10

    :try_start_1
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    .line 200
    .restart local v3    # "address":Ljava/net/InetAddress;
    const/16 v22, 0x10

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v18

    .line 201
    .restart local v18    # "mask":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->address:Ljava/lang/String;

    .line 202
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->mask:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 203
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v18    # "mask":Ljava/net/InetAddress;
    :catch_1
    move-exception v8

    .line 204
    .restart local v8    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_2

    .line 232
    .end local v2    # "addrAndMaskArray":[B
    .end local v8    # "e":Ljava/net/UnknownHostException;
    .end local v19    # "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_4
    new-instance v20, Lcom/android/internal/telephony/dataconnection/TftParameter;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/TftParameter;-><init>()V

    .line 233
    .local v20, "tftParameter":Lcom/android/internal/telephony/dataconnection/TftParameter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v17

    .line 234
    .local v17, "linkedPfNumber":I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 235
    const/16 v22, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v16

    .line 236
    .local v16, "linkedPfIdArray":[B
    const/4 v13, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 237
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    aget-byte v23, v16, v13

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 239
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v7

    .line 240
    .local v7, "authtokenFlowIdNum":I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 249
    const/4 v13, 0x0

    :goto_4
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v13, v0, :cond_c

    .line 250
    new-instance v4, Lcom/android/internal/telephony/dataconnection/TftAuthToken;

    invoke-direct {v4}, Lcom/android/internal/telephony/dataconnection/TftAuthToken;-><init>()V

    .line 251
    .local v4, "authToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v6

    .line 252
    .local v6, "authTokenLength":I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 253
    const/16 v22, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v5

    .line 254
    .local v5, "authTokenArray":[B
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    const/16 v22, 0x10

    move/from16 v0, v22

    if-ge v14, v0, :cond_7

    .line 255
    if-ge v14, v6, :cond_6

    .line 256
    iget-object v0, v4, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    aget-byte v23, v5, v14

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 259
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v11

    .line 260
    .local v11, "flowIdLength":I
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    .line 261
    const/4 v14, 0x0

    :goto_6
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v14, v0, :cond_a

    .line 262
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v10

    .line 263
    .local v10, "flowIdArray":[B
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v12, v0, [Ljava/lang/Integer;

    .line 264
    .local v12, "flowIds":[Ljava/lang/Integer;
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_7
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v15, v0, :cond_8

    .line 265
    aget-byte v22, v10, v15

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v12, v15

    .line 264
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 267
    :cond_8
    if-ge v14, v11, :cond_9

    .line 268
    iget-object v0, v4, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 271
    .end local v10    # "flowIdArray":[B
    .end local v12    # "flowIds":[Ljava/lang/Integer;
    .end local v15    # "k":I
    :cond_a
    if-ge v13, v7, :cond_b

    .line 272
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 275
    .end local v4    # "authToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    .end local v5    # "authTokenArray":[B
    .end local v6    # "authTokenLength":I
    .end local v11    # "flowIdLength":I
    .end local v14    # "j":I
    :cond_c
    if-eqz v9, :cond_d

    .line 276
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    .line 278
    :cond_d
    return-object v21
.end method

.method static writeAllBearersProperties(Lcom/android/internal/telephony/ImsAdapter$VaEvent;IILcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/PcscfInfo;)V
    .locals 4
    .param p0, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .param p1, "msgType"    # I
    .param p2, "pdp_addr_type"    # I
    .param p3, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;
    .param p4, "pcscfInfo"    # Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .prologue
    const/4 v3, 0x3

    .line 552
    iget-object v2, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 554
    .local v1, "num_of_concatenated_contexts":I
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 555
    new-array v2, v3, [B

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 557
    invoke-static {p0, p1, p4, p3}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 558
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 559
    new-array v2, v3, [B

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 561
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    .line 562
    if-ge v0, v1, :cond_0

    .line 563
    iget-object v2, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-static {p0, p1, p4, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    .line 561
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;-><init>()V

    invoke-static {p0, p1, p4, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V

    goto :goto_1

    .line 568
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->dumpPdnContextProp(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 569
    return-void
.end method

.method static writeDedicateBearer(Lcom/android/internal/telephony/ImsAdapter$VaEvent;ILcom/android/internal/telephony/dataconnection/PcscfInfo;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;)V
    .locals 3
    .param p0, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .param p1, "type"    # I
    .param p2, "pcscfInfo"    # Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    .param p3, "property"    # Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->cid:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 104
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->defaultCid:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 105
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->bearerId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 106
    iget-object v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 107
    iget-object v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/internal/telephony/dataconnection/QosStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/QosStatus;-><init>()V

    :goto_1
    invoke-static {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/QosStatus;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 109
    iget-object v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 110
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->signalingFlag:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 111
    if-nez p2, :cond_4

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 112
    iget-object v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/internal/telephony/dataconnection/TftStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/TftStatus;-><init>()V

    :goto_4
    invoke-static {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writeTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/TftStatus;)V

    .line 113
    if-nez p2, :cond_0

    new-instance p2, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .end local p2    # "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    invoke-direct {p2}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->writePcscf(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    .line 114
    return-void

    .restart local p2    # "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    :cond_1
    move v0, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    goto :goto_1

    :cond_3
    move v0, v2

    .line 109
    goto :goto_2

    :cond_4
    move v1, v2

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    iget-object v0, p3, Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;->tftStatus:Lcom/android/internal/telephony/dataconnection/TftStatus;

    goto :goto_4
.end method

.method static writePcscf(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/PcscfInfo;)V
    .locals 10
    .param p0, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .param p1, "pcscfInfo"    # Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0xa

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 451
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 452
    new-array v5, v8, [B

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_4

    .line 454
    const/4 v2, 0x0

    .line 455
    .local v2, "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 456
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v4AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    check-cast v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .line 460
    .restart local v2    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :goto_1
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->protocol:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 461
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 462
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->port:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 464
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    if-nez v5, :cond_1

    move-object v3, v4

    .line 465
    .local v3, "pcscfSplitArray":[Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    const/4 v5, 0x4

    if-ge v1, v5, :cond_3

    .line 466
    if-eqz v3, :cond_2

    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 467
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 465
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 458
    .end local v1    # "j":I
    .end local v3    # "pcscfSplitArray":[Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .end local v2    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;-><init>()V

    .restart local v2    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    goto :goto_1

    .line 464
    :cond_1
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 469
    .restart local v1    # "j":I
    .restart local v3    # "pcscfSplitArray":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_4

    .line 453
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "j":I
    .end local v2    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    .end local v3    # "pcscfSplitArray":[Ljava/lang/String;
    :cond_4
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 474
    new-array v5, v8, [B

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 475
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v9, :cond_9

    .line 476
    const/4 v2, 0x0

    .line 477
    .restart local v2    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 478
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->v6AddrList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    check-cast v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .line 482
    .restart local v2    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    :goto_6
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->protocol:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 483
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 484
    iget v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->port:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 486
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    if-nez v5, :cond_6

    move-object v3, v4

    .line 487
    .restart local v3    # "pcscfSplitArray":[Ljava/lang/String;
    :goto_7
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_8
    const/16 v5, 0x10

    if-ge v1, v5, :cond_8

    .line 488
    if-eqz v3, :cond_7

    array-length v5, v3

    if-ge v1, v5, :cond_7

    .line 489
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 487
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 480
    .end local v1    # "j":I
    .end local v3    # "pcscfSplitArray":[Ljava/lang/String;
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;

    .end local v2    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/PcscfAddr;-><init>()V

    .restart local v2    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    goto :goto_6

    .line 486
    :cond_6
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/PcscfAddr;->address:Ljava/lang/String;

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 491
    .restart local v1    # "j":I
    .restart local v3    # "pcscfSplitArray":[Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_9

    .line 475
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 494
    .end local v1    # "j":I
    .end local v2    # "pcscfAddr":Lcom/android/internal/telephony/dataconnection/PcscfAddr;
    .end local v3    # "pcscfSplitArray":[Ljava/lang/String;
    :cond_9
    return-void
.end method

.method static writeQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/QosStatus;)V
    .locals 3
    .param p0, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .param p1, "qosStatus"    # Lcom/android/internal/telephony/dataconnection/QosStatus;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->qci:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 140
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 141
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    if-lez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 143
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlGbr:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 144
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulGbr:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 145
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->dlMbr:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 146
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/QosStatus;->ulMbr:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 147
    return-void

    :cond_0
    move v0, v2

    .line 140
    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    goto :goto_1
.end method

.method static writeTft(Lcom/android/internal/telephony/ImsAdapter$VaEvent;Lcom/android/internal/telephony/dataconnection/TftStatus;)V
    .locals 13
    .param p0, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .param p1, "tftStatus"    # Lcom/android/internal/telephony/dataconnection/TftStatus;

    .prologue
    .line 282
    iget v11, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->operation:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 283
    iget-object v11, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/TftParameter;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 284
    const/4 v11, 0x2

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 285
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v11, 0x10

    if-ge v5, v11, :cond_5

    .line 286
    const/4 v10, 0x0

    .line 287
    .local v10, "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    iget-object v11, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    .line 288
    iget-object v11, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->packetFilterInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    check-cast v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;

    .line 292
    .restart local v10    # "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :goto_2
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->id:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 293
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->precedence:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 294
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->direction:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 295
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->networkPfIdentifier:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 296
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 298
    const/16 v11, 0x20

    new-array v0, v11, [B

    .line 299
    .local v0, "addrAndMaskArray":[B
    const/4 v2, 0x0

    .line 300
    .local v2, "addressByteArray":[B
    const/4 v9, 0x0

    .line 301
    .local v9, "maskByteArray":[B
    iget-object v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->address:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 303
    :try_start_0
    iget-object v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->address:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 304
    .local v1, "address":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 306
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    array-length v11, v2

    if-ge v6, v11, :cond_2

    .line 307
    aget-byte v11, v2, v6

    aput-byte v11, v0, v6
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 283
    .end local v0    # "addrAndMaskArray":[B
    .end local v1    # "address":Ljava/net/InetAddress;
    .end local v2    # "addressByteArray":[B
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v9    # "maskByteArray":[B
    .end local v10    # "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_0
    const/4 v11, 0x1

    goto :goto_0

    .line 290
    .restart local v5    # "i":I
    .restart local v10    # "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_1
    new-instance v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;

    .end local v10    # "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    invoke-direct {v10}, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;-><init>()V

    .restart local v10    # "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    goto :goto_2

    .line 308
    .restart local v0    # "addrAndMaskArray":[B
    .restart local v2    # "addressByteArray":[B
    .restart local v9    # "maskByteArray":[B
    :catch_0
    move-exception v4

    .line 309
    .local v4, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 313
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :cond_2
    iget-object v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->mask:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 315
    :try_start_1
    iget-object v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->mask:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 316
    .local v8, "mask":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    .line 318
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    and-int/lit8 v11, v11, 0x1

    if-lez v11, :cond_3

    .line 319
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    array-length v11, v9

    if-ge v6, v11, :cond_4

    .line 320
    add-int/lit8 v11, v6, 0x4

    aget-byte v12, v9, v6

    aput-byte v12, v0, v11

    .line 319
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 321
    .end local v6    # "j":I
    :cond_3
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->bitmap:I

    and-int/lit8 v11, v11, 0x2

    if-lez v11, :cond_4

    .line 322
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    array-length v11, v9

    if-ge v6, v11, :cond_4

    .line 323
    add-int/lit8 v11, v6, 0x10

    aget-byte v12, v9, v6

    aput-byte v12, v0, v11
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 325
    .end local v6    # "j":I
    .end local v8    # "mask":Ljava/net/InetAddress;
    :catch_1
    move-exception v4

    .line 326
    .restart local v4    # "e":Ljava/net/UnknownHostException;
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 329
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 331
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->protocolNextHeader:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 332
    const/4 v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 333
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->localPortLow:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 334
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->localPortHigh:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 335
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->remotePortLow:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 336
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->remotePortHigh:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putShort(I)I

    .line 337
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->spi:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 338
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->tos:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 339
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->tosMask:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 340
    const/4 v11, 0x2

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 341
    iget v11, v10, Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;->flowLabel:I

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 285
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 344
    .end local v0    # "addrAndMaskArray":[B
    .end local v2    # "addressByteArray":[B
    .end local v9    # "maskByteArray":[B
    .end local v10    # "pkFilterInfo":Lcom/android/internal/telephony/dataconnection/PacketFilterInfo;
    :cond_5
    iget-object v11, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 345
    const/4 v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 346
    const/4 v5, 0x0

    :goto_6
    const/16 v11, 0x10

    if-ge v5, v11, :cond_7

    .line 347
    iget-object v11, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_6

    .line 348
    iget-object v11, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/TftParameter;->linkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->byteValue()B

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 346
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 350
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_7

    .line 353
    :cond_7
    iget-object v11, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 354
    const/4 v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 356
    const/4 v5, 0x0

    :goto_8
    const/4 v11, 0x4

    if-ge v5, v11, :cond_e

    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, "authToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    iget-object v11, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_8

    .line 359
    iget-object v11, p1, Lcom/android/internal/telephony/dataconnection/TftStatus;->tftParameter:Lcom/android/internal/telephony/dataconnection/TftParameter;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/TftParameter;->authTokenFlowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "authToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    check-cast v3, Lcom/android/internal/telephony/dataconnection/TftAuthToken;

    .line 363
    .restart local v3    # "authToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    :goto_9
    iget-object v11, v3, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 364
    const/4 v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 365
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_a
    const/16 v11, 0x10

    if-ge v6, v11, :cond_a

    .line 366
    iget-object v11, v3, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_9

    .line 367
    iget-object v11, v3, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 365
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 361
    .end local v6    # "j":I
    :cond_8
    new-instance v3, Lcom/android/internal/telephony/dataconnection/TftAuthToken;

    .end local v3    # "authToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/TftAuthToken;-><init>()V

    .restart local v3    # "authToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    goto :goto_9

    .line 369
    .restart local v6    # "j":I
    :cond_9
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_b

    .line 372
    :cond_a
    iget-object v11, v3, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 373
    const/4 v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 374
    const/4 v6, 0x0

    :goto_c
    const/4 v11, 0x4

    if-ge v6, v11, :cond_d

    .line 375
    iget-object v11, v3, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_b

    .line 376
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_d
    const/4 v11, 0x4

    if-ge v7, v11, :cond_c

    .line 377
    iget-object v11, v3, Lcom/android/internal/telephony/dataconnection/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Integer;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 376
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 379
    .end local v7    # "k":I
    :cond_b
    const/4 v11, 0x4

    new-array v11, v11, [B

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 374
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 356
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 384
    .end local v3    # "authToken":Lcom/android/internal/telephony/dataconnection/TftAuthToken;
    .end local v6    # "j":I
    :cond_e
    return-void
.end method


# virtual methods
.method composeGlobalIPAddrVaEvent(II[BLjava/lang/String;)Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .locals 3
    .param p1, "MsgId"    # I
    .param p2, "cid"    # I
    .param p3, "addr"    # [B
    .param p4, "intfName"    # Ljava/lang/String;

    .prologue
    .line 607
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 608
    .local v0, "event":Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/16 v1, 0x64

    .line 609
    .local v1, "intfNamMaxLen":I
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 610
    const/4 v2, 0x3

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 611
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 612
    const/16 v2, 0x64

    invoke-virtual {v0, p4, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 614
    return-object v0
.end method

.method extractDefaultPdnActInd(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;
    .locals 3
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 572
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;)V

    .line 574
    .local v0, "defaultPdnActInd":Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->transactionId:I

    .line 575
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pad:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pad:[B

    .line 576
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->readQos(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/QosStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->qosStatus:Lcom/android/internal/telephony/dataconnection/QosStatus;

    .line 577
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->emergency_ind:I

    .line 578
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pcscf_discovery:I

    .line 579
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->signalingFlag:I

    .line 580
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pad2:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$DefaultPdnActInd;->pad2:[B

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractDefaultPdnActInd DefaultPdnActInd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 583
    return-object v0

    .line 579
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method extractPdnDeactInd(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;
    .locals 3
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    const/4 v1, 0x1

    .line 587
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;)V

    .line 593
    .local v0, "pdnDeactInd":Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->transactionId:I

    .line 594
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->abortTransactionId:I

    .line 595
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->isCidValid:Z

    .line 596
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil$PdnDeactInd;->cid:I

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractDefaultPdnActInd PdnDeactInd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->log(Ljava/lang/String;)V

    .line 599
    return-object v0

    .line 595
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getImsService()Lcom/mediatek/common/ims/IImsManagerService;
    .locals 6

    .prologue
    .line 618
    const/4 v3, 0x0

    .line 619
    .local v3, "service":Lcom/mediatek/common/ims/IImsManagerService;
    const/4 v2, 0x0

    .line 622
    .local v2, "retryCount":I
    :cond_0
    :try_start_0
    const-string v4, "ImsFrameworkService"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 623
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/ims/IImsManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/ims/IImsManagerService;

    move-result-object v3

    .line 624
    if-nez v3, :cond_1

    .line 625
    const-string v4, "getImsService IBinder is null"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataDispatcherUtil;->loge(Ljava/lang/String;)V

    .line 626
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    add-int/lit8 v2, v2, 0x1

    .line 632
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_0

    .line 634
    :cond_2
    return-object v3

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
