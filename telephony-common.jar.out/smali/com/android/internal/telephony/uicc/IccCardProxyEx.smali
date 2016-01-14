.class public Lcom/android/internal/telephony/uicc/IccCardProxyEx;
.super Landroid/os/Handler;
.source "IccCardProxyEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccCardProxyEx$1;
    }
.end annotation


# static fields
.field private static final APPLICATION_ID_ISIM:I = 0x0

.field private static final APPLICATION_ID_MAX:I = 0x1

.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x3

.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RECORDS_LOADED:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_IccCardProxyEx"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private final mLock:Ljava/lang/Object;

.field private mSimId:I

.field private mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mCurrentAppType:I

    .line 76
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 78
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 79
    new-array v0, v1, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 81
    new-array v0, v1, [Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 88
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 92
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForApplicationChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "simId"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mCurrentAppType:I

    .line 76
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 78
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 79
    new-array v0, v1, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 81
    new-array v0, v1, [Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 99
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 102
    iput p3, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mSimId:I

    .line 104
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mSimId:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForApplicationChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 108
    return-void
.end method

.method private broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "appId"    # I

    .prologue
    .line 236
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 238
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_STATE_CHANGED_MULTI_APPLICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "simId"

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mSimId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v1, "appId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED_MULTI_APPLICATION "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sim id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mSimId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " app id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mSimId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 246
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 248
    monitor-exit v2

    .line 249
    return-void

    .line 248
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 268
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 269
    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    .line 270
    :pswitch_1
    const-string v0, "LOCKED"

    goto :goto_0

    .line 271
    :pswitch_2
    const-string v0, "LOCKED"

    goto :goto_0

    .line 272
    :pswitch_3
    const-string v0, "LOCKED"

    goto :goto_0

    .line 273
    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    .line 274
    :pswitch_5
    const-string v0, "NOT_READY"

    goto :goto_0

    .line 275
    :pswitch_6
    const-string v0, "LOCKED"

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;I)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "appId"    # I

    .prologue
    const/4 v0, 0x0

    .line 285
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 298
    :goto_0
    :pswitch_0
    return-object v0

    .line 286
    :pswitch_1
    const-string v0, "PIN"

    goto :goto_0

    .line 287
    :pswitch_2
    const-string v0, "PUK"

    goto :goto_0

    .line 289
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 290
    :pswitch_4
    const-string v0, "NETWORK"

    goto :goto_0

    .line 291
    :pswitch_5
    const-string v0, "NETWORK_SUBSET"

    goto :goto_0

    .line 292
    :pswitch_6
    const-string v0, "CORPORATE"

    goto :goto_0

    .line 293
    :pswitch_7
    const-string v0, "SERVICE_PROVIDER"

    goto :goto_0

    .line 294
    :pswitch_8
    const-string v0, "SIM"

    goto :goto_0

    .line 297
    :pswitch_9
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 289
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 346
    const-string v1, "RIL_IccCardProxyEx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCardEx][SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->getMySimId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 346
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 350
    const-string v1, "RIL_IccCardProxyEx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCardEx][SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->getMySimId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 350
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method private registerUiccCardEvents(I)V
    .locals 3
    .param p1, "appId"    # I

    .prologue
    .line 221
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 222
    .local v0, "aid":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p1

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    :cond_1
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 2
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "appId"    # I

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalState(): newState =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;ZI)V

    .line 265
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;ZI)V
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z
    .param p3, "appId"    # I

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState(): mExternalState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " newState =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " override = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object p1, v0, p3

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p3

    invoke-direct {p0, v2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterUiccCardEvents(I)V
    .locals 1
    .param p1, "appId"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 233
    :cond_1
    return-void
.end method

.method private updateExternalState(I)V
    .locals 2
    .param p1, "appId"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 218
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    .line 195
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUiccApplication[appId] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    .line 205
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    .line 209
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxyEx$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 212
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto/16 :goto_0

    .line 215
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto/16 :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateIccAvailability(I)V
    .locals 7
    .param p1, "appId"    # I

    .prologue
    .line 153
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 154
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 155
    .local v2, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 156
    .local v4, "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    const/4 v1, 0x0

    .line 157
    .local v1, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v3, 0x0

    .line 158
    .local v3, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v0, 0x0

    .line 160
    .local v0, "appType":I
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    .line 170
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 176
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v5, v5, p1

    if-ne v5, v3, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v5, v5, p1

    if-ne v5, v1, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eq v5, v2, :cond_2

    .line 177
    :cond_1
    const-string v5, "Icc changed. Reregestering."

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->unregisterUiccCardEvents(I)V

    .line 179
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 180
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v1, v5, p1

    .line 181
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v3, v5, p1

    .line 182
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->registerUiccCardEvents(I)V

    .line 185
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->updateExternalState(I)V

    .line 186
    monitor-exit v6

    .line 187
    return-void

    .line 162
    :pswitch_0
    const/4 v0, 0x3

    .line 163
    goto :goto_0

    .line 186
    .end local v0    # "appType":I
    .end local v1    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v3    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    const-string v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForApplicationChanged(Landroid/os/Handler;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2
    .param p1, "appId"    # I

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    monitor-exit v1

    .line 337
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 3
    .param p1, "family"    # I

    .prologue
    .line 313
    const/4 v0, -0x1

    .line 314
    .local v0, "appId":I
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 315
    packed-switch p1, :pswitch_data_0

    .line 320
    :try_start_0
    const-string v1, "Not Support"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 324
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 327
    :goto_1
    return-object v1

    .line 317
    :pswitch_0
    const/4 v0, 0x0

    .line 318
    goto :goto_0

    .line 327
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mSimId:I

    return v0
.end method

.method public getState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2
    .param p1, "appId"    # I

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->mExternalState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    monitor-exit v1

    return-object v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 124
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message with number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->loge(Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 126
    :pswitch_0
    const-string v3, "handleMessage (EVENT_RADIO_OFF_OR_UNAVAILABLE)"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->log(Ljava/lang/String;)V

    .line 127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 128
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    .end local v2    # "i":I
    :pswitch_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->updateIccAvailability(I)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v1, v3

    check-cast v1, Landroid/os/AsyncResult;

    .line 138
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    .local v0, "appId":I
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    .line 142
    .end local v0    # "appId":I
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v1, v3

    check-cast v1, Landroid/os/AsyncResult;

    .line 143
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    .restart local v0    # "appId":I
    const-string v3, "LOADED"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/telephony/uicc/IccCardProxyEx;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
