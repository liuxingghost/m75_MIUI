.class public Lcom/android/internal/telephony/CallControlDispatcher;
.super Ljava/lang/Object;
.source "CallControlDispatcher.java"

# interfaces
.implements Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field private static final IMC_PROGRESS_NOTIFY_CONFERENCE:I = 0x101

.field private static final IMC_PROGRESS_NOTIFY_MWI:I = 0x102

.field private static final TAG:Ljava/lang/String; = "[CallControlDispatcher]"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/CallControlDispatcher;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/internal/telephony/CallControlDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 34
    return-void
.end method

.method private getConferencePhone(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 8
    .param p1, "gp"    # Lcom/android/internal/telephony/gemini/GeminiPhone;
    .param p2, "connectionId"    # I

    .prologue
    .line 119
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget v6, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v6, :cond_4

    .line 120
    add-int/lit8 v6, v2, 0x0

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    .line 121
    .local v5, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    if-eqz v5, :cond_3

    .line 122
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 123
    .local v4, "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 124
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v6

    if-ne v6, p2, :cond_0

    .line 140
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v5    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    :goto_1
    return-object v4

    .line 128
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v5    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 129
    .restart local v0    # "conn":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, p2, :cond_2

    goto :goto_1

    .line 119
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v5    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v6, "[CallControlDispatcher]"

    const-string v7, "[getConferencePhone]No phone is found!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getDataLength([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "originLen"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 108
    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    .line 113
    :cond_0
    return v0

    .line 107
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public VaEventCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v9

    .line 64
    .local v9, "request_id":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v5

    .line 65
    .local v5, "len":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v2

    .line 66
    .local v2, "call_id":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v10

    .line 67
    .local v10, "service_id":I
    const/16 v11, 0xfa0

    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v1

    .line 68
    .local v1, "byteData":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 69
    .local v3, "data":Ljava/lang/String;
    const/16 v11, 0xfa0

    invoke-direct {p0, v1, v11}, Lcom/android/internal/telephony/CallControlDispatcher;->getDataLength([BI)I

    move-result v5

    .line 70
    const-string v11, "[CallControlDispatcher]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reqeust_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", length = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", call id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", service id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", data = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v6, 0x0

    .line 73
    .local v6, "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    const/4 v7, 0x0

    .line 74
    .local v7, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 75
    .local v8, "pp":Lcom/android/internal/telephony/Phone;
    instance-of v11, v8, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v11, :cond_1

    .line 76
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    move-object v7, v0

    .line 81
    :goto_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .end local v6    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 82
    .restart local v6    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    const-string v11, "[CallControlDispatcher]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "phone object is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    packed-switch v10, :pswitch_data_0

    .line 102
    .end local v1    # "byteData":[B
    .end local v2    # "call_id":I
    .end local v3    # "data":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v7    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    .end local v8    # "pp":Lcom/android/internal/telephony/Phone;
    .end local v9    # "request_id":I
    .end local v10    # "service_id":I
    :cond_0
    :goto_1
    return-void

    .line 79
    .restart local v1    # "byteData":[B
    .restart local v2    # "call_id":I
    .restart local v3    # "data":Ljava/lang/String;
    .restart local v5    # "len":I
    .restart local v6    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v7    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    .restart local v8    # "pp":Lcom/android/internal/telephony/Phone;
    .restart local v9    # "request_id":I
    .restart local v10    # "service_id":I
    :cond_1
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .end local v7    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    check-cast v7, Lcom/android/internal/telephony/PhoneProxy;

    .restart local v7    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    goto :goto_0

    .line 86
    :pswitch_0
    const/4 v11, 0x0

    invoke-virtual {v3, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v5, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleVoLteMessageWaitingIndication(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 99
    .end local v1    # "byteData":[B
    .end local v2    # "call_id":I
    .end local v3    # "data":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v7    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    .end local v8    # "pp":Lcom/android/internal/telephony/Phone;
    .end local v9    # "request_id":I
    .end local v10    # "service_id":I
    :catch_0
    move-exception v4

    .line 100
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 89
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "byteData":[B
    .restart local v2    # "call_id":I
    .restart local v3    # "data":Ljava/lang/String;
    .restart local v5    # "len":I
    .restart local v6    # "p":Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v7    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    .restart local v8    # "pp":Lcom/android/internal/telephony/Phone;
    .restart local v9    # "request_id":I
    .restart local v10    # "service_id":I
    :pswitch_1
    :try_start_1
    instance-of v11, v8, Lcom/android/internal/telephony/PhoneProxy;

    if-nez v11, :cond_2

    .line 90
    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local v8    # "pp":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v8, v2}, Lcom/android/internal/telephony/CallControlDispatcher;->getConferencePhone(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v6

    .line 92
    :cond_2
    if-eqz v6, :cond_0

    .line 93
    const/4 v11, 0x0

    invoke-virtual {v3, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v5, v2, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleVoLteConfCallMessage(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public disableRequest()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "[CallControlDispatcher]"

    const-string v1, "disableRequest()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public enableRequest()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "[CallControlDispatcher]"

    const-string v1, "enableRequest()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method
