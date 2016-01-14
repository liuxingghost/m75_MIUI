.class public Lcom/android/internal/telephony/ImsEventDispatcher;
.super Landroid/os/Handler;
.source "ImsEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsEventDispatcher"


# instance fields
.field private mCallControlDispatcher:Lcom/android/internal/telephony/CallControlDispatcher;

.field private mContext:Landroid/content/Context;

.field private mDataDispatcher:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

.field private mSimDispatcher:Lcom/android/internal/telephony/SimDispatcher;

.field private mSimservsDispatcher:Lcom/android/internal/telephony/ImsSimservsDispatcher;

.field private mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

.field private mVaEventDispatcher:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 30
    invoke-direct {p0}, Lcom/android/internal/telephony/ImsEventDispatcher;->createDispatcher()V

    .line 31
    return-void
.end method

.method private createDispatcher()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/android/internal/telephony/SimDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SimDispatcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mSimDispatcher:Lcom/android/internal/telephony/SimDispatcher;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/CallControlDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallControlDispatcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mCallControlDispatcher:Lcom/android/internal/telephony/CallControlDispatcher;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mDataDispatcher:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/ImsSimservsDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ImsSimservsDispatcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mSimservsDispatcher:Lcom/android/internal/telephony/ImsSimservsDispatcher;

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mDataDispatcher:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mSimservsDispatcher:Lcom/android/internal/telephony/ImsSimservsDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mSimDispatcher:Lcom/android/internal/telephony/SimDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mCallControlDispatcher:Lcom/android/internal/telephony/CallControlDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method


# virtual methods
.method disableRequest()V
    .locals 3

    .prologue
    .line 46
    iget-object v2, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;

    .line 47
    .local v0, "dispatcher":Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;
    invoke-interface {v0}, Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;->disableRequest()V

    goto :goto_0

    .line 49
    .end local v0    # "dispatcher":Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;
    :cond_0
    return-void
.end method

.method dispatchCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 111
    :goto_0
    :sswitch_0
    return-void

    .line 96
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mCallControlDispatcher:Lcom/android/internal/telephony/CallControlDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallControlDispatcher;->VaEventCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 101
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mSimDispatcher:Lcom/android/internal/telephony/SimDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SimDispatcher;->VaEventCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 104
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mSimservsDispatcher:Lcom/android/internal/telephony/ImsSimservsDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSimservsDispatcher;->VaEventCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    goto :goto_0

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x187d0 -> :sswitch_3
        0x187d1 -> :sswitch_1
        0x187d4 -> :sswitch_2
        0x187d6 -> :sswitch_2
        0x187da -> :sswitch_2
        0x187dc -> :sswitch_0
        0x187df -> :sswitch_0
        0x187e3 -> :sswitch_0
        0x187e7 -> :sswitch_0
        0x187ed -> :sswitch_0
    .end sparse-switch
.end method

.method enableRequest()V
    .locals 3

    .prologue
    .line 40
    iget-object v2, p0, Lcom/android/internal/telephony/ImsEventDispatcher;->mVaEventDispatcher:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;

    .line 41
    .local v0, "dispatcher":Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;
    invoke-interface {v0}, Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;->enableRequest()V

    goto :goto_0

    .line 43
    .end local v0    # "dispatcher":Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ImsEventDispatcher;->dispatchCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V

    .line 82
    return-void
.end method
