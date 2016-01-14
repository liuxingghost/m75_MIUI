.class public Lcom/android/internal/telephony/gsm/LteDcPhone;
.super Lcom/android/internal/telephony/gsm/GSMPhone;
.source "LteDcPhone.java"


# static fields
.field private static final LOCAL_DEBUG:Z = true

.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE_MMDC:I = 0x0

.field private static final MESSAGE_QUERY_AVAILABLE_NETWORK_MMDC:I = 0x2

.field private static final MESSAGE_SET_NW_MANUAL_COMPLETE_MMDC:I = 0x3

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE_MMDC:I = 0x1

.field private static mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;


# instance fields
.field private mNetworkType:I

.field private mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 101
    const-string v0, "LteDc"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 102
    const-string v0, "Create LteDcPhone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 110
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 113
    const-string v0, "setPhoneComponent() with mPeerGsmPhone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-interface {p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneComponent(Lcom/android/internal/telephony/Phone;)V

    .line 115
    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 324
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 326
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object v3, v4

    check-cast v3, Landroid/os/Message;

    .line 328
    .local v3, "response":Landroid/os/Message;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    .line 329
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v2, v4

    check-cast v2, [I

    .line 331
    .local v2, "modemNetworkMode":[I
    array-length v4, v2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 332
    aget v0, v2, v6

    .line 333
    .local v0, "P1NetworkType":I
    sparse-switch v0, :sswitch_data_0

    .line 410
    const-string v4, "RAT mode is not support"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGE(Ljava/lang/String;)V

    .line 411
    aput v0, v2, v6

    .line 412
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v3, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 420
    .end local v0    # "P1NetworkType":I
    .end local v2    # "modemNetworkMode":[I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 421
    return-void

    .line 338
    .restart local v0    # "P1NetworkType":I
    .restart local v2    # "modemNetworkMode":[I
    :sswitch_0
    aput v8, v2, v6

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 343
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 350
    :sswitch_1
    const/16 v4, 0x21

    aput v4, v2, v6

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 355
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 362
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    aput v6, v2, v6

    .line 371
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 374
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 369
    :cond_1
    const/4 v4, 0x2

    aput v4, v2, v6

    goto :goto_1

    .line 380
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 383
    const/16 v4, 0x23

    aput v4, v2, v6

    .line 389
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 392
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 386
    :cond_2
    const/16 v4, 0xb

    aput v4, v2, v6

    goto :goto_2

    .line 397
    :sswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 398
    aput v8, v2, v6

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "and radio2 is on -> transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 406
    :goto_3
    invoke-static {v3, v2, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 402
    :cond_3
    const/16 v4, 0xc

    aput v4, v2, v6

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse P1NetworkType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "and radio2 is off -> transfer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto :goto_3

    .line 418
    .end local v0    # "P1NetworkType":I
    .end local v2    # "modemNetworkMode":[I
    :cond_4
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_0

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected LOGD(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 506
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void
.end method

.method protected LOGE(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 496
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method protected LOGI(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 501
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method protected LOGW(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 511
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteDcPhone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mySimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 120
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 483
    const-string v0, "LteDcPhone finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 469
    const-string v1, "before query available network, cleanup all data connections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 471
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 472
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 473
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->sendMessage(Landroid/os/Message;)Z

    .line 474
    return-void
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    const-string v0, "LteDc"

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 7
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 455
    .local v0, "mCurrentNetworkMode":I
    if-ne v0, v5, :cond_0

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferredNetworkType() mCurrentNetworkMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return GSM_ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 457
    new-array v1, v5, [I

    .line 458
    .local v1, "modemNetworkMode":[I
    aput v5, v1, v6

    .line 459
    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 460
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 464
    .end local v1    # "modemNetworkMode":[I
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 137
    const-string v0, "handleMessage"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 140
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LteDcPhone;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 148
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    goto :goto_0

    .line 154
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string v0, "Override - notifyDataConnection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 436
    const-string v0, "Override - notifyLocationChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public notifyOtaspChanged(I)V
    .locals 1
    .param p1, "otaspMode"    # I

    .prologue
    .line 431
    const-string v0, "Override - notifyOtaspChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 479
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeReferences()V

    .line 480
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 164
    const/4 v0, 0x1

    .line 165
    .local v0, "isNeedTurnOnRadio1":Z
    const/4 v1, 0x1

    .line 167
    .local v1, "isNeedTurnOnRadio2":Z
    const/4 v4, 0x0

    .line 171
    .local v4, "isRequestFromBootUpFlow":Z
    if-eqz p2, :cond_0

    iget v6, p2, Landroid/os/Message;->arg1:I

    if-ne v6, v10, :cond_1

    .line 172
    :cond_0
    const/4 v4, 0x1

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    const/16 v8, 0x9

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 180
    .local v5, "mCurrentNetworkMode":I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    const-string v6, "gsm.mmdc.network.mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPreferredNetworkTypeLteDc currentType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  networkType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 189
    sparse-switch p1, :sswitch_data_0

    .line 272
    const-string v6, "RAT mode is not support"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGE(Ljava/lang/String;)V

    .line 274
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    const-string v6, "gsm.mmdc.network.mode"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v4, 0x1

    .line 284
    :goto_0
    if-nez v4, :cond_f

    .line 285
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    .line 286
    .local v2, "isRadioOn1":Z
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    .line 288
    .local v3, "isRadioOn2":Z
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 289
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 290
    :cond_2
    const-string v6, "need to setRadioMode(MODE_DUAL_SIM) but need to sync with data service"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 292
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerForRatModeChanged(Landroid/os/Message;)V

    .line 321
    .end local v2    # "isRadioOn1":Z
    .end local v3    # "isRadioOn2":Z
    :cond_3
    :goto_1
    return-void

    .line 192
    :sswitch_0
    const/16 p1, 0x20

    .line 193
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 199
    :sswitch_1
    const/16 p1, 0x22

    .line 200
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 205
    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isWorldPhone()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/worldphone/LteModemSwitchHandler;->isLteDcMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 206
    sget-object v6, Lcom/android/internal/telephony/gsm/LteDcPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    if-nez v6, :cond_4

    .line 207
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getWorldPhone()Lcom/mediatek/common/telephony/IWorldPhone;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/gsm/LteDcPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    .line 209
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/gsm/LteDcPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    if-eqz v6, :cond_5

    .line 210
    invoke-static {p2, v9, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 211
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 212
    sget-object v6, Lcom/android/internal/telephony/gsm/LteDcPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Lcom/mediatek/common/telephony/IWorldPhone;->onNetworkModeChanged(II)I

    goto :goto_1

    .line 215
    :cond_5
    const-string v6, "Fail to get mWorldPhone"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_6
    const/4 p1, 0x2

    .line 221
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 226
    :sswitch_3
    const/16 p1, 0x24

    .line 227
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 232
    :sswitch_4
    const/16 p1, 0xc

    .line 233
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 234
    const/4 v1, 0x0

    .line 235
    goto/16 :goto_0

    .line 239
    :sswitch_5
    const/4 p1, 0x2

    .line 240
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 241
    const/4 v1, 0x0

    .line 242
    goto/16 :goto_0

    .line 246
    :sswitch_6
    const/16 p1, 0xb

    .line 247
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 248
    const/4 v1, 0x0

    .line 249
    goto/16 :goto_0

    .line 252
    :sswitch_7
    if-nez v4, :cond_7

    .line 253
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 255
    :cond_7
    if-nez p2, :cond_8

    .line 256
    const-string v6, "response is NULL"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_8
    if-ne v5, v10, :cond_9

    iget v6, p2, Landroid/os/Message;->arg1:I

    if-ne v6, v10, :cond_9

    .line 258
    const-string v6, "boot up with 2G only"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    const-string v6, "gsm.mmdc.network.mode"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v4, 0x1

    .line 266
    const-string v6, "exception on set to 2G only"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    .restart local v2    # "isRadioOn1":Z
    .restart local v3    # "isRadioOn2":Z
    :cond_a
    if-eqz v0, :cond_c

    if-nez v1, :cond_c

    .line 298
    if-eqz v2, :cond_b

    if-eqz v3, :cond_3

    .line 299
    :cond_b
    const-string v6, "need ot setRadioMode(MODE_SIM1_ONLY) but need to sync with data service"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 301
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerForRatModeChanged(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 304
    :cond_c
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 306
    if-nez v2, :cond_d

    if-nez v3, :cond_e

    .line 307
    :cond_d
    const-string v6, "need ot switch mode to GSM_ONLY, but need to sync with data service"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 308
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteDcPhone;->mPeerGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v6, p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerForRatModeChanged(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 311
    :cond_e
    if-eqz p2, :cond_3

    .line 312
    const-string v6, "no need to change Radio Mode"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 313
    invoke-static {p2, v9, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 314
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 319
    .end local v2    # "isRadioOn1":Z
    .end local v3    # "isRadioOn2":Z
    :cond_f
    const-string v6, "RAT mode not support or in bootup flow"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 189
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_7
        0x2 -> :sswitch_5
        0x3 -> :sswitch_2
        0x9 -> :sswitch_0
        0xb -> :sswitch_6
        0xc -> :sswitch_4
        0x21 -> :sswitch_1
        0x23 -> :sswitch_3
    .end sparse-switch
.end method

.method public updateSimIndicateState()V
    .locals 1

    .prologue
    .line 425
    const-string v0, "updateSimIndicateState"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcPhone;->LOGD(Ljava/lang/String;)V

    .line 427
    return-void
.end method
