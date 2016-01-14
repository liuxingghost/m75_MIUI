.class public Lcom/android/internal/telephony/ImsSimservsDispatcher;
.super Ljava/lang/Object;
.source "ImsSimservsDispatcher.java"

# interfaces
.implements Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field private static final DUMP_TRANSACTION:Z = true

.field private static final IMC_MAX_XUI_LEN:I = 0x200

.field private static final TAG:Ljava/lang/String; = "ImsSimservsDispatcher"

.field private static mInstance:Lcom/android/internal/telephony/ImsSimservsDispatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Ljava/lang/Thread;

.field private mPhone:Landroid/provider/ContactsContract$CommonDataKinds$Phone;

.field private mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/internal/telephony/ImsSimservsDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ImsSimservsDispatcher$1;-><init>(Lcom/android/internal/telephony/ImsSimservsDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSimservsDispatcher;->mHandlerThread:Ljava/lang/Thread;

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSimservsDispatcher;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/internal/telephony/ImsSimservsDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 62
    sput-object p0, Lcom/android/internal/telephony/ImsSimservsDispatcher;->mInstance:Lcom/android/internal/telephony/ImsSimservsDispatcher;

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSimservsDispatcher;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/ImsSimservsDispatcher;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ImsSimservsDispatcher;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/android/internal/telephony/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ImsSimservsDispatcher;Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ImsSimservsDispatcher;
    .param p1, "x1"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSimservsDispatcher;->handleXuiUpdate(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/ImsSimservsDispatcher;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/telephony/ImsSimservsDispatcher;->mInstance:Lcom/android/internal/telephony/ImsSimservsDispatcher;

    return-object v0
.end method

.method private handleXuiUpdate(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getInt()I

    move-result v2

    .line 104
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v0

    .line 105
    .local v0, "byteArray":[B
    const/4 v3, 0x0

    .line 108
    .local v3, "xui":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v4, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "xui":Ljava/lang/String;
    .local v4, "xui":Ljava/lang/String;
    move-object v3, v4

    .line 113
    .end local v4    # "xui":Ljava/lang/String;
    .restart local v3    # "xui":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleXuiUpdate xui="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/android/internal/telephony/ImsXuiManager;->getInstance()Lcom/android/internal/telephony/ImsXuiManager;

    move-result-object v5

    .line 115
    .local v5, "xuim":Lcom/android/internal/telephony/ImsXuiManager;
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/ImsXuiManager;->setXui(Ljava/lang/String;)V

    .line 116
    return-void

    .line 109
    .end local v5    # "xuim":Lcom/android/internal/telephony/ImsXuiManager;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "ImsSimservsDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ims] ImsSimservsDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method private sendVaEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSimservsDispatcher send event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSimservsDispatcher;->log(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSimservsDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 92
    return-void
.end method


# virtual methods
.method public VaEventCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    return-void
.end method

.method public disableRequest()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public enableRequest()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public setSocket(Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V
    .locals 0
    .param p1, "socket"    # Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSimservsDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 86
    return-void
.end method
