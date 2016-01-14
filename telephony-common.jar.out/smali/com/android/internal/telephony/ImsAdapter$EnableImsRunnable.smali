.class Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;
.super Ljava/lang/Object;
.source "ImsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableImsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ImsAdapter;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ImsAdapter;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;->this$0:Lcom/android/internal/telephony/ImsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ImsAdapter;Lcom/android/internal/telephony/ImsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/ImsAdapter;
    .param p2, "x1"    # Lcom/android/internal/telephony/ImsAdapter$1;

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;-><init>(Lcom/android/internal/telephony/ImsAdapter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;->this$0:Lcom/android/internal/telephony/ImsAdapter;

    # getter for: Lcom/android/internal/telephony/ImsAdapter;->mIO:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;
    invoke-static {v0}, Lcom/android/internal/telephony/ImsAdapter;->access$200(Lcom/android/internal/telephony/ImsAdapter;)Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->connectSocket()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 429
    const-string v0, "ImsAdapter"

    const-string v1, "EnableImsRunnable(): connectSocket success"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    # getter for: Lcom/android/internal/telephony/ImsAdapter;->mImsEventDispatcher:Lcom/android/internal/telephony/ImsEventDispatcher;
    invoke-static {}, Lcom/android/internal/telephony/ImsAdapter;->access$100()Lcom/android/internal/telephony/ImsEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsEventDispatcher;->enableRequest()V

    .line 436
    # setter for: Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterEnabled:Z
    invoke-static {v2}, Lcom/android/internal/telephony/ImsAdapter;->access$002(Z)Z

    .line 437
    const/4 v0, 0x0

    # setter for: Lcom/android/internal/telephony/ImsAdapter;->misImsAdapterInit:Z
    invoke-static {v0}, Lcom/android/internal/telephony/ImsAdapter;->access$302(Z)Z

    .line 444
    :goto_0
    return-void

    .line 439
    :cond_0
    const-string v0, "ImsAdapter"

    const-string v1, "EnableImsRunnable(): connectSocket error"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;->this$0:Lcom/android/internal/telephony/ImsAdapter;

    # invokes: Lcom/android/internal/telephony/ImsAdapter;->stopVaProcess()V
    invoke-static {v0}, Lcom/android/internal/telephony/ImsAdapter;->access$400(Lcom/android/internal/telephony/ImsAdapter;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/ImsAdapter$EnableImsRunnable;->this$0:Lcom/android/internal/telephony/ImsAdapter;

    # invokes: Lcom/android/internal/telephony/ImsAdapter;->enableImsAdapter2ndStage()V
    invoke-static {v0}, Lcom/android/internal/telephony/ImsAdapter;->access$500(Lcom/android/internal/telephony/ImsAdapter;)V

    goto :goto_0
.end method
