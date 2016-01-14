.class Lcom/android/internal/telephony/ImsSimservsDispatcher$1;
.super Ljava/lang/Thread;
.source "ImsSimservsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSimservsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ImsSimservsDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ImsSimservsDispatcher;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSimservsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSimservsDispatcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSimservsDispatcher$1;->this$0:Lcom/android/internal/telephony/ImsSimservsDispatcher;

    new-instance v1, Lcom/android/internal/telephony/ImsSimservsDispatcher$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ImsSimservsDispatcher$1$1;-><init>(Lcom/android/internal/telephony/ImsSimservsDispatcher$1;)V

    # setter for: Lcom/android/internal/telephony/ImsSimservsDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSimservsDispatcher;->access$002(Lcom/android/internal/telephony/ImsSimservsDispatcher;Landroid/os/Handler;)Landroid/os/Handler;

    .line 55
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 56
    return-void
.end method
