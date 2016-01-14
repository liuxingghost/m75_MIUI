.class Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;
.super Ljava/lang/Thread;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$2$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher$2;)V

    # setter for: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$102(Lcom/android/internal/telephony/dataconnection/DataDispatcher;Landroid/os/Handler;)Landroid/os/Handler;

    .line 227
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 228
    return-void
.end method
