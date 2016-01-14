.class Lcom/android/internal/telephony/cat/ReceiveDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field channelDataLength:I

.field mReceiveDataCid:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;IILcom/android/internal/telephony/cat/TextMessage;)V
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "length"    # I
    .param p3, "cid"    # I
    .param p4, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 242
    iput v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    .line 243
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 244
    iput v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mReceiveDataCid:I

    .line 248
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    .line 249
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 250
    iput p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mReceiveDataCid:I

    .line 251
    return-void
.end method
