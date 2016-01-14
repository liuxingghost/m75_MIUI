.class public final Lcom/android/internal/telephony/PhoneStateIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateIntentReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneStatIntentReceiver"

.field private static final NOTIF_PHONE:I = 0x1

.field private static final NOTIF_SERVICE:I = 0x2

.field private static final NOTIF_SIGNAL:I = 0x4


# instance fields
.field private mAsuEventWhat:I

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPhoneStateEventWhat:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mServiceState2:Landroid/telephony/ServiceState;

.field private mServiceStateEventWhat:I

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalStrength2:Landroid/telephony/SignalStrength;

.field private mTarget:Landroid/os/Handler;

.field private mWants:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 48
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    .line 49
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 52
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState2:Landroid/telephony/ServiceState;

    .line 53
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength2:Landroid/telephony/SignalStrength;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->setContext(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->setTarget(Landroid/os/Handler;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getNotifyPhoneCallState()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotifyServiceState()Z
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotifySignalStrength()Z
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifyPhoneCallState(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateGemini(I)Landroid/telephony/ServiceState;
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 216
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifyServiceState(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-nez p1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    .line 224
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState2:Landroid/telephony/ServiceState;

    goto :goto_0
.end method

.method public getSignalStrengthDbm()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbmGemini(I)I

    move-result v0

    return v0
.end method

.method public getSignalStrengthDbmGemini(I)I
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 244
    iget v2, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 245
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "client must call notifySignalStrength(int)"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_0
    const/4 v0, -0x1

    .line 252
    .local v0, "dBm":I
    if-nez p1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 257
    .local v1, "tempSignalStrength":Landroid/telephony/SignalStrength;
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    return v2

    .line 255
    .end local v1    # "tempSignalStrength":Landroid/telephony/SignalStrength;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength2:Landroid/telephony/SignalStrength;

    .restart local v1    # "tempSignalStrength":Landroid/telephony/SignalStrength;
    goto :goto_0
.end method

.method public getSignalStrengthGemini(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 228
    iget v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    .line 229
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "client must call notifySignalStrength(int)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    if-nez p1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    .line 240
    .local v0, "gsmSignalStrength":I
    :goto_0
    return v0

    .line 238
    .end local v0    # "gsmSignalStrength":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    .restart local v0    # "gsmSignalStrength":I
    goto :goto_0
.end method

.method public getSignalStrengthLevelAsu()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthGemini(I)I

    move-result v0

    return v0
.end method

.method public notifyPhoneCallState(I)V
    .locals 2
    .param p1, "eventWhat"    # I

    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    .line 125
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public notifyServiceState(I)V
    .locals 2
    .param p1, "eventWhat"    # I

    .prologue
    .line 134
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    .line 135
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceStateEventWhat:I

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public notifySignalStrength(I)V
    .locals 2
    .param p1, "eventWhat"    # I

    .prologue
    .line 144
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    .line 145
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mAsuEventWhat:I

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    const-string v6, "android.intent.action.SIG_STR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v5

    .line 170
    .local v5, "tempSignalStrength":Landroid/telephony/SignalStrength;
    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getMySimId()I

    move-result v6

    if-nez v6, :cond_1

    .line 171
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 176
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifySignalStrength()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v7, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mAsuEventWhat:I

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 178
    .local v2, "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    .end local v2    # "message":Landroid/os/Message;
    .end local v5    # "tempSignalStrength":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_1
    return-void

    .line 173
    .restart local v5    # "tempSignalStrength":Landroid/telephony/SignalStrength;
    :cond_1
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength2:Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v5    # "tempSignalStrength":Landroid/telephony/SignalStrength;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "PhoneStatIntentReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PhoneStateIntentRecv] caught "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 180
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 183
    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "phoneState":Ljava/lang/String;
    const-class v6, Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {v6, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 187
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifyPhoneCallState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v7, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 190
    .restart local v2    # "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 192
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "phoneState":Ljava/lang/String;
    :cond_3
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 196
    .local v4, "tempServiceState":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v6

    if-nez v6, :cond_4

    .line 197
    iput-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    .line 202
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifyServiceState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v7, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceStateEventWhat:I

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 205
    .restart local v2    # "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 199
    .end local v2    # "message":Landroid/os/Message;
    :cond_4
    iput-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState2:Landroid/telephony/ServiceState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public registerIntent()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method public unregisterIntent()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method
